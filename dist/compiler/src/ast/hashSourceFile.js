"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var hashText_1 = require("./hashText");
function hashSourceFile(sourceFile) {
    var _a;
    return hashText_1.hashText((_a = sourceFile === null || sourceFile === void 0 ? void 0 : sourceFile.text) !== null && _a !== void 0 ? _a : "");
}
exports.hashSourceFile = hashSourceFile;
