"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var fs = require("fs");
var path = require("path");
var cp = require("child_process");
var chalk = require("chalk");
var ts = require("typescript");
var configHash_1 = require("../configHash");
var typescript_to_lua_1 = require("typescript-to-lua");
var setupArtifactDirectories_1 = require("../setupArtifactDirectories");
var compileByteCodeAndWriteHash_1 = require("../compileByteCodeAndWriteHash");
var makeRelativePath_1 = require("../makeRelativePath");
var reconcileResourcePath_1 = require("../reconcileResourcePath");
var bundlePrelude_1 = require("./../bundle/bundlePrelude");
function transpileTS(config) {
    var buildHash = configHash_1.configHash(config);
    console.log("Build " + chalk.yellow(buildHash));
    var _a = setupArtifactDirectories_1.setupArtifactDirectories(buildHash, config), outFileHash = _a.outFileHash, outFile = _a.outFile, tempFile = _a.tempFile, tempDir = _a.tempDir;
    var tstlOpt = {
        strict: true,
        sourceMapTraceback: false,
        luaTarget: typescript_to_lua_1.LuaTarget.Lua52,
        luaLibImport: typescript_to_lua_1.LuaLibImportKind.Require,
        luaBundleEntry: config.entry,
        luaBundle: config.profile == "release" ? tempFile : undefined
    };
    var res = typescript_to_lua_1.transpileFiles([config.entry], tstlOpt);
    if (res.diagnostics && res.diagnostics.length) {
        res.diagnostics.forEach(function (x) {
            if (x.file) {
                var _a = x.file.getLineAndCharacterOfPosition(x.start), line = _a.line, character = _a.character;
                var message = ts.flattenDiagnosticMessageText(x.messageText, "\n");
                var fileNameMsg = chalk.blue(x.file.fileName);
                var lineMsg = chalk.yellow(line + 1);
                var characterMsg = chalk.yellow(character + 1);
                var diagMsg = chalk.red(message);
                console.log(fileNameMsg + ":" + lineMsg + ":" + characterMsg + " - " + diagMsg);
            }
            else {
                var diagMsg = chalk.red(ts.flattenDiagnosticMessageText(x.messageText, "\n"));
                console.log(diagMsg);
            }
        });
        return;
    }
    if (config.profile == "release") {
        fs.writeFileSync(tempFile, res.emitResult[0].text);
    }
    else if (config.profile == "debug") {
        var squishy = "";
        squishy += "Output \"" + config.modName + "\"\n";
        squishy += "Main \"" + makeRelativePath_1.makeRelativePath(config.entry).split(".")[0] + ".lua\"\n";
        for (var i = 0; i < res.emitResult.length; ++i) {
            var target = tempDir + "/" + makeRelativePath_1.makeRelativePath(res.emitResult[i].name);
            var targetDir = path.dirname(target);
            fs.mkdirSync(targetDir, { recursive: true });
            fs.writeFileSync(target, res.emitResult[i].text);
            if (res.emitResult[i].name != makeRelativePath_1.makeRelativePath(config.entry).split(".")[0] + ".lua") {
                squishy += "Module \"" + makeRelativePath_1.makeRelativePath(res.emitResult[i].name).split(path.sep).join(".").split(".lua")[0] + "\" \"" + makeRelativePath_1.makeRelativePath(res.emitResult[i].name) + "\"\n";
            }
        }
        fs.writeFileSync(".hydroc/" + configHash_1.configHash(config) + "/squishy", squishy);
        cp.execSync(reconcileResourcePath_1.reconcileResourcePath("res/" + process.platform + "/lua52") + " " + reconcileResourcePath_1.reconcileResourcePath("res/squish.lua"), { cwd: "./" + tempDir, });
        var rawOut = fs.readFileSync(tempDir + "/" + config.modName).toString();
        fs.writeFileSync(tempDir + "/" + config.modName, bundlePrelude_1.bundlePrelude.concat(rawOut));
    }
    compileByteCodeAndWriteHash_1.compileByteCodeAndWriteHash(outFile, outFileHash, tempFile, config);
    console.log(chalk.blue(config.entry) + " ----> " + chalk.yellow(outFile));
    console.log(chalk.blue(config.entry) + " ----> " + chalk.yellow(outFileHash));
}
exports.transpileTS = transpileTS;
