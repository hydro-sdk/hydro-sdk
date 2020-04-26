"use strict";
var __spreadArrays = (this && this.__spreadArrays) || function () {
    for (var s = 0, i = 0, il = arguments.length; i < il; i++) s += arguments[i].length;
    for (var r = Array(s), k = 0, i = 0; i < il; i++)
        for (var a = arguments[i], j = 0, jl = a.length; j < jl; j++, k++)
            r[k] = a[j];
    return r;
};
Object.defineProperty(exports, "__esModule", { value: true });
var fs = require("fs");
var cp = require("child_process");
var chalk = require("chalk");
var configHash_1 = require("./../configHash");
var setupArtifactDirectories_1 = require("../setupArtifactDirectories");
var compileByteCodeAndWriteHash_1 = require("../compileByteCodeAndWriteHash");
function transpileHx(config) {
    var buildHash = configHash_1.configHash(config, __spreadArrays(config.classPath, ["haxe"]));
    console.log("Build " + chalk.yellow(buildHash));
    var _a = setupArtifactDirectories_1.setupArtifactDirectories(buildHash, config), outFileHash = _a.outFileHash, outFile = _a.outFile, tempFile = _a.tempFile;
    var haxeCompilerPath = "haxe-4.0.5/haxe";
    if (!fs.existsSync(haxeCompilerPath)) {
        haxeCompilerPath = "haxe";
    }
    var haxeClassPaths = config.classPath.reduce(function (x) { return " -p " + x + " "; });
    cp.execSync(haxeCompilerPath + " " + haxeClassPaths + " -m " + config.mainClass + " --dce full -D lua-vanilla --lua " + tempFile);
    compileByteCodeAndWriteHash_1.compileByteCodeAndWriteHash(outFile, outFileHash, tempFile, config);
    console.log(chalk.keyword("orange")(config.entry) + " ----> " + chalk.yellow(outFile));
    console.log(chalk.keyword("orange")(config.entry) + " ----> " + chalk.yellow(outFileHash));
}
exports.transpileHx = transpileHx;
