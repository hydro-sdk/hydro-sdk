import * as cp from "child_process";
import * as fs from "fs";
import * as path from "path";

(async () => {
    const version = JSON.parse(
        fs.readFileSync("package.json").toString()
    ).version;

    const outputFolder = `.hydroc${path.sep}${version}${path.sep}sdk-tools`;

    if (!fs.existsSync(outputFolder)) {
        fs.mkdirSync(outputFolder, { recursive: true });
    }

    const outputPath = `${outputFolder}${path.sep}${"luac52"}-${
        process.platform
    }-${process.arch}${process.platform == "win32" ? ".exe" : ""}`;
    const startTime = +new Date();

    if (fs.existsSync(outputPath)) {
        console.log(`Skipped building ${outputPath}`);
        process.exit(0);
    }

    console.log(`Building luac52 -> ${outputPath}`);

    const bash = cp.spawnSync("bash", [
        "scripts/buildLua52.bash",
        process.platform == "darwin"
            ? "macosx"
            : process.platform == "win32"
            ? "mingw"
            : process.platform == "linux"
            ? "linux"
            : "",
    ]);

    console.log(bash?.stdout?.toString());
    console.log(bash?.stderr?.toString());

    if (bash?.error) {
        throw bash?.error;
    }

    fs.copyFileSync(
        `sdk-tools/lua52/src/luac${process.platform == "win32" ? ".exe" : ""}`,
        outputPath
    );

    console.log(`Finished in ${+new Date() - startTime}`);
})();
