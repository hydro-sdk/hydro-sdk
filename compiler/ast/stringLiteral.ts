import * as lparse from "luaparse";

export function stringLiteral(val: string): lparse.StringLiteral {
    return {
        type: "StringLiteral",
        value: val,
        raw: `"${val}"`
    }
}