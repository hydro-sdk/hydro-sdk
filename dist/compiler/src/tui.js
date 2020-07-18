"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var clip = require("cli-progress");
var Tui = /** @class */ (function () {
    function Tui(leadingMessage) {
        this.leadingMessage = leadingMessage;
        this.bar = new clip.Bar({
            format: this.leadingMessage + "  [{bar}] {value}/{total} {suffixMessage}",
        });
        this.bar.start(0, 0, { suffixMessage: "" });
    }
    Tui.prototype.stop = function () {
        this.bar.stop();
    };
    Tui.prototype.update = function (currentStep, totalSteps, suffixMessage) {
        this.bar.setTotal(totalSteps);
        this.bar.update(currentStep, {
            suffixMessage: suffixMessage
        });
    };
    return Tui;
}());
exports.Tui = Tui;
