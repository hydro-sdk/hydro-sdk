import * as lparse from "luaparse";

export function identifier(name: string): lparse.Identifier {
    return {
        type: "Identifier",
        name: name
    };
}