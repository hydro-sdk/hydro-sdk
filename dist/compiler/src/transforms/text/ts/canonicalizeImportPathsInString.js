"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.canonicalizeImportPathsInString = void 0;
function canonicalizeImportPathsInString(sourceText, replacements) {
    var res = sourceText;
    replacements.forEach(function (x) {
        if (
            new RegExp(
                x.importPath.replace(/[.*+\-?^${}()|[\]\\]/g, "\\$&"),
                "g"
            ).test(res)
        ) {
            res = res.replace(x.importPath, "./" + x.resolvedHashPath);
        }
    });
    return res;
}
exports.canonicalizeImportPathsInString = canonicalizeImportPathsInString;
