import * as fs from "fs";

import { LuaTarget, LuaLibImportKind, transpileString } from "typescript-to-lua";
import * as lparse from "luaparse";
const lcodegen = require("luacodegen");

import { tableKey } from "./../../compiler/ast/tableKey";
import { stringLiteral } from "./../../compiler/ast/stringLiteral";
import { numericLiteral } from "./../../compiler/ast/numericLiteral";
import { tableConstructorExpression } from "./../../compiler/ast/tableConstructorExpression";
import {extractFullyQualifiedFunctionName} from "./../../compiler/ast/extractFullyQualifiedFunctionName";

interface FrameSourceMap {
    src: string;
    out: string;
}

function sourceMapTraceBackCallStatementPredicate(x: lparse.Statement): boolean {
    if (x.type == "CallStatement") {
        if (x.expression.base.type == "Identifier") {
            if (x.expression.base.name == "__TS__SourceMapTraceBack") {
                return true;
            }
        }
    }
    return false;
}

function findSourceMapTracebackCallStatement(statements: Array<lparse.Statement>): lparse.CallStatement | undefined {
    return statements.find((x) => {
        return sourceMapTraceBackCallStatementPredicate(x);
    }) as lparse.CallStatement;
}

function findModuleSourceMap(statements: Array<lparse.Statement>): Array<FrameSourceMap> {
    let res = new Array<FrameSourceMap>();

    const x = findSourceMapTracebackCallStatement(statements);

    if (x) {
        if (x.type == "CallStatement") {
            if (x.expression.base.type == "Identifier") {
                if (x.expression.type == "CallExpression") {
                    // console.log(x);
                    // console.log(x.expression.arguments);
                    // console.log(x.expression.arguments[1]);
                    // console.log((x.expression.arguments[1] as any).fields[0]);
                    x.expression.arguments.forEach((k) => {
                        if (k.type == "TableConstructorExpression") {
                            k.fields.forEach((f) => {
                                if (f.type == "TableKey") {
                                    if (f.key.type == "StringLiteral" && f.value.type == "NumericLiteral") {
                                        res.push({
                                            out: f.key.raw.replace(/"/g, ""),
                                            src: f.value.raw
                                        });
                                    }
                                }
                            });
                        }
                    });
                }
            }
        }
    }


    return res;
}

test("", () => {
    let res = transpileString(fs.readFileSync("./runtime/dart/core/type.ts").toString(), {
        luaTarget: LuaTarget.Lua52,
        luaLibImport: LuaLibImportKind.Require,
        sourceMapTraceback: true
    });

    let last = lparse.parse(res.file!.lua!, {
        comments: true,
        scope: true,
        locations: true,
        ranges: true
    });
    const moduleSourceMap = findModuleSourceMap(last.body);

    expect(moduleSourceMap[0]).toEqual({ out: "5", src: "1" });
    expect(moduleSourceMap[1]).toEqual({ out: "6", src: "1" });
    expect(moduleSourceMap[2]).toEqual({ out: "7", src: "1" });
    expect(moduleSourceMap[3]).toEqual({ out: "8", src: "4" });
    expect(moduleSourceMap[4]).toEqual({ out: "9", src: "6" });
    expect(moduleSourceMap[5]).toEqual({ out: "10", src: "4" });
});

test("", () => {
    let res = transpileString(fs.readFileSync("./runtime/dart/core/type.ts").toString(), {
        luaTarget: LuaTarget.Lua52,
        luaLibImport: LuaLibImportKind.Require,
        sourceMapTraceback: true
    });

    let last = lparse.parse(res.file!.lua!, {
        comments: true,
        scope: true,
        locations: true,
        ranges: true
    });

    last.body.forEach((x) => {
        if (x.type == "FunctionDeclaration") {
            expect(extractFullyQualifiedFunctionName(x)).toBe("Type.prototype.____constructor");

            x.body.unshift({
                type: "CallStatement",
                expression: {
                    type: "CallExpression",
                    base: {
                        type: "Identifier",
                        name: "__hydro__$framemap",
                    },
                    arguments: [
                        stringLiteral("runtime/dart/core/type.ts"),
                        tableConstructorExpression([
                            tableKey({ key: stringLiteral("5"), value: numericLiteral(1) })
                        ])
                    ]
                }
            });
        }
    });

    console.log(lcodegen(last));
}); 