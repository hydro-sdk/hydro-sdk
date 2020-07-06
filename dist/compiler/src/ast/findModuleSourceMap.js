"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var findSourceMapTracebackCallStatement_1 = require("./findSourceMapTracebackCallStatement");
function findModuleSourceMap(statements) {
    var res = new Array();
    var x = findSourceMapTracebackCallStatement_1.findSourceMapTracebackCallStatement(statements);
    if (x) {
        if (x.type == "CallStatement") {
            if (x.expression.base.type == "Identifier") {
                if (x.expression.type == "CallExpression") {
                    x.expression.arguments.forEach(function (k) {
                        if (k.type == "TableConstructorExpression") {
                            k.fields.forEach(function (f) {
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
exports.findModuleSourceMap = findModuleSourceMap;
