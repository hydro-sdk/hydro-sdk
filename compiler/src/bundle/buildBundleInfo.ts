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
import { hashSourceFile } from "../ast/hashSourceFile";
import { hashText } from "../ast/hashText";

export async function buildBundleInfo(
    buildOptions: BuildOptions,
    oldBundleInfo?: BundleInfo | undefined
): Promise<BundleInfo> {
    let res: BundleInfo = {
        ...buildOptions,
        entries: {},
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

    const sourceFiles = program.getSourceFiles().filter((x) => !x.isDeclarationFile);

    const oldEntries = oldBundleInfo ? oldBundleInfo.entries : undefined;

    const sourceFilesToTranspile = oldEntries ? sourceFiles.filter((x) => hashSourceFile(x) != (oldEntries[x.fileName]?.originalFileHash ?? "")) : sourceFiles;

    console.log(`Reused ${Math.abs(sourceFiles.length - sourceFilesToTranspile.length)} inputs`);

    const { transpiledFiles, diagnostics: transpileDiagnostics } = tstl.transpile({
        program: program as any,
        sourceFiles: (sourceFilesToTranspile as any)
    });

    res.diagnostics = transpileDiagnostics as any;

    res.entries = oldEntries ?? {};

    for (const transpiledFile of transpiledFiles) {
        const debugInfo = findModuleDebugInfo({
            originalFileName: transpiledFile.fileName,
            filename: transpiledFile.fileName,
            fileContent: transpiledFile.lua!
        });

        await addOriginalMappings(debugInfo, transpiledFile);

        res.entries[transpiledFile.fileName] = {
            debugSymbols: debugInfo,
            moduleText: transpiledFile.lua!,
            moduleName: `${makeRelativePath(transpiledFile.fileName).split(path.sep).join(".").split(".ts")[0]}`,
            originalFileName: transpiledFile.fileName,
            originalFileHash: hashSourceFile(sourceFilesToTranspile.find((x) => x.fileName == transpiledFile.fileName))
        };
    }

    if (!Object.values(res.entries).some((x) => x.moduleName == "lualib_bundle")) {
        const lualiBundle = getLuaLibBundle({
            getCurrentDirectory: () => "",
            readFile: (filePath: string) => fs.readFileSync(filePath).toString()
        });
        res.entries["lualib_bundle"] = {
            debugSymbols: findModuleDebugInfo({
                originalFileName: "lualib_bundle",
                filename: "lualib_bundle",
                fileContent: lualiBundle,
            }),
            moduleText: lualiBundle,
            moduleName: "lualib_bundle",
            originalFileName: "lualib_bundle",
            originalFileHash: hashText(lualiBundle)
        };
    }

    return res;
}