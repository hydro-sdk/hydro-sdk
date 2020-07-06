import * as lparse from "luaparse";

export function tableConstructorExpression(fields: Array<lparse.TableKey>): lparse.TableConstructorExpression {
    return {
        type: "TableConstructorExpression",
        fields: fields
    };
}