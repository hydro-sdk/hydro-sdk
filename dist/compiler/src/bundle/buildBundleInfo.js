"use strict";
var __assign = (this && this.__assign) || function () {
    __assign = Object.assign || function(t) {
        for (var s, i = 1, n = arguments.length; i < n; i++) {
            s = arguments[i];
            for (var p in s) if (Object.prototype.hasOwnProperty.call(s, p))
                t[p] = s[p];
        }
        return t;
    };
    return __assign.apply(this, arguments);
};
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = op[0] & 2 ? y["return"] : op[0] ? y["throw"] || ((t = y["return"]) && t.call(y), 0) : y.next) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [op[0] & 2, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};
var __spreadArrays = (this && this.__spreadArrays) || function () {
    for (var s = 0, i = 0, il = arguments.length; i < il; i++) s += arguments[i].length;
    for (var r = Array(s), k = 0, i = 0; i < il; i++)
        for (var a = arguments[i], j = 0, jl = a.length; j < jl; j++, k++)
            r[k] = a[j];
    return r;
};
Object.defineProperty(exports, "__esModule", { value: true });
var fs = require("fs");
var path = require("path");
var ts = require("typescript");
var tstl = require("typescript-to-lua");
var findModuleDebugInfo_1 = require("../ast/findModuleDebugInfo");
var addOriginalMappings_1 = require("../ast/addOriginalMappings");
var makeRelativePath_1 = require("../makeRelativePath");
var LuaLib_1 = require("typescript-to-lua/dist/LuaLib");
var hashSourceFile_1 = require("../ast/hashSourceFile");
var hashText_1 = require("../ast/hashText");
var mangleSymbols_1 = require("../ast/mangleSymbols");
var process_1 = require("process");
function buildBundleInfo(buildOptions, oldBundleInfo) {
    return __awaiter(this, void 0, void 0, function () {
        var res, program, sourceFiles, oldEntries, sourceFilesToTranspile, concatDiagnostics, getFullDiagnostics, getIncrementalDiagnostics, transpiledFiles, _loop_1, _i, transpiledFiles_1, transpiledFile, lualiBundle;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    res = __assign(__assign({}, buildOptions), { entries: {}, diagnostics: [] });
                    program = ts.createProgram({
                        rootNames: [buildOptions.entry],
                        options: {
                            strict: true,
                            luaTarget: tstl.LuaTarget.Lua52,
                            luaLibImport: tstl.LuaLibImportKind.Require,
                            sourceMapTraceback: false,
                        }
                    });
                    sourceFiles = program.getSourceFiles().filter(function (x) { return !x.isDeclarationFile; });
                    oldEntries = oldBundleInfo ? oldBundleInfo.entries : undefined;
                    sourceFilesToTranspile = oldEntries ? sourceFiles.filter(function (x) { var _a, _b; return hashSourceFile_1.hashSourceFile(x) != ((_b = (_a = oldEntries[x.fileName]) === null || _a === void 0 ? void 0 : _a.originalFileHash) !== null && _b !== void 0 ? _b : ""); }) : sourceFiles;
                    console.log("Reused " + Math.abs(sourceFiles.length - sourceFilesToTranspile.length) + " inputs");
                    concatDiagnostics = function (newDiagnostics) {
                        return newDiagnostics && newDiagnostics.length ? res.diagnostics = __spreadArrays(res.diagnostics, newDiagnostics.map(function (x) { return x; })) : undefined;
                    };
                    getFullDiagnostics = function () {
                        var diagnostics = program.getSyntacticDiagnostics();
                        concatDiagnostics(diagnostics);
                        diagnostics = program.getSemanticDiagnostics();
                        concatDiagnostics(diagnostics);
                        diagnostics = program.getDeclarationDiagnostics();
                        concatDiagnostics(diagnostics);
                    };
                    getIncrementalDiagnostics = function () {
                        if (sourceFilesToTranspile.length > 0) {
                            for (var _i = 0, sourceFilesToTranspile_1 = sourceFilesToTranspile; _i < sourceFilesToTranspile_1.length; _i++) {
                                var sourceFile = sourceFilesToTranspile_1[_i];
                                var diagnostics = program.getSyntacticDiagnostics(sourceFile);
                                concatDiagnostics(diagnostics);
                                diagnostics = program.getSemanticDiagnostics(sourceFile);
                                concatDiagnostics(diagnostics);
                                diagnostics = program.getDeclarationDiagnostics(sourceFile);
                                concatDiagnostics(diagnostics);
                            }
                        }
                    };
                    if (sourceFilesToTranspile.length == 0) {
                        getIncrementalDiagnostics();
                    }
                    else {
                        getFullDiagnostics();
                    }
                    transpiledFiles = tstl.transpile({
                        program: program,
                        sourceFiles: sourceFilesToTranspile
                    }).transpiledFiles;
                    res.entries = oldEntries !== null && oldEntries !== void 0 ? oldEntries : {};
                    _loop_1 = function (transpiledFile) {
                        var debugInfo;
                        return __generator(this, function (_a) {
                            switch (_a.label) {
                                case 0:
                                    debugInfo = findModuleDebugInfo_1.findModuleDebugInfo({
                                        originalFileName: transpiledFile.fileName,
                                        filename: transpiledFile.fileName,
                                        fileContent: transpiledFile.lua
                                    });
                                    return [4 /*yield*/, addOriginalMappings_1.addOriginalMappings(debugInfo, transpiledFile)];
                                case 1:
                                    _a.sent();
                                    mangleSymbols_1.mangleSymbols(debugInfo);
                                    debugInfo.forEach(function (x) {
                                        debugInfo.forEach(function (k) {
                                            if (x.symbolFullyQualifiedMangleName == k.symbolFullyQualifiedMangleName &&
                                                x.originalLineStart != k.originalLineStart &&
                                                x.originalColumnStart != k.originalColumnStart) {
                                                console.log(x.symbolName + " and " + k.symbolName);
                                                console.log("Defined at " + x.originalFileName + ":" + x.lineStart + "," + x.originalColumnStart + " (" + x.lineStart + "," + x.columnStart + ")");
                                                console.log("and " + k.originalFileName + ":" + k.lineStart + "," + k.originalColumnStart + " (" + k.lineStart + "," + k.columnStart + ")");
                                                console.log("both mangled to the following: " + x.symbolFullyQualifiedMangleName);
                                                process_1.exit(1);
                                            }
                                        });
                                    });
                                    res.entries[transpiledFile.fileName] = {
                                        debugSymbols: debugInfo,
                                        moduleText: transpiledFile.lua,
                                        moduleName: "" + makeRelativePath_1.makeRelativePath(transpiledFile.fileName).split(path.sep).join(".").split(".ts")[0],
                                        originalFileName: transpiledFile.fileName,
                                        originalFileHash: hashSourceFile_1.hashSourceFile(sourceFilesToTranspile.find(function (x) { return x.fileName == transpiledFile.fileName; }))
                                    };
                                    return [2 /*return*/];
                            }
                        });
                    };
                    _i = 0, transpiledFiles_1 = transpiledFiles;
                    _a.label = 1;
                case 1:
                    if (!(_i < transpiledFiles_1.length)) return [3 /*break*/, 4];
                    transpiledFile = transpiledFiles_1[_i];
                    return [5 /*yield**/, _loop_1(transpiledFile)];
                case 2:
                    _a.sent();
                    _a.label = 3;
                case 3:
                    _i++;
                    return [3 /*break*/, 1];
                case 4:
                    if (!Object.values(res.entries).some(function (x) { return x.moduleName == "lualib_bundle"; })) {
                        lualiBundle = LuaLib_1.getLuaLibBundle({
                            getCurrentDirectory: function () { return ""; },
                            readFile: function (filePath) { return fs.readFileSync(filePath).toString(); }
                        });
                        res.entries["lualib_bundle"] = {
                            debugSymbols: findModuleDebugInfo_1.findModuleDebugInfo({
                                originalFileName: "lualib_bundle",
                                filename: "lualib_bundle",
                                fileContent: lualiBundle,
                            }),
                            moduleText: lualiBundle,
                            moduleName: "lualib_bundle",
                            originalFileName: "lualib_bundle",
                            originalFileHash: hashText_1.hashText(lualiBundle)
                        };
                    }
                    return [2 /*return*/, res];
            }
        });
    });
}
exports.buildBundleInfo = buildBundleInfo;
