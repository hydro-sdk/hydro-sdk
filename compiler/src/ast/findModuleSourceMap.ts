import * as lparse from "luaparse";
import { findSourceMapTracebackCallStatement } from "./findSourceMapTracebackCallStatement";
import { FrameSourceMap } from "./frameSourceMap";

export function findModuleSourceMap(statements: Array<lparse.Statement>): Array<FrameSourceMap> {
    let res = new Array<FrameSourceMap>();

    const x = findSourceMapTracebackCallStatement(statements);

    if (x) {
        if (x.type == "CallStatement") {
            if (x.expression.base.type == "Identifier") {
                if (x.expression.type == "CallExpression") {
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