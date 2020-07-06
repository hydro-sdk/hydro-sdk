import * as lparse from "luaparse";

export function tableKey(props: {
    key: lparse.StringLiteral | lparse.NumericLiteral,
    value: lparse.StringLiteral | lparse.NumericLiteral,
}): lparse.TableKey {
    return {
        type: "TableKey",
        key: props.key,
        value: props.value
    };
}