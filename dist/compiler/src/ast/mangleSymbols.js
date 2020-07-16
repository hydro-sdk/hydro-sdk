"use strict";
var __spreadArrays = (this && this.__spreadArrays) || function () {
    for (var s = 0, i = 0, il = arguments.length; i < il; i++) s += arguments[i].length;
    for (var r = Array(s), k = 0, i = 0; i < il; i++)
        for (var a = arguments[i], j = 0, jl = a.length; j < jl; j++, k++)
            r[k] = a[j];
    return r;
};
Object.defineProperty(exports, "__esModule", { value: true });
var hashText_1 = require("./hashText");
function mangleSymbols(symbols) {
    /*
        Inspired by Rust's name mangling https://github.com/rust-lang/rfcs/blob/master/text/2603-rust-symbol-name-mangling-v0.md
        Inspired by Itanium C++'s lambda name mangling https://itanium-cxx-abi.github.io/cxx-abi/abi.html
        We're starting from the assumption that we have zero type information from the source language and only have insight into the output Lua.
        We've taken some liberties given that we're attempting to provide reasonable mangling for a dynamic language.
        Function type information is completely ignored. Function arity, along with parameter names and declaration order is used to disambiguate otherwise identical functions
    */
    symbols.forEach(function (x) {
        var paramSuffix = x.parameterNames.length > 0 ? x.parameterNames.join("_") : "";
        x.symbolMangleName = "" + x.symbolName.replace(/\s/g, "_") + (paramSuffix ? "::" + paramSuffix : "");
    });
    symbols.sort(function (a, b) { return a.lineStart - b.lineStart; });
    /*
        This is effectively an extremely naive dominator analysis over the scopes of the functions in the current module.
        This will probably end up being a performance problem later.
    */
    var parentLevels = {};
    symbols.forEach(function (x) {
        var parents = new Array();
        symbols.forEach(function (k) {
            if (x.lineStart == k.lineStart &&
                x.lineEnd == k.lineEnd &&
                x.columnStart == k.columnStart &&
                x.columnEnd == k.columnEnd) {
                return;
            }
            if (k.lineStart <= x.lineStart && k.lineEnd >= x.lineEnd) {
                parents.push(k);
            }
        });
        if (!parentLevels[parents.length]) {
            parentLevels[parents.length] = [];
        }
        parentLevels[parents.length] = __spreadArrays(parentLevels[parents.length], [
            {
                symbol: x,
                parents: parents,
            }
        ]);
    });
    var symbolsWithParents = new Array();
    Object.keys(parentLevels).forEach(function (x) {
        parentLevels[parseInt(x)].forEach(function (k) {
            var inc = 0;
            parentLevels[parseInt(x)].forEach(function (j) {
                if (j.symbol.symbolMangleName == k.symbol.symbolMangleName) {
                    k.symbol.symbolDisambiguationIndex += 1;
                }
            });
            symbolsWithParents.push(k);
        });
    });
    symbolsWithParents.forEach(function (x) {
        // let parents = Object.keys(parentLevels).map((parent)=>{})
        var parentQualifiers = x.parents.map(function (e) { return e.symbolMangleName + "::" + e.symbolDisambiguationIndex; }).join("::");
        x.symbol.symbolFullyQualifiedMangleName = "_L" + hashText_1.hashText(x.symbol.originalFileName) + (parentQualifiers ? "::" + parentQualifiers : "") + "::" + x.symbol.symbolMangleName + "::" + x.symbol.symbolDisambiguationIndex;
    });
    // symbols.forEach((x) => {
    //     let inc = 0;
    //     symbols.forEach((k) => {
    //         if (k.symbolFullyQualifiedMangleName == x.symbolFullyQualifiedMangleName) {
    // k.symbolFullyQualifiedMangleName += `::${inc}`;
    //             inc += 1;
    //         }
    //     });
    // });
}
exports.mangleSymbols = mangleSymbols;
