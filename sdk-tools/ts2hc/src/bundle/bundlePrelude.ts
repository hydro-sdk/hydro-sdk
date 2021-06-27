export const bundlePrelude = `
local package = {preload={}, loaded={}}
local function require(file)
    local loadedModule = package.loaded[file]
    if loadedModule == nil
    then
        loadedModule = package.preload[file]()
        package.loaded[file] = loadedModule
        return loadedModule
    end
    return loadedModule
end\n`;
