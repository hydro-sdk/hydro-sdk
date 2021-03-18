import * as lparse from "luaparse";
import { LogEventType } from "../logEvent";
import { LogMgr } from "../logMgr";

import { extractFullyQualifiedFunctionName } from "./extractFullyQualifiedFunctionName";
import { extractFunctionDeclarationArguments } from "./extractFunctionDeclarationArguments";
import { ModuleDebugInfo } from "./moduleDebugInfo";

export function findModuleDebugInfo(props: {
    originalFileName: string;
    filename: string;
    fileContent: string;
    logMgr: LogMgr,
    log?: boolean;
}): Array<ModuleDebugInfo> {
    let res = new Array<ModuleDebugInfo>();

    let last = lparse.parse(props.fileContent, {
        comments: true,
        scope: true,
        locations: true,
        ranges: true,
        luaVersion: "5.2",
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

type ExplorableNode =
    | lparse.CallExpression
    | lparse.CallStatement
    | lparse.FunctionDeclaration
    | lparse.TableConstructorExpression
    | lparse.IfClause
    | lparse.IfStatement
    | lparse.LocalStatement
    | lparse.ForGenericStatement
    | lparse.AssignmentStatement
    | lparse.UnaryExpression
    | lparse.LogicalExpression
    | lparse.TableKeyString
    | lparse.TableValue
    | lparse.MemberExpression
    | lparse.IfStatement
    | lparse.IfClause
    | lparse.ElseifClause
    | lparse.ElseClause
    | lparse.BinaryExpression
    | lparse.DoStatement;

function maybeNarrowNodeType(
    node: lparse.Base<string>
): ExplorableNode | undefined {
    if (node.type == "CallExpression") {
        return node as lparse.CallExpression;
    } else if (node.type == "CallStatement") {
        return node as lparse.CallStatement;
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
    } else if (node.type == "AssignmentStatement") {
        return node as lparse.AssignmentStatement;
    } else if (node.type == "UnaryExpression") {
        return node as lparse.UnaryExpression;
    } else if (node.type == "LogicalExpression") {
        return node as lparse.LogicalExpression;
    } else if (node.type == "TableKeyString") {
        return node as lparse.TableKeyString;
    } else if (node.type == "TableValue") {
        return node as lparse.TableValue;
    } else if (node.type == "MemberExpression") {
        return node as lparse.MemberExpression;
    } else if (node.type == "IfStatement") {
        return node as lparse.IfStatement;
    } else if (node.type == "IfClause") {
        return node as lparse.IfClause;
    } else if (node.type == "ElseifClause") {
        return node as lparse.ElseifClause;
    } else if (node.type == "ElseClause") {
        return node as lparse.ElseClause;
    } else if (node.type == "BinaryExpression") {
        return node as lparse.BinaryExpression;
    } else if (node.type == "DoStatement") {
        return node as lparse.DoStatement;
    }
    return;
}

function findModuleDebugInfoInner(props: {
    originalFileName: string;
    filename: string;
    fileContent: string;
    last: lparse.Statement | ExplorableNode;
    cont: Array<ModuleDebugInfo>;
    logMgr: LogMgr,
    log?: boolean;
}) {
    if (props.last.type == "FunctionDeclaration") {
        if (props.log) {
            props.logMgr.log({
                event: {
                    logEventType: LogEventType.diagnostic,
                    message:
                        `FunctionDeclaration ${props.last.loc?.start?.line}`
                }
            });
        }
        extract({
            ...props,
            exp: props.last,
        });
        props.last.body.forEach((k) => {
            findModuleDebugInfoInner({
                ...props,
                last: k,
            });
        });
    }
    if (props.last.type == "ReturnStatement") {
        if (props.log) {
            props.logMgr.log({
                event: {
                    logEventType: LogEventType.diagnostic,
                    message: `ReturnStatement ${props.last?.loc?.start?.line}`
                }
            });
        }
        props.last.arguments.forEach((k) => {
            if (maybeNarrowNodeType(k)) {
                findModuleDebugInfoInner({
                    ...props,
                    last: k as ExplorableNode,
                });
            }
        });
    }
    if (props.last.type == "CallStatement") {
        if (props.log) {
            props.logMgr.log({
                event: {
                    logEventType: LogEventType.diagnostic,
                    message: `CallStatement ${props.last.loc?.start?.line}`
                }
            });
        }
        if (maybeNarrowNodeType(props.last.expression)) {
            findModuleDebugInfoInner({
                ...props,
                last: props.last.expression as ExplorableNode,
            });
        }
    }
    if (props.last.type == "AssignmentStatement") {
        if (props.log) {
            props.logMgr.log({
                event: {
                    logEventType: LogEventType.diagnostic,
                    message: `AssignmentStatement ${props.last.loc?.start?.line}`
                }
            });
        }
        extract({
            ...props,
            exp: props.last,
        });
        props.last.init.forEach((k) => {
            if (maybeNarrowNodeType(k)) {
                findModuleDebugInfoInner({
                    ...props,
                    last: k as ExplorableNode,
                });
            }
        });
    }
    if (props.last.type == "CallExpression") {
        if (props.log) {
            props.logMgr.log({
                event: {
                    logEventType: LogEventType.diagnostic,
                    message: `CallExpression ${props.last.loc?.start?.line}`
                }
            });
        }
        props.last.arguments.forEach((k) => {
            if (maybeNarrowNodeType(k)) {
                findModuleDebugInfoInner({
                    ...props,
                    last: k as ExplorableNode,
                });
            }
        });

        if (maybeNarrowNodeType(props.last.base)) {
            findModuleDebugInfoInner({
                ...props,
                last: props.last.base as ExplorableNode,
            });
        }
    }
    if (props.last.type == "TableConstructorExpression") {
        if (props.log) {
            props.logMgr.log({
                event: {
                    logEventType: LogEventType.diagnostic,
                    message:
                        `TableConstructorExpression ${props.last.loc?.start?.line}`
                }
            });
        }
        props.last.fields.forEach((k) => {
            if (maybeNarrowNodeType(k)) {
                findModuleDebugInfoInner({
                    ...props,
                    last: k as ExplorableNode,
                });
            }
        });
    }
    if (props.last.type == "IfStatement") {
        props.last.clauses.forEach((k) => {
            if (maybeNarrowNodeType(k)) {
                findModuleDebugInfoInner({
                    ...props,
                    last: k as ExplorableNode,
                });
            }
        });
    }
    if (props.last.type == "IfClause") {
        props.last.body.forEach((k) => {
            findModuleDebugInfoInner({
                ...props,
                last: k,
            });
        });

        if (maybeNarrowNodeType(props.last.condition)) {
            findModuleDebugInfoInner({
                ...props,
                last: props.last.condition as ExplorableNode,
            });
        }
    }
    if (props.last.type == "LocalStatement") {
        props.last.init.forEach((k) => {
            if (maybeNarrowNodeType(k)) {
                findModuleDebugInfoInner({
                    ...props,
                    last: k as ExplorableNode,
                });
            }
        });
    }
    if (props.last.type == "ForGenericStatement") {
        if (props.log) {
            props.logMgr.log({
                event: {
                    logEventType: LogEventType.diagnostic,
                    message: `ForGenericStatement ${props.last.loc?.start?.line}`
                }
            });
        }
        props.last.iterators.forEach((k) => {
            if (maybeNarrowNodeType(k)) {
                findModuleDebugInfoInner({
                    ...props,
                    last: k as ExplorableNode,
                });
            }
        });
        props.last.body.forEach((k) => {
            if (maybeNarrowNodeType(k)) {
                findModuleDebugInfoInner({
                    ...props,
                    last: k as ExplorableNode,
                });
            }
        });
    }
    if (props.last.type == "UnaryExpression") {
        if (props.log) {
            props.logMgr.log({
                event: {
                    logEventType: LogEventType.diagnostic,
                    message: `UnaryExpression ${props.last.loc?.start?.line}`
                }
            });
        }
        if (props.last.operator == "not") {
            if (maybeNarrowNodeType(props.last.argument)) {
                findModuleDebugInfoInner({
                    ...props,
                    last: props.last.argument as ExplorableNode,
                });
            }
        }
    }
    if (props.last.type == "LogicalExpression") {
        if (props.log) {
            props.logMgr.log({
                event: {
                    logEventType: LogEventType.diagnostic,
                    message: `LogicalExpression ${props.last.loc?.start?.line}`
                }
            });
        }
        if (props.last.operator == "and") {
            if (maybeNarrowNodeType(props.last.left)) {
                findModuleDebugInfoInner({
                    ...props,
                    last: props.last.left as ExplorableNode,
                });
            }
            if (maybeNarrowNodeType(props.last.right)) {
                findModuleDebugInfoInner({
                    ...props,
                    last: props.last.right as ExplorableNode,
                });
            }
        }
        if (props.last.operator == "or") {
            if (maybeNarrowNodeType(props.last.left)) {
                findModuleDebugInfoInner({
                    ...props,
                    last: props.last.left as ExplorableNode,
                });
            }
            if (maybeNarrowNodeType(props.last.right)) {
                findModuleDebugInfoInner({
                    ...props,
                    last: props.last.right as ExplorableNode,
                });
            }
        }
    }
    if (props.last.type == "TableKeyString") {
        if (props.log) {
            props.logMgr.log({
                event: {
                    logEventType: LogEventType.diagnostic,
                    message: `TableKeyString ${props.last.loc?.start?.line}`
                }
            });
        }
        if (maybeNarrowNodeType(props.last.value)) {
            findModuleDebugInfoInner({
                ...props,
                last: props.last.value as ExplorableNode,
            });
        }
    }
    if (props.last.type == "TableValue") {
        if (props.log) {
            props.logMgr.log({
                event: {
                    logEventType: LogEventType.diagnostic,
                    message: `TableValue ${props.last.loc?.start?.line}`
                }
            });
        }
        if (maybeNarrowNodeType(props.last.value)) {
            findModuleDebugInfoInner({
                ...props,
                last: props.last.value as ExplorableNode,
            });
        }
    }
    if (props.last.type == "MemberExpression") {
        if (props.log) {
            props.logMgr.log({
                event: {
                    logEventType: LogEventType.diagnostic,
                    message: `MemberExpression ${props.last.loc?.start?.line}`
                }
            });
        }
        if (maybeNarrowNodeType(props.last.base)) {
            findModuleDebugInfoInner({
                ...props,
                last: props.last.base as ExplorableNode,
            });
        }
    }

    if (props.last.type == "IfClause") {
        if (props.log) {
            props.logMgr.log({
                event: {
                    logEventType: LogEventType.diagnostic,
                    message: `IfClause ${props.last.loc?.start?.line}`
                }
            });
        }

        if (maybeNarrowNodeType(props.last.condition)) {
            findModuleDebugInfoInner({
                ...props,
                last: props.last.condition as ExplorableNode,
            });
        }

        props.last.body.forEach((k) => {
            if (maybeNarrowNodeType(k)) {
                findModuleDebugInfoInner({
                    ...props,
                    last: k as ExplorableNode,
                });
            }
        });
    }

    if (props.last.type == "ElseifClause") {
        if (props.log) {
            props.logMgr.log({
                event: {
                    logEventType: LogEventType.diagnostic,
                    message: `ElseifClause ${props.last.loc?.start?.line}`
                }
            });
        }

        if (maybeNarrowNodeType(props.last.condition)) {
            findModuleDebugInfoInner({
                ...props,
                last: props.last.condition as ExplorableNode,
            });
        }

        props.last.body.forEach((k) => {
            if (maybeNarrowNodeType(k)) {
                findModuleDebugInfoInner({
                    ...props,
                    last: k as ExplorableNode,
                });
            }
        });
    }

    if (props.last.type == "ElseClause") {
        if (props.log) {
            props.logMgr.log({
                event: {
                    logEventType: LogEventType.diagnostic,
                    message: `ElseClause ${props.last.loc?.start?.line}`
                }
            });
        }

        props.last.body.forEach((k) => {
            if (maybeNarrowNodeType(k)) {
                findModuleDebugInfoInner({
                    ...props,
                    last: k as ExplorableNode,
                });
            }
        });
    }

    if (props.last.type == "BinaryExpression") {
        if (props.log) {
            props.logMgr.log({
                event: {
                    logEventType: LogEventType.diagnostic,
                    message: `BinaryExpression ${props.last.loc?.start?.line}`
                }
            });
        }

        if (maybeNarrowNodeType(props.last.left)) {
            findModuleDebugInfoInner({
                ...props,
                last: props.last.left as ExplorableNode,
            });
        }

        if (maybeNarrowNodeType(props.last.right)) {
            findModuleDebugInfoInner({
                ...props,
                last: props.last.right as ExplorableNode,
            });
        }
    }

    if (props.last.type == "DoStatement") {
        if (props.log) {
            props.logMgr.log({
                event: {
                    logEventType: LogEventType.diagnostic,
                    message: `DoStatement ${props.last.loc?.start?.line}`
                }
            });
        }

        props.last.body.forEach((k) => {
            if (maybeNarrowNodeType(k)) {
                findModuleDebugInfoInner({
                    ...props,
                    last: k as ExplorableNode,
                });
            }
        });
    }
}

function extract(props: {
    exp:
    | lparse.FunctionDeclaration
    | lparse.MemberExpression
    | lparse.AssignmentStatement;
    originalFileName: string;
    filename: string;
    fileContent: string;
    logMgr: LogMgr,
    cont: Array<ModuleDebugInfo>;
}): void {
    if (props.exp.type == "AssignmentStatement") {
        if (props.exp.init[0].type == "FunctionDeclaration") {
            findModuleDebugInfoInner({
                ...props,
                last: props.exp.init[0],
            });
        }
    }
    if (
        props.exp.type == "FunctionDeclaration" ||
        props.exp.type == "MemberExpression"
    ) {
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
                props.exp.type == "FunctionDeclaration"
                    ? extractFunctionDeclarationArguments(props.exp)
                    : [],
            symbolDisambiguationIndex: 0,
        });
    }
}
