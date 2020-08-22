import * as tstl from "typescript-to-lua";

export type TranspiledFile = NonNullable<Omit<tstl.TranspiledFile, "luaAst" | "declaration" | "declarationMap">>;