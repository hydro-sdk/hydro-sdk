"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
function callExpression(identifier, args) {
    return {
        type: "CallExpression",
        base: identifier,
        arguments: args
    };
}
exports.callExpression = callExpression;
