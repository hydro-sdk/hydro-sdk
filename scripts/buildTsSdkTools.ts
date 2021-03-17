import * as path from "path";
import { compile } from "nexe";

const outputFolder = `.hydroc${path.sep}sdk-tools`;

function makeOutputPath({ fileName }: { fileName: string; }) {
    return `${outputFolder}${path.sep}${path.parse(fileName).name}-${process.platform}-${process.arch}${process.platform == "win32" ? ".exe" : ""}`;
}
(async () => {

    const outputPath = makeOutputPath({ fileName: "ts2hc" });

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