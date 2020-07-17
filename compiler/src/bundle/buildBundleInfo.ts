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
import { mangleSymbols } from "../ast/mangleSymbols";
import { exit } from "process";

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

    const concatDiagnostics = (newDiagnostics: Readonly<Array<ts.DiagnosticRelatedInformation>>) =>
        newDiagnostics && newDiagnostics.length ? res.diagnostics = [
            ...res.diagnostics,
            ...newDiagnostics.map((x) => x)
        ] : undefined;

    const getFullDiagnostics = () => {
        let diagnostics:
            Readonly<Array<ts.Diagnostic>> |
            Readonly<Array<ts.DiagnosticWithLocation>> = program.getSyntacticDiagnostics();
        concatDiagnostics(diagnostics);

        diagnostics = program.getSemanticDiagnostics();
        concatDiagnostics(diagnostics);

        diagnostics = program.getDeclarationDiagnostics();
        concatDiagnostics(diagnostics);
    }

    const getIncrementalDiagnostics = () => {
        if (sourceFilesToTranspile.length > 0) {
            for (const sourceFile of sourceFilesToTranspile) {
                let diagnostics:
                    Readonly<Array<ts.Diagnostic>> |
                    Readonly<Array<ts.DiagnosticWithLocation>> = program.getSyntacticDiagnostics(sourceFile);
                concatDiagnostics(diagnostics);

                diagnostics = program.getSemanticDiagnostics(sourceFile);
                concatDiagnostics(diagnostics);

                diagnostics = program.getDeclarationDiagnostics(sourceFile);
                concatDiagnostics(diagnostics);
            }
        }
    }

    if (sourceFilesToTranspile.length == 0) {
        getIncrementalDiagnostics();
    } else {
        getFullDiagnostics();
    }


    const { transpiledFiles } = tstl.transpile({
        program: program as any,
        sourceFiles: (sourceFilesToTranspile as any)
    });

    res.entries = oldEntries ?? {};

    for (const transpiledFile of transpiledFiles) {
        const debugInfo = findModuleDebugInfo({
            originalFileName: transpiledFile.fileName,
            filename: transpiledFile.fileName,
            fileContent: transpiledFile.lua!
        });

        await addOriginalMappings(debugInfo, transpiledFile);
        mangleSymbols(debugInfo);

        debugInfo.forEach((x) => {
            debugInfo.forEach((k) => {
                if (x.symbolFullyQualifiedMangleName == k.symbolFullyQualifiedMangleName &&
                    x.originalLineStart != k.originalLineStart &&
                    x.originalColumnStart != k.originalColumnStart
                ) {
                    console.log(`${x.symbolName} and ${k.symbolName}`);
                    console.log(`Defined at ${x.originalFileName}:${x.lineStart},${x.originalColumnStart}`);
                    console.log(`and ${k.originalFileName}:${k.lineStart},${k.originalColumnStart}`);
                    console.log(`both mangled to the following: ${x.symbolFullyQualifiedMangleName}`);
                    exit(1);
                }
            })
        });

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