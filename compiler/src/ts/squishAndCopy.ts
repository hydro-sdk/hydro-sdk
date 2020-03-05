import * as cp from "child_process";
import * as fs from "fs";
import * as path from "path";

import {BuildOptions} from "./buildOptions";
import {bundlePrelude} from "./bundlePrelude";
import {configHash} from "./configHash";

export function squishAndCopy(config: BuildOptions): void 
{
    const platform = process.platform;
    cp.execSync(`./../../compiler/res/${platform}/lua52 ./../../compiler/res/squish.lua`, {cwd: `./.hydroc/${configHash(config)}`,});
    const rawOut = fs.readFileSync(`.hydroc/${configHash(config)}/${config.modName}`).toString();
    fs.writeFileSync(`.hydroc/${configHash(config)}/${config.modName}`, bundlePrelude.concat(rawOut));

    cp.execSync(`./../../compiler/res/darwin/luac52 ${config.profile == "release" ? "-s" : ""} -o ${config.modName}.lc ${config.modName}`, {cwd: `./.hydroc/${configHash(config)}`});

    const outFile = `${config.outDir}/${config.modName}.lc`;

    fs.mkdirSync(path.dirname(outFile), {recursive: true});

    fs.copyFileSync(`.hydroc/${configHash(config)}/${config.modName}.lc`, outFile);
}