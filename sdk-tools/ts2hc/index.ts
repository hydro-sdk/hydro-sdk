import * as fs from "fs";
import { Command, Option } from "commander";

import { buildTs } from "./src/buildTs";


const program = new Command();

program.addOption(
    new Option("--cache-dir <path>",
        "The directory to write cache files to"
    )
).addOption(new Option("--entry-point <entry>", "The file to use as the compilation's entry point").makeOptionMandatory())
    .addOption(new Option("--module-name <name>", "The name to use for the output module").makeOptionMandatory())
    .addOption(new Option("--out-dir <dir>", "The path to the directory to write the output chunk to").makeOptionMandatory())
    .addOption(new Option("--profile <profile>", "The profile to use for compilation").makeOptionMandatory());

program.parse();

const cacheDir: string = program.opts().cacheDir;
const entry: string = program.opts().entry;
const modName: string = program.opts().moduleName;
const outDir: string = program.opts().outDir;
const profile: string = program.opts().profile;

if (!fs.statSync(entry)) {
    console.log("Entry file does not exist");
    process.exit(1);
}

if (profile !== "debug" && profile !== "release") {
    console.log(
        `${profile} is not a valid profile argument. Must be debug or release`
    );
    process.exit(1);
}


if (!fs.existsSync(cacheDir)) {
    fs.mkdirSync(cacheDir);
}

(async () => {
    await buildTs({
        entry: entry,
        modName: modName,
        outDir: outDir,
        cacheDir: cacheDir,
        profile: profile,
    });
})();
