import * as ts from "typescript";

import { TranspiledFile } from "../bundle/transpiledFile";
import { canonicalizeModuleName } from "../bundle/canonicalizeModuleName";

type ResolvedModuleInfo = {
    resolvedFileName: string;
    isExternalLibraryImport: boolean | undefined;
};

export function rewriteRequirePaths(sourceFile: Readonly<ts.SourceFile>, transpiledFile: Readonly<TranspiledFile>): string | undefined {
    //I'm not sure if resolvedModules is an undocumented field or if I just don't know how to narrow ts.SourceFile 
    //into what we need here
    let moduleMap: Map<string, ResolvedModuleInfo> | undefined = (sourceFile as any).resolvedModules;
    if (moduleMap) {
        let lines = transpiledFile.lua?.split("\n");
        if (lines) {
            moduleMap.forEach((value, x) => {
                lines?.forEach((line, i) => {
                    //There's probably a cleaner, more performant way to do this
                    const pattern = `require\\(\\"${x.replace(`/`, `\\/`)}\\"\\)`;
                    const regex = new RegExp(pattern, "g");

                    if (regex.test(line)) {
                        if (moduleMap) {
                            if (lines) {
                                lines[i] = line.replace(regex, `require("${canonicalizeModuleName(value.resolvedFileName)}")`);
                            }
                        }
                    }
                });
            });
        }
        return lines?.join("\n");
    }
    return undefined;
}