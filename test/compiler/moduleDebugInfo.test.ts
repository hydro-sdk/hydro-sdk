import * as fs from "fs";

import { LuaTarget, LuaLibImportKind, transpileString } from "typescript-to-lua";

import { findModuleDebugInfo } from "./../../compiler/src/ast/findModuleDebugInfo";
import { addOriginalMappings } from "./../../compiler/src/ast/addOriginalMappings";

test("",async () => {
    const inFilename = "./runtime/dart/core/type.ts";
    let res = transpileString(fs.readFileSync(inFilename).toString(), {
        luaTarget: LuaTarget.Lua52,
        luaLibImport: LuaLibImportKind.Require,
        sourceMapTraceback: false
    });

    const debugInfo = findModuleDebugInfo({
        originalFileName: inFilename,
        filename: "runtime/dart/core/type.lua",
        fileContent: res.file!.lua!
    });

    await addOriginalMappings(debugInfo, res);

    expect(debugInfo.length).toEqual(1);
    expect(debugInfo[0]).toEqual({
        fileName: "runtime/dart/core/type.lua",
        lineEnd: 9,
        lineStart: 7,
        columnEnd: 3,
        columnStart: 0,
        moduleName: "",
        originalFileName: "./runtime/dart/core/type.ts",
        originalLineStart: 4,
        originalColumnStart: 4,
        symbolName: "Type.prototype.____constructor"
    });

});

test("", async () => {
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

    await addOriginalMappings(debugInfo, res);

    expect(debugInfo.length).toEqual(1);
    expect(debugInfo[0]).toEqual({
        fileName: "test/widget/center-1.lua",
        lineEnd: 20,
        lineStart: 14,
        columnEnd: 9,
        columnStart: 4,
        moduleName: "",
        originalFileName: inFilename,
        originalLineStart: 7,
        originalColumnStart: 7,
        symbolName: "anonymous closure"
    });
});

test("",async () => {
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

    await addOriginalMappings(debugInfo, res);

    expect(debugInfo.length).toEqual(9);
    expect(debugInfo[0]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 42,
        lineStart: 40,
        columnEnd: 3,
        columnStart: 0,
        moduleName: "",
        originalFileName: inFilename,        
        originalLineStart: 0,
        originalColumnStart: 0,
        symbolName: "MyApp.prototype.____constructor"
    });
    expect(debugInfo[1]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 52,
        lineStart: 43,
        columnEnd: 3,
        columnStart: 0,
        moduleName: "",
        originalFileName: inFilename,
        originalLineStart: 0,
        originalColumnStart: 0,
        
        symbolName: "MyApp.prototype.build"
    });
    expect(debugInfo[2]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 59,
        lineStart: 56,
        columnEnd: 3,
        columnStart: 0,
        moduleName: "",
        originalFileName: inFilename,        
        originalLineStart: 0,
        originalColumnStart: 0,
        symbolName: "MyHomePage.prototype.____constructor"
    });
    expect(debugInfo[3]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 62,
        lineStart: 60,
        columnEnd: 3,
        columnStart: 0,
        moduleName: "",
        originalFileName: inFilename,
        originalLineStart: 0,
        originalColumnStart: 0,
        symbolName: "MyHomePage.prototype.createState"
    });
    expect(debugInfo[4]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 77,
        lineStart: 66,
        columnEnd: 3,
        columnStart: 0,
        moduleName: "",
        originalFileName: inFilename,
        originalLineStart: 0,
        originalColumnStart: 0,
        symbolName: "MyHomePageState.prototype.____constructor"
    });
    expect(debugInfo[5]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 75,
        lineStart: 69,
        columnEnd: 7,
        columnStart: 28,
        moduleName: "",
        originalFileName: inFilename,
        originalLineStart: 0,
        originalColumnStart: 0,
        symbolName: "anonymous closure"
    });
    expect(debugInfo[6]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 73,
        lineStart: 71,
        columnEnd: 15,
        columnStart: 12,
        moduleName: "",
        originalFileName: inFilename,
        originalLineStart: 0,
        originalColumnStart: 0,
        symbolName: "anonymous closure"
    });
    expect(debugInfo[7]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 120,
        lineStart: 78,
        columnEnd: 3,
        columnStart: 0,
        moduleName: "",
        originalFileName: inFilename,
        originalLineStart: 0,
        originalColumnStart: 0,
        symbolName: "MyHomePageState.prototype.build"
    });
    expect(debugInfo[8]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 123,
        lineStart: 123,
        columnEnd: 42,
        columnStart: 4,
        moduleName: "",
        originalFileName: inFilename,
        originalLineStart: 0,
        originalColumnStart: 0,
        symbolName: "anonymous closure"
    });
});
