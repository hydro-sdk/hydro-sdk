"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var clip = require("cli-progress");
var colors = require("colors");
var ProgressBar = /** @class */ (function () {
    function ProgressBar(leadingMessage) {
        this.leadingMessage = leadingMessage;
        this.bar = new clip.Bar({
            format: this.leadingMessage + "  " + colors.green("[{bar}]") + " {value}/{total} {suffixMessage}",
            barCompleteChar: '\u2588',
        });
        this.bar.start(0, 0, { suffixMessage: "" });
    }
    ProgressBar.prototype.stop = function () {
        this.bar.stop();
    };
    ProgressBar.prototype.update = function (currentStep, totalSteps, suffixMessage) {
        this.bar.setTotal(totalSteps);
        this.bar.update(currentStep, {
            suffixMessage: suffixMessage
        });
    };
    return ProgressBar;
}());
exports.ProgressBar = ProgressBar;
