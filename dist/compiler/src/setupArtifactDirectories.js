"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var fs = require("fs");
function setupArtifactDirectories(buildHash, config) {
    var tempDir = ".hydroc/" + buildHash;
    var tempFile = ".hydroc/" + buildHash + "/" + config.modName;
    var outFile = config.outDir + "/" + config.modName + ".hc";
    var outFileHash = config.outDir + "/" + config.modName + ".hc.sha256";
    var outFileSymbols = config.outDir + "/" + config.modName + ".hc.symbols";
    fs.mkdirSync(config.outDir, { recursive: true });
    fs.mkdirSync(tempDir, { recursive: true });
    return {
        tempDir: tempDir, tempFile: tempFile, outFile: outFile, outFileHash: outFileHash, outFileSymbols: outFileSymbols
    };
}
exports.setupArtifactDirectories = setupArtifactDirectories;
