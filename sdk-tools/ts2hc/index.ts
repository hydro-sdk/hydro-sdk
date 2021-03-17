import * as fs from "fs";
import * as minimist from "minimist";
import * as rimraf from "rimraf";

import { buildTs } from "./src/buildTs";

const clear = require("clear");
const handler = require("serve-handler");

const argv = minimist(process.argv.slice(2));

const entry: string = argv.t;
const modName: string = argv.m;
const outDir: string = argv.d;
const profile: string = argv.p;

const clean = argv.clean;

if (clean) {
    rimraf.sync(".hydroc/ts2hc");
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

if (!fs.existsSync(".hydroc/ts2hc")) {
    fs.mkdirSync(".hydroc/ts2hc");
}

(async () => {
    await buildTs({
        entry: entry,
        modName: modName,
        outDir: outDir,
        cacheDir: ".hydroc",
        profile: profile,
    });
})();
