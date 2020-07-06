import * as lparse from "luaparse";
import { OutputFile } from "typescript-to-lua";

import { callStatement } from "../ast/callStatement"
import { callExpression } from "../ast/callExpression";
import { identifier } from "../ast/identifier";
import { stringLiteral } from "../ast/stringLiteral";
import { extractFullyQualifiedFunctionName } from "../ast/extractFullyQualifiedFunctionName";

const lcodegen = require("luacodegen");

export function insertFrameMapsInDeclarationSites(file: OutputFile) {
    // try {
        let last = lparse.parse(file.text, {
            luaVersion: "5.2",
            comments: true,
            scope: true,
            locations: true,
            ranges: true
        });

        last.body.forEach((x) => {
            if (x.type == "FunctionDeclaration") {
                x.body.unshift(callStatement(
                    callExpression(
                        identifier(
                            "__hydro__framemap"),
                        [
                            stringLiteral(extractFullyQualifiedFunctionName(x)),
                            stringLiteral(file.name)
                        ]
                    )
                ));
            }
        });

        file.text = lcodegen(last);
    // } catch{ }
}
