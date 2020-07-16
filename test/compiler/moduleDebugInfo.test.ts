import * as fs from "fs";

import { LuaTarget, LuaLibImportKind, transpileString } from "typescript-to-lua";

import { findModuleDebugInfo } from "./../../compiler/src/ast/findModuleDebugInfo";
import { addOriginalMappings } from "./../../compiler/src/ast/addOriginalMappings";
import { mangleSymbols } from "./../../compiler/src/ast/mangleSymbols";

test("", async () => {
    const inFilename = "./runtime/dart/core/type.ts";
    const res = transpileString(fs.readFileSync(inFilename).toString(), {
        luaTarget: LuaTarget.Lua52,
        luaLibImport: LuaLibImportKind.Require,
        sourceMapTraceback: false
    });

    const debugInfo = findModuleDebugInfo({
        originalFileName: inFilename,
        filename: "runtime/dart/core/type.lua",
        fileContent: res.file!.lua!
    });

    await addOriginalMappings(debugInfo, res.file!);
    mangleSymbols(debugInfo);

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
        symbolDisambiguationIndex: 0,
        symbolFullyQualifiedMangleName: "_Le3ede029323dcd7a213e2c6dab9c8d7c0bcd93abaa90618f92060c5f4c00c23f::Type.prototype.____constructor::self_func::0",
        symbolMangleName: "Type.prototype.____constructor::self_func",
        symbolName: "Type.prototype.____constructor",
        parameterNames: [
            "self",
            "func"
        ],
    });

});

test("", async () => {
    const inFilename = "./test/widget/center-1.ts";
    const res = transpileString(fs.readFileSync(inFilename).toString(), {
        luaTarget: LuaTarget.Lua52,
        luaLibImport: LuaLibImportKind.Require,
        sourceMapTraceback: false
    });

    const debugInfo = findModuleDebugInfo({
        originalFileName: inFilename,
        filename: "test/widget/center-1.lua",
        fileContent: res.file!.lua!
    });

    await addOriginalMappings(debugInfo, res.file!);
    mangleSymbols(debugInfo);

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
        symbolDisambiguationIndex: 0,
        symbolFullyQualifiedMangleName: "_L1728e10e318df2f7feecdf58b1620146ca09c236de634fe98568ab8eebfce43c::anonymous_closure::0",
        symbolMangleName: "anonymous_closure",
        symbolName: "anonymous closure",
        parameterNames: [],

    });
});

