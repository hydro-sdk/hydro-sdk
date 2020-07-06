import * as fs from "fs";

import { LuaTarget, LuaLibImportKind, transpileString } from "typescript-to-lua";
import * as lparse from "luaparse";

import {findModuleSourceMap} from "./../../compiler/src/ast/findModuleSourceMap";

test("", () => {
    let res = transpileString(fs.readFileSync("./runtime/dart/core/type.ts").toString(), {
        luaTarget: LuaTarget.Lua52,
        luaLibImport: LuaLibImportKind.Require,
        sourceMapTraceback: true
    });

    let last = lparse.parse(res.file!.lua!, {
        comments: true,
        scope: true,
        locations: true,
        ranges: true
    });
    const moduleSourceMap = findModuleSourceMap(last.body);

    expect(moduleSourceMap[0]).toEqual({ out: "5", src: "1" });
    expect(moduleSourceMap[1]).toEqual({ out: "6", src: "1" });
    expect(moduleSourceMap[2]).toEqual({ out: "7", src: "1" });
    expect(moduleSourceMap[3]).toEqual({ out: "8", src: "4" });
    expect(moduleSourceMap[4]).toEqual({ out: "9", src: "6" });
    expect(moduleSourceMap[5]).toEqual({ out: "10", src: "4" });
});