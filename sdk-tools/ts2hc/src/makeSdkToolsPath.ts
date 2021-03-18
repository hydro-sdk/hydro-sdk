import * as path from "path";

import { BuildOptions } from "./buildOptions";

export function makeSdkToolPath({
    toolName,
    config,
}: {
    toolName: string;
    config: BuildOptions;
}) {
    return `${config.cacheDir}${path.sep}sdk-tools${path.sep}${toolName}-${
        process.platform
    }-${process.arch}${process.platform == "win32" ? ".exe" : ""}`;
}
