export const bundlePrelude = `
local package = {preload={}}
local function require(file)
    return package.preload[file]()
end\n`;
