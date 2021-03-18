import * as path from "path";
import * as fs from "fs";
import { compile } from "nexe";

const version = JSON.parse(fs.readFileSync("package.json").toString()).version;

const outputFolder = `.hydroc${path.sep}${version}${path.sep}sdk-tools`;

function makeOutputPath({ fileName }: { fileName: string; }) {
    return `${outputFolder}${path.sep}${path.parse(fileName).name}-${process.platform}-${process.arch}${process.platform == "win32" ? ".exe" : ""}`;
}
(async () => {

    const outputPath = makeOutputPath({ fileName: "ts2hc" });

    if (fs.existsSync(outputPath)) {
        console.log(`Skipped building ${outputPath}`);
        process.exit(0);
    }

    await compile({
        input: "sdk-tools/ts2hc/index.js",
        output: outputPath,
        resources: [
            "node_modules/source-map/lib/mappings.wasm",
            "node_modules/typescript-to-lua/dist/lualib/lualib_bundle.lua",
        ]
    })
}
)();