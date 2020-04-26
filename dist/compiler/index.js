"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var fs = require("fs");
var path = require("path");
var minimist = require("minimist");
var rimraf = require("rimraf");
var chokidar = require("chokidar");
var transpileTs_1 = require("./src/ts/transpileTs");
var buildOptions_1 = require("./src/buildOptions");
var transpileHx_1 = require("./src/hx/transpileHx");
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
if (!profile) {
    console.log("Build profile must be specified with -p switch");
    process.exit(1);
}
if (profile !== "debug" && profile !== "release") {
    console.log(profile + " is not a valid profile argument. Must be debug or release");
    process.exit(1);
}
var inputLanguage;
var extName = path.extname(entry);
switch (extName) {
    case ".ts":
        inputLanguage = buildOptions_1.InputLanguage.typescript;
        break;
    case ".hx":
        inputLanguage = buildOptions_1.InputLanguage.haxe;
        break;
}
var classPath = [];
var mainClass;
if (argv["class-path"] !== undefined) {
    if (typeof argv["class-path"] === "string") {
        classPath.push(argv["class-path"]);
    }
    else {
        classPath = argv["class-path"];
    }
}
if (inputLanguage == buildOptions_1.InputLanguage.haxe) {
    if (argv["main-class"] !== undefined) {
        mainClass = argv["main-class"];
    }
    else if (argv["main-class"] === undefined || argv["main-class"] === "" || mainClass === undefined || mainClass === "") {
        console.log("A main class must be provided. Use --main-class");
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
if (watch !== undefined) {
    chokidar.watch(watch).on("all", function () {
        if (inputLanguage == buildOptions_1.InputLanguage.typescript) {
            transpileTs_1.transpileTS({
                inputLanguage: inputLanguage,
                entry: entry,
                modName: modName,
                outDir: outDir,
                profile: profile
            });
        }
        else if (inputLanguage == buildOptions_1.InputLanguage.haxe && mainClass) {
            transpileHx_1.transpileHx({
                inputLanguage: inputLanguage,
                mainClass: mainClass,
                classPath: classPath,
                entry: entry,
                modName: modName,
                outDir: outDir,
                profile: profile
            });
        }
    });
}
else {
    if (inputLanguage == buildOptions_1.InputLanguage.typescript) {
        transpileTs_1.transpileTS({
            inputLanguage: inputLanguage,
            entry: entry,
            modName: modName,
            outDir: outDir,
            profile: profile
        });
    }
    else if (inputLanguage == buildOptions_1.InputLanguage.haxe && mainClass) {
        transpileHx_1.transpileHx({
            inputLanguage: inputLanguage,
            classPath: classPath,
            mainClass: mainClass,
            entry: entry,
            modName: modName,
            outDir: outDir,
            profile: profile
        });
    }
}
