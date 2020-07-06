"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
function sourceMapTraceBackCallStatementPredicate(x) {
    if (x.type == "CallStatement") {
        if (x.expression.base.type == "Identifier") {
            if (x.expression.base.name == "__TS__SourceMapTraceBack") {
                return true;
            }
        }
    }
    return false;
}
exports.sourceMapTraceBackCallStatementPredicate = sourceMapTraceBackCallStatementPredicate;
