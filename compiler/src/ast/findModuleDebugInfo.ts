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
        ranges: true,
        luaVersion: "5.2"
    });

    last.body.forEach((x) => {
        findModuleDebugInfoInner({
            ...props,
            last: x,
            cont: res
        });
    });

    return res;
}

function findModuleDebugInfoInner(props: {
    originalFileName: string,
    filename: string,
    fileContent: string,
    last: lparse.Statement,
    cont: Array<ModuleDebugInfo>
}) {
    if (props.last.type == "FunctionDeclaration") {
        extract({
            ...props,
            exp: props.last,
        });
        props.last.body.forEach((k) => {
            findModuleDebugInfoInner({
                ...props,
                last: k
            });
        });
    }
    if (props.last.type == "CallStatement") {
        if (props.last.expression.type == "CallExpression") {
            props.last.expression.arguments.forEach((k) => {
                if (k.type == "FunctionDeclaration") {
                    extract({
                        ...props,
                        exp: k,
                    });
                }
            });
        }
    }
    if (props.last.type == "AssignmentStatement") {
        extract({
            ...props,
            exp: props.last,
        });
    }
}

function extract(props: {
    exp: lparse.FunctionDeclaration | lparse.MemberExpression | lparse.AssignmentStatement,
    originalFileName: string,
    filename: string,
    fileContent: string,
    cont: Array<ModuleDebugInfo>
}): void {
    if (props.exp.type == "AssignmentStatement") {
        if (props.exp.init[0].type == "FunctionDeclaration") {
            findModuleDebugInfoInner({
                ...props,
                last: props.exp.init[0],

            });
        }
    }
    if (props.exp.type == "FunctionDeclaration" || props.exp.type == "MemberExpression") {
        props.cont.push({
            lineStart: props.exp.loc?.start?.line ?? 0,
            lineEnd: props.exp.loc?.end?.line ?? 0,
            columnStart: props.exp.loc?.start?.column ?? 0,
            columnEnd: props.exp.loc?.end?.column ?? 0,
            symbolName: extractFullyQualifiedFunctionName(props.exp),
            moduleName: "",
            fileName: props.filename,
            originalFileName: props.originalFileName,
            originalLineStart: 0,
            originalColumnStart: 0,
        });
    }
}