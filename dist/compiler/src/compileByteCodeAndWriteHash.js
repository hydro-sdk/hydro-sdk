"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var cp = require("child_process");
var crypto = require("crypto");
var fs = require("fs");
var maybeReturnExecutableExtension_1 = require("./maybeReturnExecutableExtension");
var reconcileResourcePath_1 = require("./reconcileResourcePath");
function compileByteCodeAndWriteHash(outFile, outFileHash, tempFile, config) {
    cp.execSync(reconcileResourcePath_1.reconcileResourcePath("res/" + process.platform + "/luac52" + maybeReturnExecutableExtension_1.maybeReturnExecutableExtension()) + " " + (config.profile == "release" ? "-s" : "") + " -o " + outFile + " " + tempFile);
    var hash = crypto.createHash("sha256");
    hash.update(fs.readFileSync(outFile).toString());
    fs.writeFileSync(outFileHash, hash.digest("hex"));
}
exports.compileByteCodeAndWriteHash = compileByteCodeAndWriteHash;
