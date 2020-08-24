import * as path from "path";

import { TranspiledFile } from "./transpiledFile";
import { hashText } from "../ast/hashText";

export function canonicalizeModuleName(sourceFile: Readonly<TranspiledFile>): string {
    //For debug mode this is fine.
    //For release mode this is excessive.
    //An optimization like https://github.com/browserify/bundle-collapser should be applied
    return `${hashText(sourceFile.fileName.toLowerCase())}::${path.basename(sourceFile.fileName.toLowerCase())}`;
}