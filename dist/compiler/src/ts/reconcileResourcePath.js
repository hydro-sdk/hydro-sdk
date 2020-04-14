"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var fs = require("fs");
var path = require("path");
function reconcileResourcePath(resPath) {
    var devPath = path.resolve("compiler/" + resPath);
    if (fs.existsSync(devPath)) {
        return devPath;
    }
    console.log(devPath);
    var prodPath = path.resolve("./node_modules/hydro-sdk/dist/compiler/" + resPath);
    console.log(prodPath);
    if (fs.existsSync(prodPath)) {
        return prodPath;
    }
    return undefined;
}
exports.reconcileResourcePath = reconcileResourcePath;
