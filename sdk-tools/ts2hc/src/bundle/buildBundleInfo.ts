import * as fs from "fs";
import * as path from "path";
import { exit } from "process";

import * as ts from "typescript";
import * as tstl from "typescript-to-lua";
import { getLuaLibBundle } from "typescript-to-lua/dist/LuaLib";

import { addOriginalMappings } from "../ast/addOriginalMappings";
import { findModuleDebugInfo } from "../ast/findModuleDebugInfo";
import { hashSourceFile } from "../ast/hashSourceFile";
import { hashText } from "../ast/hashText";
import { mangleSymbols } from "../ast/mangleSymbols";
import { ModuleDebugInfo } from "../ast/moduleDebugInfo";
import { BuildOptions } from "../buildOptions";
import { LogEventType } from "../logEvent";
import { LogMgr } from "../logMgr";
import { makeRelativePath } from "../makeRelativePath";
import { BundleInfo } from "./bundleInfo";

export async function buildBundleInfo(
    buildOptions: BuildOptions,
    logMgr: LogMgr,
    updateBuildProgress: (
        currentStep: number,
        totalSteps: number,
        suffixMessage: string
    ) => void,
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
            target: ts.ScriptTarget.ES5,
            luaTarget: tstl.LuaTarget.Lua52,
            luaLibImport: tstl.LuaLibImportKind.Require,
            sourceMapTraceback: false,
            outDir: `${buildOptions.cacheDir}${path.sep}ts2hc${path.sep}`,
            include: ["node_modules/hydro-sdk/runtime"],
            baseUrl: buildOptions.baseUrl,
        },
    });

    const sourceFiles = program
        .getSourceFiles()
        .filter((x) => !x.isDeclarationFile);
    updateBuildProgress(0, sourceFiles.length + 1, "");

    sourceFiles.forEach((x) => {
        const targetFileIsInNodeModules = /node_modules/g.test(x.fileName);

        if (targetFileIsInNodeModules) {
            (x as any).fileName = (x as any).fileName.replace(
                "node_modules",
                path.dirname(buildOptions.entry)
            );
            (x as any).originalFileName = (x as any).originalFileName.replace(
                "node_modules",
                path.dirname(buildOptions.entry)
            );
            (x as any).path = (x as any).path.replace(
                "node_modules",
                path.dirname(buildOptions.entry)
            );
            (x as any).resolvedPath = (x as any).resolvedPath.replace(
                "node_modules",
                path.dirname(buildOptions.entry)
            );
        }
    });

    const oldEntries = oldBundleInfo ? oldBundleInfo.entries : undefined;

    const sourceFilesToTranspile = oldEntries
        ? sourceFiles.filter(
              (x) =>
                  hashSourceFile(x) !=
                  (oldEntries[x.fileName]?.originalFileHash ?? "")
          )
        : sourceFiles;

    let currentStep = Math.abs(
        sourceFiles.length + 1 - sourceFilesToTranspile.length
    );

    updateBuildProgress(currentStep, sourceFiles.length + 1, "");

    const concatDiagnostics = (
        newDiagnostics: Readonly<Array<ts.DiagnosticRelatedInformation>>
    ) =>
        newDiagnostics && newDiagnostics.length
            ? (res.diagnostics = [
                  ...res.diagnostics,
                  ...newDiagnostics.map((x) => x),
              ])
            : undefined;

    const getFullDiagnostics = () => {
        let diagnostics:
            | Readonly<Array<ts.Diagnostic>>
            | Readonly<Array<ts.DiagnosticWithLocation>> =
            program.getSemanticDiagnostics();
        concatDiagnostics(diagnostics);

        diagnostics = program.getDeclarationDiagnostics();
        concatDiagnostics(diagnostics);
    };

    const getIncrementalDiagnostics = (sourceFile: Readonly<ts.SourceFile>) => {
        let diagnostics:
            | Readonly<Array<ts.Diagnostic>>
            | Readonly<Array<ts.DiagnosticWithLocation>> =
            program.getSyntacticDiagnostics(sourceFile);
        concatDiagnostics(diagnostics);

        diagnostics = program.getSemanticDiagnostics(sourceFile);
        concatDiagnostics(diagnostics);

        diagnostics = program.getDeclarationDiagnostics(sourceFile);
        concatDiagnostics(diagnostics);
    };

    getFullDiagnostics();

    res.entries = oldEntries ?? {};

    const sanityCheckDebugSymbols = (
        debugInfo: Readonly<Array<ModuleDebugInfo>>
    ): void => {
        debugInfo.forEach((x) => {
            debugInfo.forEach((k) => {
                if (
                    x.symbolFullyQualifiedMangleName ==
                        k.symbolFullyQualifiedMangleName &&
                    x.originalLineStart != k.originalLineStart &&
                    x.originalColumnStart != k.originalColumnStart
                ) {
                    logMgr.log({
                        event: {
                            logEventType: LogEventType.error,
                            message: `${x.symbolName} and ${k.symbolName}`,
                        },
                    });
                    logMgr.log({
                        event: {
                            logEventType: LogEventType.error,
                            message: `Defined at ${x.originalFileName}:${x.originalLineStart},${x.originalColumnStart} (${x.lineStart}-${x.lineEnd},${x.columnStart}-${x.columnEnd})`,
                        },
                    });
                    logMgr.log({
                        event: {
                            logEventType: LogEventType.error,
                            message: `and ${k.originalFileName}:${k.originalLineStart},${k.originalColumnStart} (${k.lineStart}-${k.lineEnd},${k.columnStart}-${k.columnEnd})`,
                        },
                    });
                    logMgr.log({
                        event: {
                            logEventType: LogEventType.error,
                            message: `both mangled to the following: ${x.symbolFullyQualifiedMangleName}`,
                        },
                    });
                    exit(1);
                }
            });
        });
    };

    const buildSourceFileShortPath = (
        sourceFile: Readonly<ts.SourceFile>
    ): string => {
        let dirname = path.dirname(sourceFile.fileName);
        let dirnames = dirname.split(path.sep);
        let parentDir =
            dirnames.length >= 1
                ? `${path.sep}${dirnames[dirnames.length - 1]}`
                : "";
        let grandParentDir =
            dirname.length >= 2 ? `${dirnames[dirnames.length - 2]}` : "";
        return `${grandParentDir}${parentDir}${path.sep}${path.basename(
            sourceFile.fileName
        )}`;
    };

    sourceFilesToTranspile.sort((a, b) =>
        buildSourceFileShortPath(a).localeCompare(buildSourceFileShortPath(b))
    );

    for (const sourceFileToTranspile of sourceFilesToTranspile) {
        await new Promise((resolve) => {
            updateBuildProgress(
                currentStep,
                sourceFiles.length + 1,
                buildSourceFileShortPath(sourceFileToTranspile)
            );
            setTimeout(() => {
                resolve(undefined);
            }, 200);
        });

        getIncrementalDiagnostics(sourceFileToTranspile);

        const { transpiledFiles } = tstl.transpile({
            program: program as any,
            sourceFiles: [sourceFileToTranspile as any],
        });

        let transpiledFile: tstl.TranspiledFile | undefined;

        if (transpiledFiles != null && transpiledFiles.length > 0) {
            transpiledFile = transpiledFiles[0];
        }

        if (transpiledFile != null) {
            const debugInfo = findModuleDebugInfo({
                originalFileName: transpiledFile.fileName,
                filename: transpiledFile.fileName,
                fileContent: transpiledFile.lua!,
                logMgr,
            });

            await addOriginalMappings(debugInfo, transpiledFile);
            mangleSymbols(debugInfo, (symbol: Readonly<ModuleDebugInfo>) =>
                hashText(symbol.originalFileName)
            );

            sanityCheckDebugSymbols(debugInfo);
            res.entries[transpiledFile.fileName] = {
                debugSymbols: debugInfo,
                moduleText: transpiledFile.lua!,
                moduleName: makeRelativePath(transpiledFile.fileName)
                    .split(path.sep)
                    .join(".")
                    .slice(0, -3),
                originalFileName: transpiledFile.fileName,
                originalFileHash: hashSourceFile(
                    sourceFilesToTranspile.find(
                        (x) => x.fileName == transpiledFile?.fileName
                    )
                ),
            };
        }
        currentStep++;
    }

    if (
        !Object.values(res.entries).some((x) => x.moduleName == "lualib_bundle")
    ) {
        updateBuildProgress(
            currentStep,
            sourceFiles.length + 1,
            "lualib_bundle"
        );
        const lualiBundle = getLuaLibBundle({
            getCurrentDirectory: () => "",
            readFile: (filePath: string) =>
                fs.readFileSync(filePath).toString(),
        });
        const debugInfo = findModuleDebugInfo({
            originalFileName: "lualib_bundle",
            filename: "lualib_bundle",
            fileContent: lualiBundle,
            logMgr,
        });

        mangleSymbols(
            debugInfo,
            (symbol: Readonly<ModuleDebugInfo>) =>
                `lualib_bundle${hashText(symbol.originalFileName)}`
        );

        sanityCheckDebugSymbols(debugInfo);

        res.entries["lualib_bundle"] = {
            debugSymbols: debugInfo,
            moduleText: lualiBundle,
            moduleName: "lualib_bundle",
            originalFileName: "lualib_bundle",
            originalFileHash: hashText(lualiBundle),
        };
    }
    updateBuildProgress(
        currentStep,
        sourceFiles.length + 1,
        buildOptions.entry
    );

    return res;
}
