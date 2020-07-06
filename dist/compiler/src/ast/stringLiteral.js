"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
function stringLiteral(val) {
    return {
        type: "StringLiteral",
        value: val,
        raw: "\"" + val + "\""
    };
}
exports.stringLiteral = stringLiteral;
