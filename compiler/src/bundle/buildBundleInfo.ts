import * as fs from "fs";
import * as path from "path";

import * as ts from "typescript";
import * as tstl from "typescript-to-lua";

import { BuildOptions } from "../buildOptions";
import { findModuleDebugInfo } from "../ast/findModuleDebugInfo";
import { addOriginalMappings } from "../ast/addOriginalMappings";
import { makeRelativePath } from "../makeRelativePath";
import { getLuaLibBundle } from "typescript-to-lua/dist/LuaLib";
import { BundleInfo } from "./bundleInfo";

export async function buildBundleInfo(buildOptions: BuildOptions): Promise<BundleInfo> {
    let res: BundleInfo = {
        ...buildOptions,
        entries: [],
        diagnostics: [],
    };

    const program = ts.createProgram({
        rootNames: [buildOptions.entry],
        options: {
            strict: true,
            luaTarget: tstl.LuaTarget.Lua52,
            luaLibImport: tstl.LuaLibImportKind.Require,
            sourceMapTraceback: false,
        }
    });

    const { transpiledFiles, diagnostics: transpileDiagnostics } = tstl.transpile({
        program: program as any
    });

    res.diagnostics = transpileDiagnostics as any;

    for (const transpiledFile of transpiledFiles) {
        const debugInfo = findModuleDebugInfo({
            originalFileName: transpiledFile.fileName,
            filename: transpiledFile.fileName,
            fileContent: transpiledFile.lua!
        });

        await addOriginalMappings(debugInfo, transpiledFile);

        res.entries.push({
            debugSymbols: debugInfo,
            moduleText: transpiledFile.lua!,
            moduleName: `${makeRelativePath(transpiledFile.fileName).split(path.sep).join(".").split(".ts")[0]}`,
            originalFileName: transpiledFile.fileName
        });
    }

    if (!res.entries.some((x) => x.moduleName == "lualib_bundle")) {
        res.entries.push({
            debugSymbols: [],
            moduleText: getLuaLibBundle({
                getCurrentDirectory: () => "",
                readFile: (filePath: string) => fs.readFileSync(filePath).toString()
            }),
            moduleName: "lualib_bundle",
            originalFileName: "lualib_bundle"
        });
    }

    return res;
}