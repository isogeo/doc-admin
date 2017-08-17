var pkg = require('./package.json');

module.exports = {
    root: './Help',

    links: {
        sidebar: {
            'Site Isogeo': 'http://www.isogeo.com/',
            'Application': 'https://app.isogeo.com/'
        },
        sharing: {
            'google': true,
            'facebook': false,
            'twitter': true,
            'weibo': false,
            'all': false
        }
    },
    plugins: [
        "ga",
        "anchors",
        "customtheme",
        "image-captions",
        "page-nav-configurable",
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
        customtheme: {
            css: [
                '_styles/custom.css'
            ]
        }
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
    styles: {
        custom: 'styles/custom.css'
    },
    variables: {
        version: pkg.version,
        author: 'Isogeo'
    }
}