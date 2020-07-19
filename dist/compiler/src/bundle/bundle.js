"use strict";
var __spreadArrays = (this && this.__spreadArrays) || function () {
    for (var s = 0, i = 0, il = arguments.length; i < il; i++) s += arguments[i].length;
    for (var r = Array(s), k = 0, i = 0; i < il; i++)
        for (var a = arguments[i], j = 0, jl = a.length; j < jl; j++, k++)
            r[k] = a[j];
    return r;
};
Object.defineProperty(exports, "__esModule", { value: true });
var bundlePrelude_1 = require("./bundlePrelude");
var findModuleDebugInfo_1 = require("../ast/findModuleDebugInfo");
var mangleSymbols_1 = require("../ast/mangleSymbols");
var hashText_1 = require("../ast/hashText");
function bundle(bundleInfo) {
    var _a, _b;
    //inspired by https://github.com/LuaDist/squish
    var res = {
        bundle: "",
        debugSymbols: []
    };
    var entry = Object.values(bundleInfo.entries).find(function (x) { return x.originalFileName == bundleInfo.entry; });
    if (entry) {
        var bundleEntries = Object.values(bundleInfo.entries).filter(function (x) { return x.originalFileName != bundleInfo.entry; });
        var bundleLines_1 = bundlePrelude_1.bundlePrelude.split(/\n/);
        bundleEntries.forEach(function (x) {
            bundleLines_1.push("package.preload[\"" + x.moduleName + "\"] = (function (...)");
            x.debugSymbols.forEach(function (dbg) {
                dbg.lineStart += bundleLines_1.length;
                dbg.lineEnd += bundleLines_1.length;
            });
            bundleLines_1.push.apply(bundleLines_1, x.moduleText.split(/\n/));
            bundleLines_1.push("end)");
        });
        entry.debugSymbols.forEach(function (dbg) {
            dbg.lineStart += bundleLines_1.length;
            dbg.lineEnd += bundleLines_1.length;
        });
        bundleLines_1.push.apply(bundleLines_1, entry.moduleText.split("\n"));
        res.bundle = bundleLines_1.join("\n");
        (_a = res.debugSymbols).push.apply(_a, __spreadArrays(bundleEntries.map(function (x) { return x.debugSymbols; }).reduce(function (a, b) { return a.concat(b); }), entry.debugSymbols));
        var mainChunkSymbols = findModuleDebugInfo_1.findModuleDebugInfo({
            originalFileName: "main_chunk",
            filename: "main_chunk",
            fileContent: res.bundle
        });
        mainChunkSymbols = mainChunkSymbols.filter(function (x) {
            return !res.debugSymbols.some(function (k) { return k.lineStart == x.lineStart && k.lineEnd == x.lineEnd; });
        }).filter(function (x, i, a) { return a.findIndex(function (k) { return (k.lineStart == x.lineStart && x.lineEnd == k.lineEnd); }) == i; });
        mangleSymbols_1.mangleSymbols(mainChunkSymbols, function (symbol) {
            return "main_chunk::" + hashText_1.hashText(bundleLines_1[symbol.lineStart - 1]);
        });
        (_b = res.debugSymbols).push.apply(_b, mainChunkSymbols);
    }
    return res;
}
exports.bundle = bundle;
