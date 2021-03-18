import * as fs from "fs";

import {
    LuaLibImportKind,
    LuaTarget,
    transpileString,
} from "typescript-to-lua";
import { LoggingBehaviour } from "../../sdk-tools/ts2hc/src/loggingBehaviour";
import { LogMgr } from "../../sdk-tools/ts2hc/src/logMgr";

import { addOriginalMappings } from "./../../sdk-tools/ts2hc/src/ast/addOriginalMappings";
import { findModuleDebugInfo } from "./../../sdk-tools/ts2hc/src/ast/findModuleDebugInfo";
import { mangleSymbols } from "./../../sdk-tools/ts2hc/src/ast/mangleSymbols";

test("", async () => {
    const inFilename = "./runtime/dart/core/type.ts";
    const res = transpileString(fs.readFileSync(inFilename).toString(), {
        luaTarget: LuaTarget.Lua52,
        luaLibImport: LuaLibImportKind.Require,
        sourceMapTraceback: false,
    });

    const debugInfo = findModuleDebugInfo({
        originalFileName: inFilename,
        filename: "runtime/dart/core/type.lua",
        fileContent: res.file!.lua!,
        logMgr: new LogMgr({ loggingBehaviour: LoggingBehaviour.stdout }),
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
        originalLineStart: 3,
        originalColumnStart: 4,
        symbolDisambiguationIndex: 0,
        symbolFullyQualifiedMangleName:
            "_Le3ede029323dcd7a213e2c6dab9c8d7c0bcd93abaa90618f92060c5f4c00c23f::Type.prototype.____constructor::self_func::0",
        symbolMangleName: "Type.prototype.____constructor::self_func",
        symbolName: "Type.prototype.____constructor",
        parameterNames: ["self", "func"],
    });
});

test("", async () => {
    const inFilename = "./test/widget/center-1.ts";
    const res = transpileString(fs.readFileSync(inFilename).toString(), {
        luaTarget: LuaTarget.Lua52,
        luaLibImport: LuaLibImportKind.Require,
        sourceMapTraceback: false,
    });

    const debugInfo = findModuleDebugInfo({
        originalFileName: inFilename,
        filename: "test/widget/center-1.lua",
        fileContent: res.file!.lua!,
        logMgr: new LogMgr({ loggingBehaviour: LoggingBehaviour.stdout }),
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
        originalColumnStart: 4,
        symbolDisambiguationIndex: 0,
        symbolFullyQualifiedMangleName:
            "_L1728e10e318df2f7feecdf58b1620146ca09c236de634fe98568ab8eebfce43c::anonymous_closure::0",
        symbolMangleName: "anonymous_closure",
        symbolName: "anonymous closure",
        parameterNames: [],
    });
});

