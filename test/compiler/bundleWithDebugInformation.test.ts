import * as fs from "fs";
import * as path from "path";

import * as ts from "typescript";
import * as tstl from "typescript-to-lua";
import { getLuaLibBundle } from "typescript-to-lua/dist/LuaLib";

import { BuildOptions, InputLanguage } from "../../compiler/src/buildOptions";
import { bundlePrelude } from "../../compiler/src/ts/bundlePrelude";
import { makeRelativePath } from "../../compiler/src/makeRelativePath";
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
            strict: true,
            luaTarget: tstl.LuaTarget.Lua52,
            luaLibImport: tstl.LuaLibImportKind.Require,
            sourceMapTraceback: false,
        }
    });

    const { transpiledFiles, diagnostics: transpileDiagnostics } = tstl.transpile({
        program: program as any
    });

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
                readFile: (path: string) => fs.readFileSync(path).toString()
            }),
            moduleName: "lualib_bundle",
            originalFileName: "lualib_bundle"
        });
    }

    return res;
}

interface BundleResult {
    bundle: string;
    debugSymbols: Array<ModuleDebugInfo>;
}

function bundle(bundleInfo: BundleInfo): BundleResult {
    let res: BundleResult = {
        bundle: "",
        debugSymbols: []
    };

    let entry = bundleInfo.entries.find((x) => x.originalFileName == bundleInfo.entry);

    if (entry) {
        let bundleEntries = bundleInfo.entries.filter((x) => x.originalFileName != bundleInfo.entry);

        let bundleLines = bundlePrelude.split(/\n/);

        bundleEntries.forEach((x) => {
            bundleLines.push(`package.preload["${x.moduleName}"] = function (...)`)
            x.debugSymbols.forEach((dbg) => {
                dbg.lineStart += bundleLines.length;
                dbg.lineEnd += bundleLines.length;
            });
            bundleLines.push(...x.moduleText.split(/\n/));
            bundleLines.push("end)");
        });

        bundleLines.push(...entry.moduleText.split("\n"));
        entry.debugSymbols.forEach((dbg) => {
            dbg.lineStart += bundleLines.length;
            dbg.lineEnd += bundleLines.length;
        });

        res.bundle = bundleLines.join("\n");


        res.debugSymbols.push(
            ...bundleEntries.map((x) => x.debugSymbols).reduce((a, b) => a.concat(b)),
            ...entry.debugSymbols
        );
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

    expect(bundleInfo.entries.length).toBe(4);
    expect(bundleInfo.entries[0].moduleName).toBe("test.compiler.res.dir.fooClass");
    expect(bundleInfo.entries[1].moduleName).toBe("test.compiler.res.dir.bar");
    expect(bundleInfo.entries[2].moduleName).toBe("test.compiler.res.bundle-1");
    expect(bundleInfo.entries[3].moduleName).toBe("lualib_bundle");

    const bundleResult = bundle(bundleInfo);

    expect(bundleResult.debugSymbols.length).toBe(2);
    expect(bundleResult.debugSymbols[0].lineStart).toBe(14);
    expect(bundleResult.debugSymbols[0].lineEnd).toBe(16);
    expect(bundleResult.debugSymbols[0].symbolName).toBe("FooClass.prototype.____constructor");

    expect(bundleResult.debugSymbols[1].lineStart).toBe(26);
    expect(bundleResult.debugSymbols[1].lineEnd).toBe(28);
    expect(bundleResult.debugSymbols[1].symbolName).toBe("____exports.bar");
})