"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
function mangleSymbols(symbols) {
    symbols.forEach(function (x) {
        var paramSuffix = x.parameterNames.length > 0 ? x.parameterNames.join("_") : "";
        x.symbolMangleName = "" + x.symbolName + (paramSuffix ? "::" + paramSuffix : "");
    });
}
exports.mangleSymbols = mangleSymbols;
