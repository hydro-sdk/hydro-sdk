import * as fs from "fs";
import * as path from "path";

import * as ts from "typescript";
import * as tstl from "typescript-to-lua";

import { BuildOptions, InputLanguage } from "../../compiler/src/buildOptions";
import { ModuleDebugInfo } from "../../compiler/src/ast/moduleDebugInfo"
import { findModuleDebugInfo } from "../../compiler/src/ast/findModuleDebugInfo";
import { addOriginalMappings } from "../../compiler/src/ast/addOriginalMappings";

type BundleEntry = {
    debugSymbols: Array<ModuleDebugInfo>;
    moduleText: string;
} & Pick<ModuleDebugInfo, "moduleName" | "originalFileName">
type BundleInfo = BuildOptions & { entries: Array<BundleEntry>; }

async function buildBundleInfo(buildOptions: BuildOptions): Promise<BundleInfo> {
    let res: BundleInfo = {
        ...buildOptions,
        entries: []
    };

    const program = ts.createProgram({
        rootNames: [buildOptions.entry],
        options: {
            strict: true
        }
    });

    const sourceFiles = program.getSourceFiles();

    for (const sourceFile of sourceFiles) {
        if (sourceFile.isDeclarationFile) {
            continue;
        }
        const transpileResult = tstl.transpileString(sourceFile.text, {
            luaTarget: tstl.LuaTarget.Lua52,
            luaLibImport: tstl.LuaLibImportKind.Require,
            sourceMapTraceback: false,
        });

        const debugInfo = findModuleDebugInfo({
            originalFileName: sourceFile.fileName,
            filename: sourceFile.fileName + ".lua",
            fileContent: transpileResult.file!.lua!
        });

        await addOriginalMappings(debugInfo, transpileResult);

        res.entries.push({
            debugSymbols: debugInfo,
            moduleText: transpileResult.file!.lua!,
            moduleName: sourceFile.fileName + ".lua",
            originalFileName: sourceFile.fileName
        });
    }

    return res;
}

test("", async () => {
    const bundleInfo = await buildBundleInfo({
        inputLanguage: InputLanguage.typescript,
        entry: "test/compiler/res/bundle-1.ts",
        modName: "bundle-1",
        outDir: "tmp",
        profile: "debug"
    });

    expect(bundleInfo.entries.length).toBe(3);
})