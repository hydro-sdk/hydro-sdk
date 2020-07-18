"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var clip = require("cli-progress");
var colors = require("colors");
var Tui = /** @class */ (function () {
    function Tui(leadingMessage) {
        this.leadingMessage = leadingMessage;
        this.bar = new clip.Bar({
            format: this.leadingMessage + "  " + colors.green("[{bar}]") + " {value}/{total} {suffixMessage}",
            barCompleteChar: '\u2588',
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
