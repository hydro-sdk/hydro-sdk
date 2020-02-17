module.exports = {
    "env": {
        "browser": true,
        "es6": true
    },
    "extends": "eslint:recommended",
    "plugins": ["import","jsdoc"],
    "globals": {
        "Atomics": "readonly",
        "SharedArrayBuffer": "readonly",
        "require" : "readonly",
        "setImmediate" : "readonly",
        "process" : "readonly",
        "Buffer" : "readonly",
        "jest" : "readonly",
        "it" : "readonly",
        "expect" : "readonly"
    },
    "parser": "@typescript-eslint/parser",
    "parserOptions": {
        "ecmaVersion": 2018,
        "sourceType": "module",
        "project": "./tsconfig.json"
    },
    "rules": {
        "indent": [
            "error",
            4
        ],
        "linebreak-style": [
            "error",
            "unix"
        ],
        "quotes": [
            "error",
            "double"
        ],
        "semi": [
            "error",
            "always"
        ],
        "no-console": "off",
        "brace-style": [
            "error",
            "allman"
        ],
        "object-curly-spacing": [
            "error",
            "never"
        ],
        "no-unused-vars": "off",
        "import/order": [ 
            "error",
            {
                "groups": [
                    "builtin", 
                    "external",
                    "parent",
                    "sibling",
                    "index"
                ],
                "newlines-between" : "always"
            }
        ],
        "import/no-duplicates": [
            "error"
        ],
        "import/no-unused-modules":[1, {"unusedExports": true}],

        "jsdoc/require-jsdoc": 1, 
        "jsdoc/require-param-description": 1, 
    }
}; 