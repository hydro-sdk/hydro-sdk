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
import { ModuleDebugInfo } from "../ast/moduleDebugInfo";
import { TranspiledFile } from "./transpiledFile";
import { canonicalizeModuleName } from "./canonicalizeModuleName";
import { rewriteRequirePaths } from "../transforms/rewriteRequirePaths";

export async function buildBundleInfo(
    buildOptions: BuildOptions,
    updateBuildProgress: (currentStep: number, totalSteps: number, suffixMessage: string) => void,
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
            moduleResolution: ts.ModuleResolutionKind.NodeJs,
            target: ts.ScriptTarget.ES5,
            sourceMapTraceback: false,
        }
    });

    const sourceFiles = program.getSourceFiles().filter((x) => !x.isDeclarationFile);
    updateBuildProgress(0, sourceFiles.length + 1, "");

    const oldEntries = oldBundleInfo ? oldBundleInfo.entries : undefined;

    const sourceFilesToTranspile = oldEntries ? sourceFiles.filter((x) => hashSourceFile(x) != (oldEntries[x.fileName]?.originalFileHash ?? "")) : sourceFiles;

    let currentStep = Math.abs(sourceFiles.length + 1 - sourceFilesToTranspile.length);

    updateBuildProgress(currentStep, sourceFiles.length + 1, "");

    const concatDiagnostics = (newDiagnostics: Readonly<Array<ts.DiagnosticRelatedInformation>>) =>
        newDiagnostics && newDiagnostics.length ? res.diagnostics = [
            ...res.diagnostics,
            ...newDiagnostics.map((x) => x)
        ] : undefined;

    const getFullDiagnostics = () => {
        let diagnostics:
            Readonly<Array<ts.Diagnostic>> |
            Readonly<Array<ts.DiagnosticWithLocation>> = program.getSemanticDiagnostics();
        concatDiagnostics(diagnostics);

        diagnostics = program.getDeclarationDiagnostics();
        concatDiagnostics(diagnostics);
    }

    const getIncrementalDiagnostics = (sourceFile: Readonly<ts.SourceFile>) => {
        let diagnostics:
            Readonly<Array<ts.Diagnostic>> |
            Readonly<Array<ts.DiagnosticWithLocation>> = program.getSyntacticDiagnostics(sourceFile);
        concatDiagnostics(diagnostics);

        diagnostics = program.getSemanticDiagnostics(sourceFile);
        concatDiagnostics(diagnostics);

        diagnostics = program.getDeclarationDiagnostics(sourceFile);
        concatDiagnostics(diagnostics);
    }

    getFullDiagnostics();

    res.entries = oldEntries ?? {};

    const sanityCheckDebugSymbols = (debugInfo: Readonly<Array<ModuleDebugInfo>>): void => {
        debugInfo.forEach((x) => {
            debugInfo.forEach((k) => {
                if (x.symbolFullyQualifiedMangleName == k.symbolFullyQualifiedMangleName &&
                    x.originalLineStart != k.originalLineStart &&
                    x.originalColumnStart != k.originalColumnStart
                ) {
                    console.log(`${x.symbolName} and ${k.symbolName}`);
                    console.log(`Defined at ${x.originalFileName}:${x.originalLineStart},${x.originalColumnStart} (${x.lineStart},${x.columnStart})`);
                    console.log(`and ${k.originalFileName}:${k.originalLineStart},${k.originalColumnStart} (${k.lineStart},${k.columnStart})`);
                    console.log(`both mangled to the following: ${x.symbolFullyQualifiedMangleName}`);
                    exit(1);
                }
            });
        });
    };

    const buildSourceFileShortPath = (sourceFile: Readonly<ts.SourceFile>): string => {
        let dirname = path.dirname(sourceFile.fileName);
        let dirnames = dirname.split(path.sep);
        let parentDir = dirnames.length >= 1 ? `${path.sep}${dirnames[dirnames.length - 1]}` : "";
        let grandParentDir = dirname.length >= 2 ? `${dirnames[dirnames.length - 2]}` : "";
        return `${grandParentDir}${parentDir}${path.sep}${path.basename(sourceFile.fileName)}`;
    }

    sourceFilesToTranspile.sort((a, b) => buildSourceFileShortPath(a).localeCompare(buildSourceFileShortPath(b)));

    for (const sourceFileToTranspile of sourceFilesToTranspile) {
        await new Promise((resolve) => {

            updateBuildProgress(currentStep, sourceFiles.length + 1, buildSourceFileShortPath(sourceFileToTranspile));
            setTimeout(() => {
                resolve();
            }, 200);
        });

        getIncrementalDiagnostics(sourceFileToTranspile);

        let transpiledFile: TranspiledFile | undefined = tstl.transpileString(
            sourceFileToTranspile.text,
            {
                luaTarget: tstl.LuaTarget.Lua52,
                luaLibImport: tstl.LuaLibImportKind.Require,
                sourceMapTraceback: false,
            }).file;

        if (transpiledFile != null) {
            transpiledFile.fileName = sourceFileToTranspile.fileName;

            const transformedPaths = rewriteRequirePaths(sourceFileToTranspile, transpiledFile);

            if (transformedPaths) {
                transpiledFile.lua = transformedPaths;
            }

            const debugInfo = findModuleDebugInfo({
                originalFileName: transpiledFile.fileName,
                filename: transpiledFile.fileName,
                fileContent: transpiledFile.lua!
            });

            await addOriginalMappings(debugInfo, transpiledFile);
            mangleSymbols(
                debugInfo,
                (symbol: Readonly<ModuleDebugInfo>) => hashText(symbol.originalFileName)
            );

            sanityCheckDebugSymbols(debugInfo);

            res.entries[transpiledFile.fileName] = {
                debugSymbols: debugInfo,
                moduleText: transpiledFile.lua!,
                moduleName: canonicalizeModuleName(transpiledFile.fileName),
                originalFileName: transpiledFile.fileName,
                originalFileHash: hashSourceFile(sourceFilesToTranspile.find((x) => x.fileName == transpiledFile?.fileName))
            };
        }
        currentStep++;
    }

    if (!Object.values(res.entries).some((x) => x.moduleName == "lualib_bundle")) {
        updateBuildProgress(currentStep, sourceFiles.length + 1, "lualib_bundle");
        const lualiBundle = getLuaLibBundle({
            getCurrentDirectory: () => "",
            readFile: (filePath: string) => fs.readFileSync(filePath).toString()
        });
        const debugInfo = findModuleDebugInfo({
            originalFileName: "lualib_bundle",
            filename: "lualib_bundle",
            fileContent: lualiBundle,
        });

        mangleSymbols(
            debugInfo,
            (symbol: Readonly<ModuleDebugInfo>) => `lualib_bundle${hashText(symbol.originalFileName)}`
        );

        sanityCheckDebugSymbols(debugInfo);

        res.entries["lualib_bundle"] = {
            debugSymbols: debugInfo,
            moduleText: lualiBundle,
            moduleName: "lualib_bundle",
            originalFileName: "lualib_bundle",
            originalFileHash: hashText(lualiBundle)
        };
    }
    updateBuildProgress(currentStep, sourceFiles.length + 1, buildOptions.entry);

    return res;
}