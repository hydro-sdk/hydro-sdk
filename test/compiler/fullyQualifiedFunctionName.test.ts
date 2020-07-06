import * as fs from "fs";

import { LuaTarget, LuaLibImportKind, transpileString } from "typescript-to-lua";
import * as lparse from "luaparse";

import { extractFullyQualifiedFunctionName } from "./../../compiler/src/ast/extractFullyQualifiedFunctionName";


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

    last.body.forEach((x) => {
        if (x.type == "FunctionDeclaration") {
            expect(extractFullyQualifiedFunctionName(x)).toBe("Type.prototype.____constructor");
        }
    });
}); 