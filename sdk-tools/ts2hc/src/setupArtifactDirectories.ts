import * as fs from "fs";
import * as path from "path";

import { BuildOptions } from "./buildOptions";

export function setupArtifactDirectories(
    buildHash: string,
    config: BuildOptions
) {
    const tempDir = `${config.cacheDir}${path.sep}ts2hc${path.sep}${buildHash}`;
    const oldBundleInfo = `${config.cacheDir}${path.sep}ts2hc${path.sep}${buildHash}/build.json`;
    const tempFile = `${config.cacheDir}${path.sep}ts2hc${path.sep}${buildHash}/${config.modName}`;
    const outFile = `${config.outDir}/${config.modName}.hc`;
    const outFileHash = `${config.outDir}/${config.modName}.hc.sha256`;
    const outFileSymbols = `${config.outDir}/${config.modName}.hc.symbols`;

    fs.mkdirSync(config.outDir, { recursive: true });
    fs.mkdirSync(tempDir, { recursive: true });

    return {
        tempDir,
        tempFile,
        outFile,
        outFileHash,
        outFileSymbols,
        oldBundleInfo,
    };
}
