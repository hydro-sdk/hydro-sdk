"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var canonicalizeModuleName_1 = require("../bundle/canonicalizeModuleName");
function rewriteRequirePaths(sourceFile, transpiledFile) {
    var _a;
    //I'm not sure if resolvedModules is an undocumented field or if I just don't know how to narrow ts.SourceFile 
    //into what we need here
    var moduleMap = sourceFile.resolvedModules;
    if (moduleMap) {
        var lines_1 = (_a = transpiledFile.lua) === null || _a === void 0 ? void 0 : _a.split("\n");
        if (lines_1) {
            moduleMap.forEach(function (value, x) {
                lines_1 === null || lines_1 === void 0 ? void 0 : lines_1.forEach(function (line, i) {
                    var pattern = "require\\(\\\"" + x.replace("/", "\\/") + "\\\"\\)";
                    var regex = new RegExp(pattern, "g");
                    if (regex.test(line)) {
                        if (moduleMap) {
                            if (lines_1) {
                                lines_1[i] = line.replace(regex, "require(\"" + canonicalizeModuleName_1.canonicalizeModuleName(value.resolvedFileName) + "\")");
                            }
                        }
                    }
                });
            });
        }
        return lines_1 === null || lines_1 === void 0 ? void 0 : lines_1.join("\n");
    }
    return undefined;
}
exports.rewriteRequirePaths = rewriteRequirePaths;
