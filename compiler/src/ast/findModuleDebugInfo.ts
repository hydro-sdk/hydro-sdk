import * as lparse from "luaparse";
import { ModuleDebugInfo } from "./moduleDebugInfo";
import { extractFullyQualifiedFunctionName } from "./extractFullyQualifiedFunctionName";
import { extractFunctionDeclarationArguments } from "./extractFunctionDeclarationArguments";

export function findModuleDebugInfo(props: {
    originalFileName: string,
    filename: string,
    fileContent: string,
    log?: boolean,
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
            cont: res,
            log: props.log,
        });
    });

    return res;
}

function findModuleDebugInfoInner(props: {
    originalFileName: string,
    filename: string,
    fileContent: string,
    last: lparse.Statement |
    lparse.CallExpression |
    lparse.TableConstructorExpression |
    lparse.IfClause |
    lparse.IfStatement |
    lparse.LocalStatement,
    cont: Array<ModuleDebugInfo>,
    log?: boolean
}) {
    if (props.last.type == "FunctionDeclaration") {
        extract({
            ...props,
            exp: props.last,
        });
        if (props.log) {
            console.log(`FunctionDeclaration ${props.last.loc?.start?.line}`);
        }
        props.last.body.forEach((k) => {
            findModuleDebugInfoInner({
                ...props,
                last: k
            });
        });
    }
    if (props.last.type == "ReturnStatement") {
        if (props.log) {
            console.log(`ReturnStatement ${props.last?.loc?.start?.line}`);
        }
        props.last.arguments.forEach((k) => {
            if (k.type == "CallExpression" || k.type == "FunctionDeclaration") {
                findModuleDebugInfoInner({
                    ...props,
                    last: k
                });
            }
        });
    }
    if (props.last.type == "CallStatement") {
        if (props.log) {
            console.log(`CallStatement ${props.last.loc?.start?.line}`);
        }
        if (props.last.expression.type == "CallExpression") {
            findModuleDebugInfoInner({
                ...props,
                last: props.last.expression
            });
        }
    }
    if (props.last.type == "AssignmentStatement") {
        if (props.log) {
            console.log(`AssignmentStatement ${props.last.loc?.start?.line}`);
        }
        extract({
            ...props,
            exp: props.last,
        });
        props.last.init.forEach((k) => {
            if (k.type == "FunctionDeclaration" || k.type == "TableConstructorExpression" || k.type == "CallExpression") {
                findModuleDebugInfoInner({
                    ...props,
                    last: k
                });
            }
        });
    }
    if (props.last.type == "CallExpression") {
        if (props.log) {
            console.log(`CallExpression ${props.last.loc?.start?.line}`);
        }
        props.last.arguments.forEach((k) => {
            if (k.type == "FunctionDeclaration" || k.type == "TableConstructorExpression") {
                findModuleDebugInfoInner({
                    ...props,
                    last: k
                });
            }
        });

        if (props.last.base.type == "FunctionDeclaration") {
            findModuleDebugInfoInner({
                ...props,
                last: props.last.base
            });
        }
    }
    if (props.last.type == "TableConstructorExpression") {
        if (props.log) {
            console.log(`TableConstructorExpression ${props.last.loc?.start?.line}`);
        }
        props.last.fields.forEach((k) => {
            if (k.type == "TableKeyString" || k.type == "TableValue") {
                if (k.value.type == "CallExpression" || k.value.type == "FunctionDeclaration" || k.value.type == "TableConstructorExpression") {
                    if (props.log) {
                        console.log(`${k.value.type} ${k.type == "TableKeyString" ? k.key.name : ""} ${k.loc?.start?.line}`);
                    }
                    findModuleDebugInfoInner({
                        ...props,
                        last: k.value
                    });
                }
            }
        });
    }
    if (props.last.type == "IfStatement") {
        props.last.clauses.forEach((k) => {
            if (k.type == "IfClause") {
                findModuleDebugInfoInner({
                    ...props,
                    last: k
                });
            }
        });
    }
    if (props.last.type == "IfClause") {
        props.last.body.forEach((k) => {
            findModuleDebugInfoInner({
                ...props,
                last: k
            });
        });
    }
    if (props.last.type == "LocalStatement") {
        props.last.init.forEach((k) => {
            if (k.type == "CallExpression" || k.type == "FunctionDeclaration" || k.type == "TableConstructorExpression") {
                findModuleDebugInfoInner({
                    ...props,
                    last: k
                });
            }
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
            parameterNames:
                props.exp.type == "FunctionDeclaration" ?
                    extractFunctionDeclarationArguments(props.exp) : [],
            symbolDisambiguationIndex: 0,

        });
    }
}