"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
function extractFunctionDeclarationArguments(func) {
    var res = new Array();
    func.parameters.forEach(function (x) {
        if (x.type == "Identifier") {
            res.push(x.name);
        }
        else if (x.type == "VarargLiteral") {
            res.push(x.value);
        }
    });
    return res;
}
exports.extractFunctionDeclarationArguments = extractFunctionDeclarationArguments;
