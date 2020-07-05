import * as lparse from "luaparse";

export function numericLiteral(val: number): lparse.NumericLiteral {
    return {
        type: "NumericLiteral",
        value: val,
        raw: val.toString()
    }
}