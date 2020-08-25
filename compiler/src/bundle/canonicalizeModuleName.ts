import * as path from "path";

import { hashText } from "../ast/hashText";

export function canonicalizeModuleName(fileName: Readonly<string>): string {
    //For debug mode this is fine.
    //For release mode this is excessive.
    //An optimization like https://github.com/browserify/bundle-collapser should be applied
    return `${hashText(fileName.toLowerCase())}::${path.basename(fileName.toLowerCase())}`;
}