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

type ExplorableNode = lparse.CallExpression |
    lparse.FunctionDeclaration |
    lparse.TableConstructorExpression |
    lparse.IfClause |
    lparse.IfStatement |
    lparse.LocalStatement |
    lparse.ForGenericStatement |
    lparse.AssignmentStatement;

function maybeNarrowNodeType(node: lparse.Base<string>): ExplorableNode | undefined {
    if (node.type == "CallExpression") {
        return node as lparse.CallExpression;
    } else if (node.type == "FunctionDeclaration") {
        return node as lparse.FunctionDeclaration;
    } else if (node.type == "TableConstructorExpression") {
        return node as lparse.TableConstructorExpression;
    } else if (node.type == "IfClause") {
        return node as lparse.IfClause;
    } else if (node.type == "IfStatement") {
        return node as lparse.IfStatement;
    } else if (node.type == "LocalStatement") {
        return node as lparse.LocalStatement;
    } else if (node.type == "ForGenericStatement") {
        return node as lparse.ForGenericStatement;
    } else if(node.type == "AssignmentStatement"){
        return node as lparse.AssignmentStatement;
    }
    return;
}

function findModuleDebugInfoInner(props: {
    originalFileName: string,
    filename: string,
    fileContent: string,
    last: lparse.Statement | ExplorableNode,
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
            if (maybeNarrowNodeType(k)) {
                findModuleDebugInfoInner({
                    ...props,
                    last: k as ExplorableNode
                });
            }
        });
    }
    if (props.last.type == "CallStatement") {
        if (props.log) {
            console.log(`CallStatement ${props.last.loc?.start?.line}`);
        }
        if (maybeNarrowNodeType(props.last.expression)) {
            findModuleDebugInfoInner({
                ...props,
                last: props.last.expression as ExplorableNode
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
            if (maybeNarrowNodeType(k)) {
                findModuleDebugInfoInner({
                    ...props,
                    last: k as ExplorableNode
                });
            }
        });
    }
    if (props.last.type == "CallExpression") {
        if (props.log) {
            console.log(`CallExpression ${props.last.loc?.start?.line}`);
        }
        props.last.arguments.forEach((k) => {
            if (maybeNarrowNodeType(k)) {
                findModuleDebugInfoInner({
                    ...props,
                    last: k as ExplorableNode
                });
            }
        });

        if (maybeNarrowNodeType(props.last.base)) {
            findModuleDebugInfoInner({
                ...props,
                last: props.last.base as ExplorableNode
            });
        }
    }
    if (props.last.type == "TableConstructorExpression") {
        if (props.log) {
            console.log(`TableConstructorExpression ${props.last.loc?.start?.line}`);
        }
        props.last.fields.forEach((k) => {
            if (k.type == "TableKeyString" || k.type == "TableValue") {
                if (maybeNarrowNodeType(k.value)) {
                    if (props.log) {
                        console.log(`${k.value.type} ${k.type == "TableKeyString" ? k.key.name : ""} ${k.loc?.start?.line}`);
                    }
                    findModuleDebugInfoInner({
                        ...props,
                        last: k.value as ExplorableNode
                    });
                }
            }
        });
    }
    if (props.last.type == "IfStatement") {
        props.last.clauses.forEach((k) => {
            if (maybeNarrowNodeType(k)) {
                findModuleDebugInfoInner({
                    ...props,
                    last: k as ExplorableNode
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
            if (maybeNarrowNodeType(k)) {
                findModuleDebugInfoInner({
                    ...props,
                    last: k as ExplorableNode
                });
            }
        });
    }
    if (props.last.type == "ForGenericStatement") {
        if (props.log) {
            console.log(`ForGenericStatement ${props.last.loc?.start?.line}`);
        }
        props.last.iterators.forEach((k) => {
            if (maybeNarrowNodeType(k)) {
                findModuleDebugInfoInner({
                    ...props,
                    last: k as ExplorableNode
                });
            }
        });
        props.last.body.forEach((k) => {
            if (maybeNarrowNodeType(k)) {
                findModuleDebugInfoInner({
                    ...props,
                    last: k as ExplorableNode
                });
            }
        })
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