"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var crypto = require("crypto");
function hashText(text) {
    var hash = crypto.createHash("sha256");
    hash.update(text);
    return hash.digest("hex");
}
exports.hashText = hashText;
