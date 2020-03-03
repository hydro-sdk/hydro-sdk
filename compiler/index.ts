import * as fs from "fs";
import * as path from "path";
import * as cp from "child_process";

import * as tstl from "typescript-to-lua";
import {LuaTarget, LuaLibImportKind} from "typescript-to-lua";

const assert = require("assert").strict;

const args = process.argv.slice(1, process.argv.length);
const outName = args[2];
const outDir = args[3];
assert(args[2] !== undefined);
assert(outDir !== undefined);

const bundlePrelude = `
local package = {preload={}}
local function require(file)
    return package.preload[file]()
end\n`;

const res = tstl.transpileFiles([args[1]], {luaTarget: LuaTarget.Lua53, luaLibImport: LuaLibImportKind.Inline});

function makeRelativePath(absPath: string): string 
{
    return path.relative(process.cwd(), absPath);
}

if (!fs.existsSync(".hydroc")) 
{
    fs.mkdirSync(".hydroc");
}

let squishy = "";

squishy += `Output "${outName}"\n`;

squishy += `Main "${makeRelativePath(args[1]).split(".")[0]}.lua"\n`;

for (let i = 0; i != res.emitResult.length; ++i) 
{
    const target = `.hydroc/${makeRelativePath(res.emitResult[i].name)}`;
    const targetDir = path.dirname(target);
    fs.mkdirSync(targetDir, {recursive: true});
    fs.writeFileSync(target, res.emitResult[i].text);

    if (res.emitResult[i].name != `${makeRelativePath(args[1]).split(".")[0]}.lua`) 
    {
        squishy += `Module "${makeRelativePath(res.emitResult[i].name).split(path.sep).join(".").split(".lua")[0]}" "${makeRelativePath(res.emitResult[i].name)}"\n`;
    }
}

fs.writeFileSync(".hydroc/squishy", squishy);

if (process.platform == "darwin") 
{
    cp.execSync("./../compiler/res/darwin/lua52 ./../compiler/res/squish.lua", {cwd: "./.hydroc",});
    const rawOut = fs.readFileSync(`.hydroc/${outName}`).toString();
    fs.writeFileSync(`.hydroc/${outName}`,bundlePrelude.concat(rawOut));

    cp.execSync(`./../compiler/res/darwin/luac52 -o ${outName}.lc ${outName}`,{cwd:"./.hydroc"});
    fs.copyFileSync(`.hydroc/${outName}.lc`,`${outDir}/${outName}.lc`);
}

// fs.writeFileSync("out.json",JSON.stringify(res.emitResult,undefined,4));