"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.canonicalizeImportPaths = void 0;
var canonicalizeImportPathsInString_1 = require("./canonicalizeImportPathsInString");
function canonicalizeImportPaths(sourceText, replacements) {
    var lines = sourceText.split("\n");
    for (var i = 0; i != lines.length; ++i) {
        if (/import/g.test(lines[i])) {
            lines.splice(
                i,
                1,
                canonicalizeImportPathsInString_1.canonicalizeImportPathsInString(
                    lines[i],
                    replacements
                )
            );
        }
    }
    return lines.join("\n");
}
exports.canonicalizeImportPaths = canonicalizeImportPaths;
