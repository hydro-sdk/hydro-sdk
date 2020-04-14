import * as fs from "fs";
import * as path from "path";

export function reconcileResourcePath(resPath: string): string | undefined {
    const devPath = path.resolve(`compiler/${resPath}`);

    if (fs.existsSync(devPath)) {
        return devPath;
    }
    console.log(devPath);
    const prodPath = path.resolve(`./node_modules/hydro-sdk/dist/compiler/${resPath}`);

    console.log(prodPath);
    if (fs.existsSync(prodPath)) {
        return prodPath;
    }

    return undefined;
}