"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var cp = require("child_process");
var fs = require("fs");
var path = require("path");
var crypto = require("crypto");
var chalk = require("chalk");
var configHash_1 = require("./configHash");
var reconcileResourcePath_1 = require("./reconcileResourcePath");
var maybeReturnExecutableExtension_1 = require("./maybeReturnExecutableExtension");
function squishAndCopy(config) {
    var platform = process.platform;
    // try{
    // var l = cp.execSync(`${reconcileResourcePath(`res/${platform}/lua52${maybeReturnExecutableExtension()}`)} ${reconcileResourcePath(`res/squish.lua`)}`, { cwd: `./.hydroc/${configHash(config)}`, });
    // console.log(l.toString())
    // }
    // catch(err){
    //     console.log(typeof err);
    //     console.log(err.status);
    //     console.log(err.message);
    //     console.log(err.stdout.toString());
    //     console.log(err.stderr.toString());
    // }
    // const rawOut = fs.readFileSync(`.hydroc/${configHash(config)}/${config.modName}`).toString();
    // fs.writeFileSync(`.hydroc/${configHash(config)}/${config.modName}`, bundlePrelude.concat(rawOut));
    cp.execSync(reconcileResourcePath_1.reconcileResourcePath("res/" + platform + "/luac52" + maybeReturnExecutableExtension_1.maybeReturnExecutableExtension()) + " " + (config.profile == "release" ? "-s" : "") + " -o " + config.modName + ".hc " + config.modName, { cwd: "./.hydroc/" + configHash_1.configHash(config) });
    var outFile = config.outDir + "/" + config.modName + ".hc";
    fs.mkdirSync(path.dirname(outFile), { recursive: true });
    fs.copyFileSync(".hydroc/" + configHash_1.configHash(config) + "/" + config.modName + ".hc", outFile);
    var hash = crypto.createHash("sha256");
    hash.update(fs.readFileSync(".hydroc/" + configHash_1.configHash(config) + "/" + config.modName + ".hc").toString());
    fs.writeFileSync(config.outDir + "/" + config.modName + ".hc.sha256", hash.digest("hex"));
    console.log(chalk.green(config.entry) + " ----> " + chalk.blue(config.outDir + "/" + config.modName + ".hc.sha256"));
}
exports.squishAndCopy = squishAndCopy;