test("", async () => {
    const inFilename = "./examples/counter/counterApp.ts";
    const res = transpileString(fs.readFileSync(inFilename).toString(), {
        luaTarget: LuaTarget.Lua52,
        luaLibImport: LuaLibImportKind.Require,
        sourceMapTraceback: false,
    });

    const debugInfo = findModuleDebugInfo({
        originalFileName: inFilename,
        filename: "examples/counter/index.lua",
        fileContent: res.file!.lua!,
        logMgr: new LogMgr({ loggingBehaviour: LoggingBehaviour.stdout }),
    });

    await addOriginalMappings(debugInfo, res.file!);
    mangleSymbols(debugInfo);

    expect(debugInfo.length).toEqual(12);
    expect(debugInfo[0]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 41,
        lineStart: 39,
        columnEnd: 3,
        columnStart: 0,
        moduleName: "",
        originalFileName: inFilename,
        originalLineStart: 20,
        originalColumnStart: 4,
        symbolDisambiguationIndex: 0,
        symbolFullyQualifiedMangleName:
            "_L79542b31fcdb1120e5bf9db0e427255da02dd603888fc2e66406a792f9d5fd4f::CounterApp.prototype.____constructor::self::0",
        symbolMangleName: "CounterApp.prototype.____constructor::self",
        symbolName: "CounterApp.prototype.____constructor",
        parameterNames: ["self"],
    });
    expect(debugInfo[1]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 51,
        lineStart: 42,
        columnEnd: 3,
        columnStart: 0,
        moduleName: "",
        originalFileName: inFilename,
        originalLineStart: 24,
        originalColumnStart: 4,
        symbolDisambiguationIndex: 0,
        symbolFullyQualifiedMangleName:
            "_L79542b31fcdb1120e5bf9db0e427255da02dd603888fc2e66406a792f9d5fd4f::CounterApp.prototype.build::self::0",
        symbolMangleName: "CounterApp.prototype.build::self",
        symbolName: "CounterApp.prototype.build",
        parameterNames: ["self"],
    });
    expect(debugInfo[2]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 58,
        lineStart: 55,
        columnEnd: 3,
        columnStart: 0,
        moduleName: "",
        originalFileName: inFilename,
        originalLineStart: 35,
        originalColumnStart: 4,
        symbolDisambiguationIndex: 0,
        symbolFullyQualifiedMangleName:
            "_L79542b31fcdb1120e5bf9db0e427255da02dd603888fc2e66406a792f9d5fd4f::MyHomePage.prototype.____constructor::self_title::0",
        symbolMangleName: "MyHomePage.prototype.____constructor::self_title",
        symbolName: "MyHomePage.prototype.____constructor",
        parameterNames: ["self", "title"],
    });
    expect(debugInfo[3]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 61,
        lineStart: 59,
        columnEnd: 3,
        columnStart: 0,
        moduleName: "",
        originalFileName: inFilename,
        originalLineStart: 39,
        originalColumnStart: 4,
        symbolDisambiguationIndex: 0,
        symbolMangleName: "MyHomePage.prototype.createState::self",
        symbolFullyQualifiedMangleName:
            "_L79542b31fcdb1120e5bf9db0e427255da02dd603888fc2e66406a792f9d5fd4f::MyHomePage.prototype.createState::self::0",
        symbolName: "MyHomePage.prototype.createState",
        parameterNames: ["self"],
    });
    expect(debugInfo[4]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 76,
        lineStart: 65,
        columnEnd: 3,
        columnStart: 0,
        moduleName: "",
        originalFileName: inFilename,
        originalLineStart: 47,
        originalColumnStart: 4,
        symbolDisambiguationIndex: 0,
        symbolFullyQualifiedMangleName:
            "_L79542b31fcdb1120e5bf9db0e427255da02dd603888fc2e66406a792f9d5fd4f::MyHomePageState.prototype.____constructor::self_title::0",
        symbolMangleName:
            "MyHomePageState.prototype.____constructor::self_title",
        symbolName: "MyHomePageState.prototype.____constructor",
        parameterNames: ["self", "title"],
    });
    expect(debugInfo[5]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 74,
        lineStart: 68,
        columnEnd: 7,
        columnStart: 28,
        moduleName: "",
        originalFileName: inFilename,
        originalLineStart: 52,
        originalColumnStart: 31,
        symbolDisambiguationIndex: 0,
        symbolFullyQualifiedMangleName:
            "_L79542b31fcdb1120e5bf9db0e427255da02dd603888fc2e66406a792f9d5fd4f::MyHomePageState.prototype.____constructor::self_title::0::anonymous_closure::0",
        symbolMangleName: "anonymous_closure",
        symbolName: "anonymous closure",
        parameterNames: [],
    });
    expect(debugInfo[6]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 74,
        lineStart: 68,
        columnEnd: 7,
        columnStart: 28,
        moduleName: "",
        originalFileName: inFilename,
        originalLineStart: 52,
        originalColumnStart: 31,
        symbolDisambiguationIndex: 0,
        symbolFullyQualifiedMangleName:
            "_L79542b31fcdb1120e5bf9db0e427255da02dd603888fc2e66406a792f9d5fd4f::MyHomePageState.prototype.____constructor::self_title::0::anonymous_closure::0",
        symbolMangleName: "anonymous_closure",
        symbolName: "anonymous closure",
        parameterNames: [],
    });
    expect(debugInfo[7]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 72,
        lineStart: 70,
        columnEnd: 15,
        columnStart: 12,
        moduleName: "",
        originalFileName: inFilename,
        originalLineStart: 53,
        originalColumnStart: 22,
        symbolDisambiguationIndex: 0,
        symbolFullyQualifiedMangleName:
            "_L79542b31fcdb1120e5bf9db0e427255da02dd603888fc2e66406a792f9d5fd4f::MyHomePageState.prototype.____constructor::self_title::0::anonymous_closure::0::anonymous_closure::0::anonymous_closure::0",
        symbolMangleName: "anonymous_closure",
        symbolName: "anonymous closure",
        parameterNames: [],
    });
    expect(debugInfo[8]).toEqual({
        fileName: "examples/counter/index.lua",
        lineEnd: 72,
        lineStart: 70,
        columnEnd: 15,
        columnStart: 12,
        moduleName: "",
        originalFileName: inFilename,
        originalLineStart: 53,
        originalColumnStart: 22,
        symbolDisambiguationIndex: 0,
        symbolFullyQualifiedMangleName:
            "_L79542b31fcdb1120e5bf9db0e427255da02dd603888fc2e66406a792f9d5fd4f::MyHomePageState.prototype.____constructor::self_title::0::anonymous_closure::0::anonymous_closure::0::anonymous_closure::0",
        symbolMangleName: "anonymous_closure",
        symbolName: "anonymous closure",
        parameterNames: [],
    });
});
