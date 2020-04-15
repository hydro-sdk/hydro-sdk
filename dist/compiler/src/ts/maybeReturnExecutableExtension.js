"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
function maybeReturnExecutableExtension() {
    if (process.platform == "win32") {
        return ".exe";
    }
    return "";
}
exports.maybeReturnExecutableExtension = maybeReturnExecutableExtension;
