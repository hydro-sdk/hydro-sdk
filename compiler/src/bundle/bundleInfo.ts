import * as ts from "typescript";

import { BuildOptions } from "../buildOptions";
import { BundleEntry } from "./bundleEntry";

export type BundleInfo = BuildOptions & {
    entries: Array<BundleEntry>;
    diagnostics: Array<ts.Diagnostic>;
}