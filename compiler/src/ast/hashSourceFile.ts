import * as ts from "typescript";
import { hashText } from "./hashText";

export function hashSourceFile(sourceFile: ts.SourceFile | undefined): string {
    return hashText(sourceFile?.text ?? "");
}