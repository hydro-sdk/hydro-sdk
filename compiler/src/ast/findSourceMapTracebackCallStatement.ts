import * as lparse from "luaparse";
import { sourceMapTraceBackCallStatementPredicate } from "./sourceMapTraceBackCallStatementPredicate";

export function findSourceMapTracebackCallStatement(statements: Array<lparse.Statement>): lparse.CallStatement | undefined {
    return statements.find((x) => {
        return sourceMapTraceBackCallStatementPredicate(x);
    }) as lparse.CallStatement;
}