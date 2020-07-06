"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var sourceMapTraceBackCallStatementPredicate_1 = require("./sourceMapTraceBackCallStatementPredicate");
function findSourceMapTracebackCallStatement(statements) {
    return statements.find(function (x) {
        return sourceMapTraceBackCallStatementPredicate_1.sourceMapTraceBackCallStatementPredicate(x);
    });
}
exports.findSourceMapTracebackCallStatement = findSourceMapTracebackCallStatement;
