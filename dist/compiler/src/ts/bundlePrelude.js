"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.bundlePrelude = "\nlocal package = {preload={}}\nlocal function require(file)\n    return package.preload[file]()\nend\n";
