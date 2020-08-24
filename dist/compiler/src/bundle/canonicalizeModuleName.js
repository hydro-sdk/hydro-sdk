"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var path = require("path");
var hashText_1 = require("../ast/hashText");
function canonicalizeModuleName(sourceFile) {
    return hashText_1.hashText(sourceFile.fileName) + "::" + path.basename(sourceFile.fileName);
}
exports.canonicalizeModuleName = canonicalizeModuleName;
