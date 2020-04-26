"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var fs = require("fs");
var chalk = require("chalk");
var ts = require("typescript");
var configHash_1 = require("../configHash");
var typescript_to_lua_1 = require("typescript-to-lua");
var setupArtifactDirectories_1 = require("../setupArtifactDirectories");
var compileByteCodeAndWriteHash_1 = require("../compileByteCodeAndWriteHash");
function transpileTS(config) {
    var buildHash = configHash_1.configHash(config);
    console.log("Build " + chalk.yellow(buildHash));
    var _a = setupArtifactDirectories_1.setupArtifactDirectories(buildHash, config), outFileHash = _a.outFileHash, outFile = _a.outFile, tempFile = _a.tempFile;
    var tstlOpt = {
        strict: true,
        sourceMapTraceback: false,
        luaTarget: typescript_to_lua_1.LuaTarget.Lua52,
        luaLibImport: typescript_to_lua_1.LuaLibImportKind.Require,
        luaBundleEntry: config.entry,
        luaBundle: tempFile
    };
    var res = typescript_to_lua_1.transpileFiles([config.entry], tstlOpt);
    if (res.diagnostics && res.diagnostics.length) {
        res.diagnostics.forEach(function (x) {
            if (x.file) {
                var _a = x.file.getLineAndCharacterOfPosition(x.start), line = _a.line, character = _a.character;
                var message = ts.flattenDiagnosticMessageText(x.messageText, "\n");
                // console.log(`${x.file.fileName} (${line + 1},${character + 1}): ${message}`);
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
    fs.writeFileSync(tempFile, res.emitResult[0].text);
    compileByteCodeAndWriteHash_1.compileByteCodeAndWriteHash(outFile, outFileHash, tempFile, config);
    console.log(chalk.blue(config.entry) + " ----> " + chalk.yellow(outFile));
    console.log(chalk.blue(config.entry) + " ----> " + chalk.yellow(outFileHash));
}
exports.transpileTS = transpileTS;
