"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
function callStatement(expression) {
    return {
        type: "CallStatement",
        expression: expression
    };
}
exports.callStatement = callStatement;
