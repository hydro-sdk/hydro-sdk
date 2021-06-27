import * as crypto from "crypto";

import { BuildOptions } from "./buildOptions";

export function configHash(
    config: BuildOptions,
    extra?: Array<string> | undefined
): string {
    const hash = crypto.createHash("sha256");

    hash.update(config.entry);
    hash.update(config.modName);
    hash.update(config.outDir);
    hash.update(config.cacheDir);
    hash.update(config.profile);
    hash.update(config.baseUrl ?? "");

    if (extra) {
        extra.forEach((x) => hash.update(x));
    }

    return hash.digest("hex");
}
