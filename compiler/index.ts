import * as fs from "fs";
import * as http from "http";
import * as path from "path";

import * as chokidar from "chokidar";
import * as minimist from "minimist";
import * as rimraf from "rimraf";

import { buildTs } from "./src/buildTs";

const clear = require("clear");
const handler = require("serve-handler");

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

const watch: string = argv.w;

if (!entry) {
    console.log("Entry file must be specified with -t switch");
    process.exit(1);
} else {
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
    console.log(
        `${profile} is not a valid profile argument. Must be debug or release`
    );
    process.exit(1);
}

let classPath: Array<string> = [];

if (argv["class-path"] !== undefined) {
    if (typeof argv["class-path"] === "string") {
        classPath.push(argv["class-path"]);
    } else {
        classPath = argv["class-path"];
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

(async () => {
    await buildTs({
        entry: entry,
        modName: modName,
        outDir: outDir,
        profile: profile,
    });
})();
