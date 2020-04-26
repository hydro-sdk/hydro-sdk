"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var crypto = require("crypto");
function configHash(config, extra) {
    var hash = crypto.createHash("sha256");
    hash.update(config.entry);
    hash.update(config.modName);
    hash.update(config.outDir);
    hash.update(config.profile);
    if (extra) {
        extra.forEach(function (x) { return hash.update(x); });
    }
    return hash.digest("hex");
}
exports.configHash = configHash;
