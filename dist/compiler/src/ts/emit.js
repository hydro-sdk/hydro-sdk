"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var fs = require("fs");
var path = require("path");
var configHash_1 = require("./configHash");
var makeRelativePath_1 = require("./makeRelativePath");
function emit(config, res) {
    var squishy = "";
    squishy += "Output \"" + config.modName + "\"\n";
    squishy += "Main \"" + makeRelativePath_1.makeRelativePath(config.entry).split(".")[0] + ".lua\"\n";
    for (var i = 0; i != res.emitResult.length; ++i) {
        // console.log(res.emitResult[0].name);
        var target = ".hydroc/" + configHash_1.configHash(config) + "/" + makeRelativePath_1.makeRelativePath(res.emitResult[i].name);
        var targetDir = path.dirname(target);
        fs.mkdirSync(targetDir, { recursive: true });
        fs.writeFileSync(target, res.emitResult[i].text);
        if (res.emitResult[i].name != makeRelativePath_1.makeRelativePath(config.entry).split(".")[0] + ".lua") {
            squishy += "Module \"" + makeRelativePath_1.makeRelativePath(res.emitResult[i].name).split(path.sep).join(".").split(".lua")[0] + "\" \"" + makeRelativePath_1.makeRelativePath(res.emitResult[i].name) + "\"\n";
        }
    }
    fs.writeFileSync(".hydroc/" + configHash_1.configHash(config) + "/squishy", squishy);
}
exports.emit = emit;
