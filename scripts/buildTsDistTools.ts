import { compile } from "nexe";
(async () => {
    await compile({
        input: "compiler/index.js",
        resources: [
            "node_modules/source-map/lib/mappings.wasm",
            "node_modules/typescript-to-lua/dist/lualib/lualib_bundle.lua",
        ]
    })
}
)();