"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var path = require("path");
function makeRelativePath(absPath) {
    return path.relative(process.cwd(), absPath);
}
exports.makeRelativePath = makeRelativePath;
