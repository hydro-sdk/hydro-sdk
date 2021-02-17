"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.bundlePrelude = "\nlocal package = {preload={}, loaded={}}\nlocal function require(file)\n    local loadedModule = package.loaded[file]\n    if loadedModule == nil\n    then\n        loadedModule = package.preload[file]()\n        package.loaded[file] = loadedModule\n        return loadedModule\n    end\n    return loadedModule\nend\n";
