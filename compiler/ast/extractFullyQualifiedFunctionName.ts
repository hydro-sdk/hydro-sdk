import * as lparse from "luaparse";

export function extractFullyQualifiedFunctionName(func: lparse.FunctionDeclaration): string {
    let res = "";
    let cont: Array<string> = [];
    extract(func, cont);
    res = cont.join("");
    return res;
}

function extract(exp: lparse.MemberExpression | lparse.FunctionDeclaration | lparse.Identifier, cont: Array<string>): void {
    switch (exp.type) {
        case "FunctionDeclaration":
            if (exp.identifier) {
                extract(exp.identifier, cont);
            }
            break;
        case "MemberExpression":
            if (exp.base && exp.base.type == "MemberExpression" || exp.base.type == "Identifier") {
                extract(exp.base, cont);
            }
            cont.push(exp.indexer);
            extract(exp.identifier, cont);


            break;
        case "Identifier":
            cont.push(exp.name);
            break;
    }
}