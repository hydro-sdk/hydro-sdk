import * as lparse from "luaparse";

export function callStatement(expression: lparse.CallExpression): lparse.CallStatement {
    return {
        type: "CallStatement",
        expression: expression
    };
}