import * as lparse from "luaparse";

export function callExpression(identifier: lparse.Identifier, args: Array<lparse.Expression>): lparse.CallExpression {
    return {
        type: "CallExpression",
        base: identifier,
        arguments: args
    };
}