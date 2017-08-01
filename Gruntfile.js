module.exports = function (grunt) {
    'use strict';
    
    require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks);
    var gitbook = require('gitbook');
    var path = require('path');

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
        config: helpConfig,

        /**
        * Clean tasks to remove temporary files
        */
        clean: {

            // Remove only build components
            build: '<%= config.build %>/*',
            complete: '<%= config.build %>/*'
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
                    dest: '<%= config.build %>/site'
                }]
            },
            bin: {
                files: [{
                    expand: true,
                    dot: true,
                    dest: '<%= config.dest %>',
                    src: [
                        'bin/**/*.*'
                    ]
                }, {
                    expand: true,
                    dot: true,
                    dest: '<%= config.dest %>',
                    cwd: '<%= config.build %>/site',
                    src: ['**/*.*']
                }, {
                    expand: true,
                    dot: true,
                    dest: '<%= config.dest %>',
                    cwd: '<%= config.build %>/book',
                    src: ['**/*.pdf']
                }]
            },
            out: {
                files: [{
                    expand: true,
                    dot: true,
                    dest: '<%= config.out %>',
                    cwd: '<%= config.build %>/book',
                    src: ['**/*.pdf'],
                    rename: function(dest, src) {
                        return dest + '/' + path.basename(src, '.pdf') + '.<%= config.version %>.pdf';
                    }
                }]
            }
        }

    });

    /**
    * Build the book
    * cf. https://github.com/GitbookIO/gitbook/blob/3.2.2/lib/cli/buildEbook.js
    */
    grunt.registerTask('buildBook', 'Build the book', function() {
        var done = this.async();
        var tmpOutput = path.resolve('tmp/obj/bin/tmp-book/');
        var book = gitbook.Book.createForFS(gitbook.createNodeFS(path.resolve('.')));
        book.setLogLevel('debug');

        gitbook.Parse.parseBook(book)
            .then(function(b) {
                var generator = gitbook.Output.getGenerator('ebook');
                return gitbook.Output.generate(generator, b, {
                    root: tmpOutput,
                    format: 'pdf'
                });
            }).then(function(output) {
                var book = output.getBook();
                if (book.isMultilingual()) {
                    var languages = book.getLanguages();
                    languages.getList().forEach(function(l) {
                        var lid = l.getID();
                        grunt.file.copy(
                            path.resolve(tmpOutput, lid, 'index.pdf'),
                            'tmp/obj/bin/book/Isogeo.Help_' + lid + '.pdf'
                        );
                    });
                } else {
                    grunt.file.copy(
                        path.resolve(tmpOutput, 'index.pdf'),
                        'tmp/obj/bin/book/Isogeo.Help.pdf'
                    );
                }
            }).catch(function(err) {
                grunt.fail.fatal(err);
            }).fin(function() {
                done();
            });
    });

    /**
     * Build the site
     * cf. https://github.com/GitbookIO/gitbook/blob/3.2.2/lib/cli/build.js
     */
    grunt.registerTask('buildSite', 'Build the site', function() {
        var done = this.async();
        var book = gitbook.Book.createForFS(gitbook.createNodeFS(path.resolve('.')));
        book.setLogLevel('debug');

        gitbook.Parse.parseBook(book)
            .then(function (b) {
                var generator = gitbook.Output.getGenerator('website');
                return gitbook.Output.generate(generator, b, {
                    root: path.resolve('tmp/obj/bin/site/')
                });
            }).catch(function (err) {
                grunt.fail.fatal(err);
            }).fin(function () {
                done();
            });
    });

    /**
    * Incremental build
    */
    grunt.registerTask('default', [
        'buildBook',
        'buildSite'
    ]);

    /**
    * Continuous build
    */
    grunt.registerTask('build', [
        'default'
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