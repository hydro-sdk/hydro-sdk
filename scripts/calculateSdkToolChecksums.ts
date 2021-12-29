(global as any).HYDROC_DISABLE_TOP_LEVEL = true;

import * as fs from "fs";
import * as path from "path";

import { sha256 } from "./../hydroc";

(async () => {
    const version = JSON.parse(
        fs.readFileSync("package.json").toString()
    ).version;

    const outputFolder = `.hydroc${path.sep}${version}${path.sep}sdk-tools`;

    const sdkTools: Array<string> = [];

    fs.readdirSync(outputFolder).forEach((file) => {
        sdkTools.push(file);
    });

    for (let sdkTool of sdkTools) {
        fs.writeFileSync(
            `${outputFolder}${path.sep}${sdkTool}.sha256`,
            sha256({
                input: fs.readFileSync(`${outputFolder}${path.sep}${sdkTool}`),
            })
        );
    }
})();
