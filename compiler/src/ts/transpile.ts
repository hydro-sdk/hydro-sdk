import * as chalk from "chalk";
import {transpileFiles, CompilerOptions, LuaTarget, LuaLibImportKind, TranspileFilesResult} from "typescript-to-lua";

import {BuildOptions} from "./buildOptions";

export function transpile(config: BuildOptions): TranspileFilesResult 
{
    const tstlOpt: CompilerOptions = {strict: true, luaTarget: LuaTarget.Lua53, luaLibImport: LuaLibImportKind.Inline};

    if (config.profile == "debug") 
    {
        // tstlOpt.sourceMapTraceback = true;
    }
    const res = transpileFiles([config.entry], tstlOpt);

    console.log(`    ${chalk.yellow(`${res.emitResult.length}`)} inputs`);

    return res;
}