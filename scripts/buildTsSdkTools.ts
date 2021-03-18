import * as fs from "fs";
import * as path from "path";

import { compile } from "nexe";

const version = JSON.parse(fs.readFileSync("package.json").toString()).version;

const outputFolder = `.hydroc${path.sep}${version}${path.sep}sdk-tools`;

function makeOutputPath({ fileName }: { fileName: string }) {
    return `${outputFolder}${path.sep}${path.parse(fileName).name}-${
        process.platform
    }-${process.arch}${process.platform == "win32" ? ".exe" : ""}`;
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
            "node_modules/typescript/lib/lib.es5.d.ts",
            "node_modules/typescript/lib/lib.es2015.d.ts",
            "node_modules/typescript/lib/lib.es2016.d.ts",
            "node_modules/typescript/lib/lib.es2017.d.ts",
            "node_modules/typescript/lib/lib.es2018.d.ts",
            "node_modules/typescript/lib/lib.es2019.d.ts",
            "node_modules/typescript/lib/lib.es2020.d.ts",
            "node_modules/typescript/lib/lib.esnext.d.ts",
            "node_modules/typescript/lib/lib.es2015.core.d.ts",
            "node_modules/typescript/lib/lib.es2015.collection.d.ts",
            "node_modules/typescript/lib/lib.es2015.generator.d.ts",
            "node_modules/typescript/lib/lib.es2015.iterable.d.ts",
            "node_modules/typescript/lib/lib.es2015.promise.d.ts",
            "node_modules/typescript/lib/lib.es2015.proxy.d.ts",
            "node_modules/typescript/lib/lib.es2015.reflect.d.ts",
            "node_modules/typescript/lib/lib.es2015.symbol.d.ts",
            "node_modules/typescript/lib/lib.es2015.symbol.wellknown.d.ts",
            "node_modules/typescript/lib/lib.es2016.array.include.d.ts",
            "node_modules/typescript/lib/lib.es2017.object.d.ts",
            "node_modules/typescript/lib/lib.es2017.sharedmemory.d.ts",
            "node_modules/typescript/lib/lib.es2017.string.d.ts",
            "node_modules/typescript/lib/lib.es2017.intl.d.ts",
            "node_modules/typescript/lib/lib.es2017.typedarrays.d.ts",
            "node_modules/typescript/lib/lib.es2018.asyncgenerator.d.ts",
            "node_modules/typescript/lib/lib.es2018.asynciterable.d.ts",
            "node_modules/typescript/lib/lib.es2018.intl.d.ts",
            "node_modules/typescript/lib/lib.es2018.promise.d.ts",
            "node_modules/typescript/lib/lib.es2018.regexp.d.ts",
            "node_modules/typescript/lib/lib.es2019.array.d.ts",
            "node_modules/typescript/lib/lib.es2019.object.d.ts",
            "node_modules/typescript/lib/lib.es2019.string.d.ts",
            "node_modules/typescript/lib/lib.es2019.symbol.d.ts",
            "node_modules/typescript/lib/lib.es2020.bigint.d.ts",
            "node_modules/typescript/lib/lib.es2020.promise.d.ts",
            "node_modules/typescript/lib/lib.es2020.string.d.ts",
            "node_modules/typescript/lib/lib.es2020.symbol.wellknown.d.ts",
            "node_modules/typescript/lib/lib.esnext.intl.d.ts",
            "node_modules/source-map/lib/mappings.wasm",
            "node_modules/typescript-to-lua/dist/lualib/lualib_bundle.lua",
        ],
    });
})();
