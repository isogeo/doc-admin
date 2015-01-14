module.exports = function (grunt) {
    'use strict';
    
    require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks);

    var helpConfig = {
        build: 'tmp/obj/build',
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
            bin: {
                files: [{
                    expand: true,
                    dot: true,
                    dest: '<%= help.dest %>',
                    src: [
                        '*.{js,json}',
                        'Web.config'
                    ]
                }, {
                    expand: true,
                    dot: true,
                    dest: '<%= help.dest %>/public',
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
        grunt.util.spawn({
            cmd: 'gitbook',
            args: ['serve', '--output=tmp/obj/devel'],
            opts: {
                stdio: 'inherit'
            }
        }, function () {
            done();
        });
    });

    /**
    * Build the book
    */
    grunt.registerTask('buildBook', 'Build the book', function() {
        var done = this.async();
        grunt.util.spawn({
            cmd: 'gitbook',
            args: ['build', '--output=tmp/obj/build'],
            opts: {
                stdio: 'inherit'
            }
        }, function () {
            done();
        });
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
        'copy:bin'
    ]);

};