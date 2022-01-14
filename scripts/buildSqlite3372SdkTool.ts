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

    const outputPath = `${outputFolder}${path.sep}${"sqlite3372"}-${process.platform
        }-${process.arch}${process.platform == "darwin" ? ".dylib" :
            process.platform == "win32" ? ".dll" : process.platform == "linux" ? ".so" : ""
        }`;
    const startTime = +new Date();

    if (fs.existsSync(outputPath)) {
        console.log(`Skipped building ${outputPath}`);
        process.exit(0);
    }

    console.log(`Building sqlite3372 -> ${outputPath}`);

    const bash = cp.spawnSync("bash", [
        "scripts/buildSqlite3372.bash",
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
        `sdk-tools/lua52/src/luac${process.platform == "darwin" ? ".dylib" :
            process.platform == "win32" ? ".dll" : process.platform == "linux" ? ".so" : ""}`,
        outputPath
    );

    console.log(`Finished in ${+new Date() - startTime}`);
})();
