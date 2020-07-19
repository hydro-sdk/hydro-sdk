import * as fs from "fs";
import * as path from "path";

import * as minimist from "minimist";
import * as rimraf from "rimraf";
import * as chokidar from "chokidar";

const clear = require("clear");
const handler = require('serve-handler');
import * as http from "http";

import { buildTs } from "./src/buildTs";
import { InputLanguage } from "./src/buildOptions";
const argv = minimist(process.argv.slice(2));

const entry = argv.t;
const modName = argv.m;
const outDir = argv.d;
const profile = argv.p;

const clean = argv.clean;

if (clean) {
    rimraf.sync(".hydroc");
    process.exit(0);
}

const watch:string = argv.w;

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
    console.log(`${profile} is not a valid profile argument. Must be debug or release`);
    process.exit(1);
}

let inputLanguage: InputLanguage | undefined;

let extName = path.extname(entry);

switch (extName) {
    case ".ts":
        inputLanguage = InputLanguage.typescript;
        break;
    case ".hx":
        inputLanguage = InputLanguage.haxe;
        break;
}

let classPath: Array<string> = [];
let mainClass: string | undefined;

if (argv["class-path"] !== undefined) {
    if (typeof argv["class-path"] === "string") {
        classPath.push(argv["class-path"]);
    } else {
        classPath = argv["class-path"];
    }
}

if (inputLanguage == InputLanguage.haxe) {
    if (argv["main-class"] !== undefined) {
        mainClass = argv["main-class"];
    } else if (argv["main-class"] === undefined || argv["main-class"] === "" || mainClass === undefined || mainClass === "") {
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
    const server = http.createServer((request, response) => {
        
        return handler(request, response,{public: outDir});
      });
       
      server.listen(5000, () => {});
      const printServerInfo = ()=>{
        console.log(`Watching for changes in ${watch}`);
        console.log(`Serving ${outDir} on port 5000`);
      };
    (async () => {
        if (inputLanguage == InputLanguage.typescript) {
            clear();
            printServerInfo();
            await buildTs({
                inputLanguage: inputLanguage,
                entry: entry,
                modName: modName,
                outDir: outDir,
                profile: profile
            });
        }
    })();
    chokidar.watch(watch).on("change", async () => {
        if (inputLanguage == InputLanguage.typescript) {
            clear();
            printServerInfo();
            await buildTs({
                inputLanguage: inputLanguage,
                entry: entry,
                modName: modName,
                outDir: outDir,
                profile: profile
            });
        }
    });
}
else {
    (async () => {
        if (inputLanguage == InputLanguage.typescript) {
            await buildTs({
                inputLanguage: inputLanguage,
                entry: entry,
                modName: modName,
                outDir: outDir,
                profile: profile
            });
        }
    })();
}