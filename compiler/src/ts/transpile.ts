import * as fs from "fs";

import * as chalk from "chalk";
import { DiagnosticMessageChain } from "typescript";
import { transpileFiles, CompilerOptions, LuaTarget, LuaLibImportKind, TranspileFilesResult } from "typescript-to-lua";

import { BuildOptions } from "./buildOptions";
import { configHash } from "./configHash";

export function transpile(config: BuildOptions): TranspileFilesResult {
    const tstlOpt: CompilerOptions = {
        strict: true,
        sourceMapTraceback:false,
        luaTarget: LuaTarget.Lua52,
        luaLibImport: LuaLibImportKind.Require,
        luaBundleEntry: config.entry,
        luaBundle: `.hydroc/${configHash(config)}/${config.modName}`
    };

    console.log(config.modName)

    if (config.profile == "debug") {
        tstlOpt.sourceMapTraceback = true;
    }
    const res = transpileFiles([config.entry], tstlOpt);

    for (let i = 0; i != res.diagnostics.length; ++i) {
        console.log(`${res.diagnostics[i].file?.fileName}:${(res.diagnostics[i].file as any)?.identifierCount}`);

        let message = "";
        if (typeof res.diagnostics[i].messageText === "string") {
            message = (res.diagnostics[i].messageText as string);
        }
        else {
            message = (res.diagnostics[i].messageText as DiagnosticMessageChain).messageText;
        }

        console.log(chalk.red(message));

        process.exit(1);
    }

    // fs.renameSync(`.hydroc/${configHash(config)}/.lua`, `.hydroc/${configHash(config)}/${config.modName}`);
    // console.log(`    ${chalk.yellow(`${res.emitResult.length}`)} inputs`);

    return res;
}