test("", async () => {
    const inFilename = "./examples/counter/index.ts";
    const res = transpileString(fs.readFileSync(inFilename).toString(), {
        luaTarget: LuaTarget.Lua52,
        luaLibImport: LuaLibImportKind.Require,
        sourceMapTraceback: false
    });

    const debugInfo = findModuleDebugInfo({
        originalFileName: inFilename,
        filename: "examples/counter/index.lua",
        fileContent: res.file!.lua!
    });

    await addOriginalMappings(debugInfo, res.file!);
    mangleSymbols(debugInfo);

    expect(debugInfo.length).toEqual(9);
    expect(debugInfo[0]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 42,
        lineStart: 40,
        columnEnd: 3,
        columnStart: 0,
        moduleName: "",
        originalFileName: inFilename,
        originalLineStart: 23,
        originalColumnStart: 4,
        symbolDisambiguationIndex: 0,
        symbolFullyQualifiedMangleName: "_Laffb9944dc60d4a2ae46a1a49c2fd54e10f8eff497f213c94c07931a44eb2fb1::MyApp.prototype.____constructor::self::0",
        symbolMangleName: "MyApp.prototype.____constructor::self",
        symbolName: "MyApp.prototype.____constructor",
        parameterNames: [
            "self"
        ],
    });
    expect(debugInfo[1]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 52,
        lineStart: 43,
        columnEnd: 3,
        columnStart: 0,
        moduleName: "",
        originalFileName: inFilename,
        originalLineStart: 28,
        originalColumnStart: 4,
        symbolDisambiguationIndex: 0,
        symbolFullyQualifiedMangleName: "_Laffb9944dc60d4a2ae46a1a49c2fd54e10f8eff497f213c94c07931a44eb2fb1::MyApp.prototype.build::self::0",
        symbolMangleName: "MyApp.prototype.build::self",
        symbolName: "MyApp.prototype.build",
        parameterNames: [
            "self"
        ],
    });
    expect(debugInfo[2]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 59,
        lineStart: 56,
        columnEnd: 3,
        columnStart: 0,
        moduleName: "",
        originalFileName: inFilename,
        originalLineStart: 41,
        originalColumnStart: 4,
        symbolDisambiguationIndex: 0,
        symbolFullyQualifiedMangleName: "_Laffb9944dc60d4a2ae46a1a49c2fd54e10f8eff497f213c94c07931a44eb2fb1::MyHomePage.prototype.____constructor::self_title::0",
        symbolMangleName: "MyHomePage.prototype.____constructor::self_title",
        symbolName: "MyHomePage.prototype.____constructor",
        parameterNames: [
            "self",
            "title"
        ],
    });
    expect(debugInfo[3]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 62,
        lineStart: 60,
        columnEnd: 3,
        columnStart: 0,
        moduleName: "",
        originalFileName: inFilename,
        originalLineStart: 46,
        originalColumnStart: 4,
        symbolDisambiguationIndex: 0,
        symbolMangleName: "MyHomePage.prototype.createState::self",
        symbolFullyQualifiedMangleName: "_Laffb9944dc60d4a2ae46a1a49c2fd54e10f8eff497f213c94c07931a44eb2fb1::MyHomePage.prototype.createState::self::0",
        symbolName: "MyHomePage.prototype.createState",
        parameterNames: [
            "self"
        ],

    });
    expect(debugInfo[4]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 77,
        lineStart: 66,
        columnEnd: 3,
        columnStart: 0,
        moduleName: "",
        originalFileName: inFilename,
        originalLineStart: 56,
        originalColumnStart: 4,
        symbolDisambiguationIndex: 0,
        symbolFullyQualifiedMangleName: "_Laffb9944dc60d4a2ae46a1a49c2fd54e10f8eff497f213c94c07931a44eb2fb1::MyHomePageState.prototype.____constructor::self_title::0",
        symbolMangleName: "MyHomePageState.prototype.____constructor::self_title",
        symbolName: "MyHomePageState.prototype.____constructor",
        parameterNames: [
            "self",
            "title",
        ],
    });
    expect(debugInfo[5]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 75,
        lineStart: 69,
        columnEnd: 7,
        columnStart: 28,
        moduleName: "",
        originalFileName: inFilename,
        originalLineStart: 62,
        originalColumnStart: 31,
        symbolDisambiguationIndex: 0,
        symbolFullyQualifiedMangleName: "_Laffb9944dc60d4a2ae46a1a49c2fd54e10f8eff497f213c94c07931a44eb2fb1::MyHomePageState.prototype.____constructor::self_title::0::anonymous_closure::0",
        symbolMangleName: "anonymous_closure",
        symbolName: "anonymous closure",
        parameterNames: []
    });
    expect(debugInfo[6]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 73,
        lineStart: 71,
        columnEnd: 15,
        columnStart: 12,
        moduleName: "",
        originalFileName: inFilename,
        originalLineStart: 64,
        originalColumnStart: 22,
        symbolDisambiguationIndex: 0,
        symbolFullyQualifiedMangleName: "_Laffb9944dc60d4a2ae46a1a49c2fd54e10f8eff497f213c94c07931a44eb2fb1::MyHomePageState.prototype.____constructor::self_title::0::anonymous_closure::0::anonymous_closure::0",
        symbolMangleName: "anonymous_closure",
        symbolName: "anonymous closure",
        parameterNames: []
    });
    expect(debugInfo[7]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 120,
        lineStart: 78,
        columnEnd: 3,
        columnStart: 0,
        moduleName: "",
        originalFileName: inFilename,
        originalLineStart: 70,
        originalColumnStart: 4,
        symbolDisambiguationIndex: 0,
        symbolFullyQualifiedMangleName: "_Laffb9944dc60d4a2ae46a1a49c2fd54e10f8eff497f213c94c07931a44eb2fb1::MyHomePageState.prototype.build::self_context::0",
        symbolMangleName: "MyHomePageState.prototype.build::self_context",
        symbolName: "MyHomePageState.prototype.build",
        parameterNames: [
            "self",
            "context",
        ]
    });
    expect(debugInfo[8]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 123,
        lineStart: 123,
        columnEnd: 42,
        columnStart: 4,
        moduleName: "",
        originalFileName: inFilename,
        originalLineStart: 100,
        originalColumnStart: 7,
        symbolDisambiguationIndex: 0,
        symbolFullyQualifiedMangleName: "_Laffb9944dc60d4a2ae46a1a49c2fd54e10f8eff497f213c94c07931a44eb2fb1::anonymous_closure::0",
        symbolMangleName: "anonymous_closure",
        symbolName: "anonymous closure",
        parameterNames: []
    });
});
