module.exports = function (grunt) {
    'use strict';
    
    require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks);
    var gitbook = require('gitbook');

    var helpConfig = {
        build: 'tmp/obj/bin',
        dest: grunt.option('dest') || 'tmp/bin/Gruntfile/Release/Any CPU/Isogeo.Help',
        tmp: 'tmp',
        src: 'src',
        out: 'tmp/out/bin',
        version: process.env.CCNetLabel || '0.0.0.0'
    };

    grunt.initConfig({

        // Paths
        help: helpConfig,

        /**
        * Clean tasks to remove temporary files
        */
        clean: {

            // Remove only build components
            build: '<%= help.build %>/*',
            complete: '<%= help.build %>/*'
        },

        /**
        * Copy task to copy files into release package
        */
        copy: {
            assets: {
                files: [{
                    expand: true,
                    dot: true,
                    cwd: 'dist',
                    src: ['**/*.*'],
                    dest: '<%= help.build %>/site'
                }]
            },
            bin: {
                files: [{
                    expand: true,
                    dot: true,
                    dest: '<%= help.dest %>',
                    src: [
                        'bin/**/*.*'
                    ]
                }, {
                    expand: true,
                    dot: true,
                    dest: '<%= help.dest %>',
                    cwd: '<%= help.build %>/site',
                    src: ['**/*.*']
                }, {
                    expand: true,
                    dot: true,
                    dest: '<%= help.dest %>',
                    cwd: '<%= help.build %>/book',
                    src: ['**/*.pdf']
                }]
            },
            out: {
                files: [{
                    expand: true,
                    dot: true,
                    dest: '<%= help.out %>',
                    cwd: '<%= help.build %>/book',
                    src: ['**/*.pdf'],
                    rename: function(dest, src) {
                        return dest + '/Isogeo.Help.' + src.substring(src.indexOf('_')+1, 2) + '.<%= help.version %>.pdf';
                    }
                }]
            }
        }

    });

    /**
    * Build the book
    */
    grunt.registerTask('buildBook', 'Build the book', function() {
        var done = this.async();
        var book = new gitbook.Book('./Help', {
            logLevel: 'warn'
        });
        book.parse().then(function() {
            return book.generateFile('tmp/obj/bin/book/Isogeo.Help.pdf', { ebookFormat: 'pdf' });
        }, done).done(function() {
            done();
        }, done);
    });

    /**
     * Build the site
     */
    grunt.registerTask('buildSite', 'Build the site', function() {
        var done = this.async();
        var book = new gitbook.Book('./Help', {
            config: {
                output: 'tmp/obj/bin/site'
            },
            logLevel: 'warn'
        });
        book.parse().then(function() {
            return book.generate('website');
        }, done).done(function() {
            done();
        }, done);
    });

    /**
    * Incremental build, starts the application
    */
    grunt.registerTask('start', [
        'serveSite'
    ]);

    /**
    * Continuous build
    */
    grunt.registerTask('build', [
        'buildBook',
        'buildSite'
    ]);

    /**
    * Continuous build, after a clean
    */
    grunt.registerTask('rebuild', [
        'clean:build',
        'build'
    ]);

    /**
    * Nightly build
    */
    grunt.registerTask('release', [
        'clean:complete',
        'build',
        'copy'
    ]);

};