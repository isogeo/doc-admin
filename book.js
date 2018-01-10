var pkg = require('./package.json');

module.exports = {
    root: './Help',

    links: {
        sharing: {
            'all': true,
                },
        },
    plugins: [
        "ga",
        "image-captions",
        "page-toc",
        "timeline",
        "toggle-headers",
        "youtube"
        ],
    pluginsConfig: {
        fontSettings: {
            theme: 'white',
            family: 'sans'
                },
        ga: {
            token: 'UA-22345848-2'
            },
        "image-captions": {
            "variable_name": "pictures",
            "caption": "Fig. _BOOK_IMAGE_NUMBER_ : _CAPTION_"
            },
        "page-toc": {
            "position": "top",
            "selector": ".markdown-section h2, .markdown-section h3",
                    },
        },
    pdf: {
        pageNumbers: true,
        fontSize: 12,
        paperSize: 'a4',
        margin: {
            right: 45,
            left: 45,
            top: 36,
            bottom: 36
        },
        headerTemplate: '_TITLE_',
        footerTemplate: '_SECTION_'
    },
    variables: {
        version: pkg.version,
        author: 'Isogeo',
        pictures: "[]"
    }
}