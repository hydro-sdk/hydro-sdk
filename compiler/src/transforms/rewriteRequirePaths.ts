import * as ts from "typescript";

import { TranspiledFile } from "../bundle/transpiledFile";
import { canonicalizeModuleName } from "../bundle/canonicalizeModuleName";

type ResolvedModuleInfo = {
    resolvedfileName: string;
    isExternalLibraryImport: boolean | undefined;
};

export function rewriteRequirePaths(sourceFile: Readonly<ts.SourceFile>, transpiledFile: Readonly<TranspiledFile>): string | undefined {
    //I'm not sure if resolvedModules is an undocumented field or if I just don't know how to narrow ts.SourceFile 
    //into what we need here
    let moduleMap: { [i: string]: ResolvedModuleInfo } | undefined = (sourceFile as any).resolvedModules;

    if (moduleMap) {
        let lines = transpiledFile.lua?.split("\n");
        if (lines) {
            Object.keys(moduleMap).forEach((x) => {
                lines?.forEach((line) => {
                    const regex = new RegExp(`require\(\"${x.replace(`/`, `\/`)}\"\)`, "g");

                    if(regex.test(line)){
                        line = line.replace(`require\(\"${x.replace(`/`, `\/`)}\"\)`,`require("${canonicalizeModuleName(moduleMap[x].resolvedfileName)}")`);
                    }
                });
            });
        }
        return lines?.join("\n");
    }
    return undefined;
}