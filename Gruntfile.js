module.exports = function (grunt) {
    'use strict';
    
    require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks);
    var gitbook = require('gitbook');

    var helpConfig = {
        build: 'tmp/obj/bin',
        dest: grunt.option('dest') || 'tmp/bin/Gruntfile/Release/Any CPU/Isogeo.Help',
        tmp: 'tmp',
        src: 'src'
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
                    dest: '<%= help.build %>'
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
                    cwd: '<%= help.build %>',
                    src: ['**/**.*']
                }]
            }
        }

    });

    /**
    * Serve the book
    */
    grunt.registerTask('serveBook', 'Serve the book', function() {
        var done = this.async();
        gitbook.generate.folder({
            input: '.',
            output: 'tmp/obj/bin'
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
            input: '.',
            output: 'tmp/obj/bin'
        }).then(function(error) {
            done(error);
        }, done);
    });

    /**
    * Incremental build, starts the application
    */
    grunt.registerTask('start', [
        'serveBook'
    ]);

    /**
    * Continuous build
    */
    grunt.registerTask('build', [
        'buildBook'
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