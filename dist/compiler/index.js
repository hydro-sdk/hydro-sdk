"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var fs = require("fs");
var minimist = require("minimist");
var chalk = require("chalk");
var rimraf = require("rimraf");
var chokidar = require("chokidar");
var emit_1 = require("./src/ts/emit");
var transpile_1 = require("./src/ts/transpile");
var squishAndCopy_1 = require("./src/ts/squishAndCopy");
var configHash_1 = require("./src/ts/configHash");
var argv = minimist(process.argv.slice(2));
var entry = argv.t;
var modName = argv.m;
var outDir = argv.d;
var profile = argv.p;
var clean = argv.clean;
if (clean) {
    rimraf.sync(".hydroc");
    process.exit(0);
}
var watch = argv.w;
if (!entry) {
    console.log("Entry file must be specified with -t switch");
    process.exit(1);
}
else {
    if (!fs.statSync(entry)) {
        console.log("Entry file does not exist");
        process.exit(1);
    }
}
if (!modName) {
    console.log("Output module name must be specified with -m switch");
    process.exit(1);
}
if (!outDir) {
    console.log("Output directory must be specified with -d switch");
    process.exit(1);
}
if (!fs.existsSync(".hydroc")) {
    fs.mkdirSync(".hydroc");
}
function transpileTS(config) {
    var hash = configHash_1.configHash(config);
    console.log("Build " + chalk.yellow(hash));
    var res = transpile_1.transpile(config);
    emit_1.emit(config, res);
    console.log(chalk.green(config.entry) + " ----> " + chalk.blue(config.outDir + "/" + config.modName + ".hc"));
    squishAndCopy_1.squishAndCopy(config);
}
if (watch !== undefined) {
    chokidar.watch(watch).on("all", function () {
        transpileTS({
            entry: entry,
            modName: modName,
            outDir: outDir,
            profile: profile
        });
    });
}
else {
    transpileTS({
        entry: entry,
        modName: modName,
        outDir: outDir,
        profile: profile
    });
}
