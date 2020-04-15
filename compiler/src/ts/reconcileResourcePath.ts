import * as fs from "fs";
import * as path from "path";

export function reconcileResourcePath(resPath: string): string | undefined {
    console.log(`cwd ${process.cwd()}`);
    const devPath = path.resolve(`compiler/${resPath}`);

    if (fs.existsSync(devPath)) {
        console.log(`Found ${devPath}`);
        return devPath;
    }

    console.log(`Couldn't find ${devPath}`);
    const prodPath = path.resolve(`./node_modules/hydro-sdk/dist/compiler/${resPath}`);

    if (fs.existsSync(prodPath)) {
        console.log(`Found ${prodPath}`);
        return prodPath;
    }

    console.log(`Couldn't find ${prodPath}`);

    return undefined;
}