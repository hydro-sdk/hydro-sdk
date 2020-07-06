"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
function numericLiteral(val) {
    return {
        type: "NumericLiteral",
        value: val,
        raw: val.toString()
    };
}
exports.numericLiteral = numericLiteral;
