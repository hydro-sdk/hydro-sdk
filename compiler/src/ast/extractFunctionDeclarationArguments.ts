import * as lparse from "luaparse";

export function extractFunctionDeclarationArguments(func: lparse.FunctionDeclaration): Array<string> {
    let res = new Array<string>();

    func.parameters.forEach((x) => {
        if (x.type == "Identifier") {
            res.push(x.name);
        } else if (x.type == "VarargLiteral") {
            res.push(x.value);
        }
    });

    return res;
}