import * as fs from "fs";

import * as lparse from "luaparse";
import {
    LuaLibImportKind,
    LuaTarget,
    transpileString,
} from "typescript-to-lua";

import { extractFullyQualifiedFunctionName } from "./../../sdk-tools/ts2hc/src/ast/extractFullyQualifiedFunctionName";

test("", () => {
    const res = transpileString(
        fs.readFileSync("./runtime/dart/core/type.ts").toString(),
        {
            luaTarget: LuaTarget.Lua52,
            luaLibImport: LuaLibImportKind.Require,
            sourceMapTraceback: true,
        }
    );

    const last = lparse.parse(res.file!.lua!, {
        comments: true,
        scope: true,
        locations: true,
        ranges: true,
    });

    last.body.forEach((x) => {
        if (x.type == "FunctionDeclaration") {
            expect(extractFullyQualifiedFunctionName(x)).toBe(
                "Type.prototype.____constructor"
            );
        }
    });
});
