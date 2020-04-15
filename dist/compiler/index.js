"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var fs = require("fs");
var cp = require("child_process");
var crypto = require("crypto");
var minimist = require("minimist");
var chalk = require("chalk");
var rimraf = require("rimraf");
var chokidar = require("chokidar");
var configHash_1 = require("./src/ts/configHash");
var typescript_to_lua_1 = require("typescript-to-lua");
var maybeReturnExecutableExtension_1 = require("./src/ts/maybeReturnExecutableExtension");
var reconcileResourcePath_1 = require("./src/ts/reconcileResourcePath");
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
    var buildHash = configHash_1.configHash(config);
    console.log("Build " + chalk.yellow(buildHash));
    var tempDir = ".hydroc/" + buildHash;
    var tempFile = ".hydroc/" + buildHash + "/" + config.modName;
    var outFile = config.outDir + "/" + config.modName + ".hc";
    var outFileHash = config.outDir + "/" + config.modName + ".hc.sha256";
    fs.mkdirSync(config.outDir, { recursive: true });
    fs.mkdirSync(tempDir, { recursive: true });
    var tstlOpt = {
        strict: true,
        sourceMapTraceback: false,
        luaTarget: typescript_to_lua_1.LuaTarget.Lua52,
        luaLibImport: typescript_to_lua_1.LuaLibImportKind.Require,
        luaBundleEntry: config.entry,
        luaBundle: tempFile
    };
    var res = typescript_to_lua_1.transpileFiles([config.entry], tstlOpt);
    fs.writeFileSync(tempFile, res.emitResult[0].text);
    cp.execSync(reconcileResourcePath_1.reconcileResourcePath("res/" + process.platform + "/luac52" + maybeReturnExecutableExtension_1.maybeReturnExecutableExtension()) + " " + (config.profile == "release" ? "-s" : "") + " -o " + outFile + " " + tempFile);
    var hash = crypto.createHash("sha256");
    hash.update(fs.readFileSync(outFile).toString());
    fs.writeFileSync(outFileHash, hash.digest("hex"));
    console.log(chalk.green(config.entry) + " ----> " + chalk.blue(outFile));
    console.log(chalk.green(config.entry) + " ----> " + chalk.blue(outFileHash));
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
