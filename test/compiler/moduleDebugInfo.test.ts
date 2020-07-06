import * as fs from "fs";

import { LuaTarget, LuaLibImportKind, transpileString } from "typescript-to-lua";

import { findModuleDebugInfo } from "./../../compiler/src/ast/findModuleDebugInfo";

test("", () => {
    const inFilename = "./runtime/dart/core/type.ts";
    let res = transpileString(fs.readFileSync(inFilename).toString(), {
        luaTarget: LuaTarget.Lua52,
        luaLibImport: LuaLibImportKind.Require,
        sourceMapTraceback: false
    });

    console.log(res.file!.sourceMap);

    const debugInfo = findModuleDebugInfo({
        originalFileName: inFilename,
        filename: "runtime/dart/core/type.lua",
        fileContent: res.file!.lua!
    });

    expect(debugInfo.length).toEqual(1);
    expect(debugInfo[0]).toEqual({
        fileName: "runtime/dart/core/type.lua",
        lineEnd: 9,
        lineStart: 7,
        moduleName: "",
        originalFileName: "./runtime/dart/core/type.ts",
        originalLineEnd: 0,
        originalLineStart: 0,
        symbolName: "Type.prototype.____constructor"
    });

});

test("", () => {
    const inFilename = "./test/widget/center-1.ts";
    let res = transpileString(fs.readFileSync(inFilename).toString(), {
        luaTarget: LuaTarget.Lua52,
        luaLibImport: LuaLibImportKind.Require,
        sourceMapTraceback: false
    });

    const debugInfo = findModuleDebugInfo({
        originalFileName: inFilename,
        filename: "test/widget/center-1.lua",
        fileContent: res.file!.lua!
    });

    expect(debugInfo.length).toEqual(1);
    expect(debugInfo[0]).toEqual({
        fileName: "test/widget/center-1.lua",
        lineEnd: 20,
        lineStart: 14,
        moduleName: "",
        originalFileName: inFilename,
        originalLineEnd: 0,
        originalLineStart: 0,
        symbolName: "anonymous closure"
    });
});

test("", () => {
    const inFilename = "./examples/counter/index.ts";
    let res = transpileString(fs.readFileSync(inFilename).toString(), {
        luaTarget: LuaTarget.Lua52,
        luaLibImport: LuaLibImportKind.Require,
        sourceMapTraceback: false
    });

    const debugInfo = findModuleDebugInfo({
        originalFileName: inFilename,
        filename: "examples/counter/index.lua",
        fileContent: res.file!.lua!
    });

    expect(debugInfo.length).toEqual(9);
    expect(debugInfo[0]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 42,
        lineStart: 40,
        moduleName: "",
        originalFileName: inFilename,
        originalLineEnd: 0,
        originalLineStart: 0,
        symbolName: "MyApp.prototype.____constructor"
    });
    expect(debugInfo[1]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 52,
        lineStart: 43,
        moduleName: "",
        originalFileName: inFilename,
        originalLineEnd: 0,
        originalLineStart: 0,
        symbolName: "MyApp.prototype.build"
    });
    expect(debugInfo[2]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 59,
        lineStart: 56,
        moduleName: "",
        originalFileName: inFilename,
        originalLineEnd: 0,
        originalLineStart: 0,
        symbolName: "MyHomePage.prototype.____constructor"
    });
    expect(debugInfo[3]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 62,
        lineStart: 60,
        moduleName: "",
        originalFileName: inFilename,
        originalLineEnd: 0,
        originalLineStart: 0,
        symbolName: "MyHomePage.prototype.createState"
    });
    expect(debugInfo[4]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 77,
        lineStart: 66,
        moduleName: "",
        originalFileName: inFilename,
        originalLineEnd: 0,
        originalLineStart: 0,
        symbolName: "MyHomePageState.prototype.____constructor"
    });
    expect(debugInfo[5]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 75,
        lineStart: 69,
        moduleName: "",
        originalFileName: inFilename,
        originalLineEnd: 0,
        originalLineStart: 0,
        symbolName: "anonymous closure"
    });
    expect(debugInfo[6]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 73,
        lineStart: 71,
        moduleName: "",
        originalFileName: inFilename,
        originalLineEnd: 0,
        originalLineStart: 0,
        symbolName: "anonymous closure"
    });
    expect(debugInfo[7]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 120,
        lineStart: 78,
        moduleName: "",
        originalFileName: inFilename,
        originalLineEnd: 0,
        originalLineStart: 0,
        symbolName: "MyHomePageState.prototype.build"
    });
    expect(debugInfo[8]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 123,
        lineStart: 123,
        moduleName: "",
        originalFileName: inFilename,
        originalLineEnd: 0,
        originalLineStart: 0,
        symbolName: "anonymous closure"
    });
});
