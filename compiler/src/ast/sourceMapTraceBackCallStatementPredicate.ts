import * as lparse from "luaparse";

export function sourceMapTraceBackCallStatementPredicate(x: lparse.Statement): boolean {
    if (x.type == "CallStatement") {
        if (x.expression.base.type == "Identifier") {
            if (x.expression.base.name == "__TS__SourceMapTraceBack") {
                return true;
            }
        }
    }
    return false;
}