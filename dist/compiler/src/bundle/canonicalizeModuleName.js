"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var path = require("path");
var hashText_1 = require("../ast/hashText");
function canonicalizeModuleName(fileName) {
    //For debug mode this is fine.
    //For release mode this is excessive.
    //An optimization like https://github.com/browserify/bundle-collapser should be applied
    return hashText_1.hashText(fileName.toLowerCase()) + "::" + path.basename(fileName.toLowerCase());
}
exports.canonicalizeModuleName = canonicalizeModuleName;
