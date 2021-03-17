import * as cp from "child_process";
import * as crypto from "crypto";
import * as fs from "fs";

import { BuildOptions } from "./buildOptions";
import { maybeReturnExecutableExtension } from "./maybeReturnExecutableExtension";
import { reconcileResourcePath } from "./reconcileResourcePath";

export function compileByteCodeAndWriteHash(
    outFile: string,
    outFileHash: string,
    tempFile: string,
    config: BuildOptions
) {
    cp.execSync(
        `${reconcileResourcePath(
            `res/${process.platform}/luac52${maybeReturnExecutableExtension()}`
        )} ${config.profile == "release" ? "-s" : ""} -o ${outFile} ${tempFile}`
    );

    const hash = crypto.createHash("sha256");
    hash.update(fs.readFileSync(outFile).toString());
    fs.writeFileSync(outFileHash, hash.digest("hex"));
}
