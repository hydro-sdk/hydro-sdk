import * as cp from "child_process";
import * as fs from "fs";
import * as path from "path";

import { Command, Option } from "commander";

const program = new Command();

program.addOption(new Option("--skip-swid", "Skip building swid"));

program.parse();

(async () => {
    const dartEntryPoints: Array<string> = [];

    const skipSwid: boolean = program.opts().skipSwid;

    fs.readdirSync("bin").forEach((file) => {
        dartEntryPoints.push(file);
    });

    const version = JSON.parse(
        fs.readFileSync("package.json").toString()
    ).version;

    const outputFolder = `.hydroc${path.sep}${version}${path.sep}sdk-tools`;

    if (!fs.existsSync(outputFolder)) {
        fs.mkdirSync(outputFolder, { recursive: true });
    }

    const dart2NativeCommand =
        process.platform != "win32" ? "dart2native" : "dart2native.bat";

    for (let dartEntryPoint of dartEntryPoints) {
        const startTime = +new Date();
        const outputPath = `${outputFolder}${path.sep}${
            path.parse(dartEntryPoint).name
        }-${process.platform}-${process.arch}${
            process.platform == "win32" ? ".exe" : ""
        }`;

        if (dartEntryPoint == "swid.dart" && skipSwid) {
            console.log(`Building ${outputPath} explicitly skipped`);
            continue;
        }

        if (fs.existsSync(outputPath)) {
            console.log(`Skipped building ${outputPath}`);
            continue;
        }

        console.log(`Building ${dartEntryPoint} -> ${outputPath}`);

        const dart2Native = cp.spawnSync(dart2NativeCommand, [
            `bin${path.sep}${dartEntryPoint}`,
            "-v",
            "-o",
            outputPath,
        ]);

        console.log(dart2Native?.stdout?.toString());
        console.log(dart2Native?.stderr?.toString());

        if (dart2Native?.error) {
            throw dart2Native?.error;
        }

        console.log(`Finished in ${+new Date() - startTime}`);
    }
})();
