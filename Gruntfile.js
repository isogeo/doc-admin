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

            // Remove tmp directory
            complete: '<%= help.tmp %>/*'

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
                        return dest + '/Isogeo.Help.' + src.substring(0, src.indexOf('/')) + '.<%= help.version %>.pdf';
                    }
                }]
            }
        }

    });

    /**
    * Serve the book
    */
    grunt.registerTask('serveSite', 'Serve the book', function() {
        var done = this.async();
        gitbook.generate.folder({
            input: 'Help',
            output: 'tmp/obj/bin/site',
            verbose: true
        }).then(function(error) {
            done(error);
        }, done);
        //TODO: host the book
    });

    /**
    * Build the book
    */
    grunt.registerTask('buildBook', 'Build the book', function() {
        var done = this.async();
        gitbook.generate.folder({
            input: 'Help',
            output: 'tmp/obj/bin/book',
            generator: 'ebook',
            extension: 'pdf',
            verbose: true
        }).then(function(error) {
            done(error);
        }, done);
    });

    /**
     * Build the site
     */
    grunt.registerTask('buildSite', 'Build the site', function() {
         var done = this.async();
         gitbook.generate.folder({
             input: 'Help',
             output: 'tmp/obj/bin/site'
         }).then(function(error) {
         done(error);
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