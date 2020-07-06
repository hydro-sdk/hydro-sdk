"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
function extractFullyQualifiedFunctionName(func) {
    var res = "";
    var cont = [];
    extract(func, cont);
    res = cont.join("");
    return res;
}
exports.extractFullyQualifiedFunctionName = extractFullyQualifiedFunctionName;
function extract(exp, cont) {
    switch (exp.type) {
        case "FunctionDeclaration":
            if (exp.identifier) {
                extract(exp.identifier, cont);
            }
            break;
        case "MemberExpression":
            if (exp.base && exp.base.type == "MemberExpression" || exp.base.type == "Identifier") {
                extract(exp.base, cont);
            }
            cont.push(exp.indexer);
            extract(exp.identifier, cont);
            break;
        case "Identifier":
            cont.push(exp.name);
            break;
    }
}
