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