import * as lparse from "luaparse";
import { ModuleDebugInfo } from "./moduleDebugInfo";
import { extractFullyQualifiedFunctionName } from "./extractFullyQualifiedFunctionName";

export function findModuleDebugInfo(props: {
    originalFileName: string,
    filename: string,
    fileContent: string,
}): Array<ModuleDebugInfo> {
    let res = new Array<ModuleDebugInfo>();

    let last = lparse.parse(props.fileContent, {
        comments: true,
        scope: true,
        locations: true,
        ranges: true
    });

    last.body.forEach((x) => {
        if (x.type == "FunctionDeclaration") {
            extract({
                exp: x,
                originalFileName: props.originalFileName,
                filename: props.filename,
                cont: res
            });
        }
    });

    return res;
}

function extract(props: {
    exp: lparse.FunctionDeclaration,
    originalFileName: string,
    filename: string,
    cont: Array<ModuleDebugInfo>
}): void {
    props.cont.push({
        lineStart: props.exp.loc?.start?.line ?? 0,
        lineEnd: props.exp.loc?.end?.line ?? 0,
        symbolName: extractFullyQualifiedFunctionName(props.exp),
        moduleName: "",
        fileName: props.filename,
        originalFileName: props.originalFileName,
        originalLineStart: 0,
        originalLineEnd: 0

    });
}