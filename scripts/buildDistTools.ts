import * as fs from "fs";
import * as cp from "child_process";
import * as path from "path";

(async () => {
    const dartEntryPoints: Array<string> = [];

    fs.readdirSync("bin").forEach((file) => {
        dartEntryPoints.push(file);
    });

    console.log(`Cwd: ${process.cwd()}`);

    const outputFolder = "dist-tools";

    if (!fs.existsSync(outputFolder)) {
        fs.mkdirSync(outputFolder);
    }

    for (let dartEntryPoint of dartEntryPoints) {
        const startTime = +new Date();
        const outputPath = `${outputFolder}${path.sep}${path.parse(dartEntryPoint).name}-${process.platform}-${process.arch}`;

        console.log(`Building ${dartEntryPoint} -> ${outputPath}`);

        const dart2Native = cp.spawnSync("dart2native", [`bin${path.sep}${dartEntryPoint}`, '-v', '-o',
            outputPath
        ]);

        console.log(dart2Native?.stdout?.toString());
        console.log(dart2Native?.stderr?.toString());

        if (dart2Native?.error) {
            throw dart2Native?.error;
        }

        console.log(`Finished in ${+new Date() - startTime}`);
    }
})();