import * as cp from "child_process";
import * as fs from "fs";
import * as path from "path";
import * as crypto from "crypto";

import * as chalk from "chalk";

import { BuildOptions } from "./buildOptions";
import { bundlePrelude } from "./bundlePrelude";
import { configHash } from "./configHash";

export function squishAndCopy(config: BuildOptions): void {
    const platform = process.platform;
    cp.execSync(`./../../compiler/res/${platform}/lua52 ./../../compiler/res/squish.lua`, { cwd: `./.hydroc/${configHash(config)}`, });
    const rawOut = fs.readFileSync(`.hydroc/${configHash(config)}/${config.modName}`).toString();
    fs.writeFileSync(`.hydroc/${configHash(config)}/${config.modName}`, bundlePrelude.concat(rawOut));

    cp.execSync(`./../../compiler/res/darwin/luac52 ${config.profile == "release" ? "-s" : ""} -o ${config.modName}.hc ${config.modName}`, { cwd: `./.hydroc/${configHash(config)}` });

    const outFile = `${config.outDir}/${config.modName}.hc`;

    fs.mkdirSync(path.dirname(outFile), { recursive: true });

    fs.copyFileSync(`.hydroc/${configHash(config)}/${config.modName}.hc`, outFile);

    const hash = crypto.createHash("sha256");
    hash.update(fs.readFileSync(`.hydroc/${configHash(config)}/${config.modName}.hc`).toString());
    fs.writeFileSync(
        `${config.outDir}/${config.modName}.hc.sha256`,
        hash.digest("hex"));

    console.log(`${chalk.green(config.entry)} ----> ${chalk.blue(`${config.outDir}/${config.modName}.hc.sha256`)}`);
}