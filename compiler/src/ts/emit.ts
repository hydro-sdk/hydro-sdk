import * as fs from "fs";
import * as path from "path";

import {TranspileFilesResult} from "typescript-to-lua";

import {configHash} from "./configHash";
import {BuildOptions} from "./buildOptions";
import {makeRelativePath} from "./makeRelativePath";
import {transformSourceMap} from "./transformSourceMap";

export function emit(config: BuildOptions, res: TranspileFilesResult): void 
{
    let squishy = "";

    squishy += `Output "${config.modName}"\n`;

    squishy += `Main "${makeRelativePath(config.entry).split(".")[0]}.lua"\n`;

    for (let i = 0; i != res.emitResult.length; ++i) 
    {
        // console.log(res.emitResult[0].name);
        const target = `.hydroc/${configHash(config)}/${makeRelativePath(res.emitResult[i].name)}`;
        const targetDir = path.dirname(target);
        fs.mkdirSync(targetDir, {recursive: true});

        fs.writeFileSync(target, res.emitResult[i].text);

        if (res.emitResult[i].name != `${makeRelativePath(config.entry).split(".")[0]}.lua`) 
        {
            squishy += `Module "${makeRelativePath(res.emitResult[i].name).split(path.sep).join(".").split(".lua")[0]}" "${makeRelativePath(res.emitResult[i].name)}"\n`;
        }
    }

    fs.writeFileSync(`.hydroc/${configHash(config)}/squishy`, squishy);
}