"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = op[0] & 2 ? y["return"] : op[0] ? y["throw"] || ((t = y["return"]) && t.call(y), 0) : y.next) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [op[0] & 2, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};
Object.defineProperty(exports, "__esModule", { value: true });
var fs = require("fs");
var chalk = require("chalk");
var ts = require("typescript");
var configHash_1 = require("./configHash");
var setupArtifactDirectories_1 = require("./setupArtifactDirectories");
var compileByteCodeAndWriteHash_1 = require("./compileByteCodeAndWriteHash");
var buildBundleInfo_1 = require("./bundle/buildBundleInfo");
var bundle_1 = require("./bundle/bundle");
var tui_1 = require("./tui");
function buildTs(config) {
    return __awaiter(this, void 0, void 0, function () {
        var startTime, buildHash, _a, outFileHash, outFile, outFileSymbols, tempFile, tempDir, oldBundleInfo, oldBuild, compileProgressBar, bundleInfo, bundleResult, symbolsString, endTime;
        return __generator(this, function (_b) {
            switch (_b.label) {
                case 0:
                    startTime = new Date().getTime();
                    buildHash = configHash_1.configHash(config);
                    console.log("Build " + chalk.yellow(buildHash));
                    _a = setupArtifactDirectories_1.setupArtifactDirectories(buildHash, config), outFileHash = _a.outFileHash, outFile = _a.outFile, outFileSymbols = _a.outFileSymbols, tempFile = _a.tempFile, tempDir = _a.tempDir, oldBundleInfo = _a.oldBundleInfo;
                    if (fs.existsSync(oldBundleInfo)) {
                        oldBuild = JSON.parse(fs.readFileSync(oldBundleInfo).toString());
                    }
                    compileProgressBar = new tui_1.Tui("Compiling");
                    return [4 /*yield*/, buildBundleInfo_1.buildBundleInfo(config, function (currentStep, totalSteps, suffixMessage) {
                            // console.log(`${currentStep}/${totalSteps} ${suffixMessage}`);
                            compileProgressBar.update(currentStep, totalSteps, suffixMessage);
                        }, oldBuild)];
                case 1:
                    bundleInfo = _b.sent();
                    compileProgressBar.stop();
                    if (bundleInfo.diagnostics && bundleInfo.diagnostics.length) {
                        bundleInfo.diagnostics.forEach(function (x) {
                            if (x.file) {
                                var _a = x.file.getLineAndCharacterOfPosition(x.start), line = _a.line, character = _a.character;
                                var message = ts.flattenDiagnosticMessageText(x.messageText, "\n");
                                var fileNameMsg = chalk.blue(x.file.fileName);
                                var lineMsg = chalk.yellow(line + 1);
                                var characterMsg = chalk.yellow(character + 1);
                                var diagMsg = chalk.red(message);
                                console.log(fileNameMsg + ":" + lineMsg + ":" + characterMsg + " - " + diagMsg);
                            }
                            else {
                                var diagMsg = chalk.red(ts.flattenDiagnosticMessageText(x.messageText, "\n"));
                                console.log(diagMsg);
                            }
                        });
                        return [2 /*return*/];
                    }
                    fs.writeFileSync(oldBundleInfo, JSON.stringify(bundleInfo, undefined, 0));
                    bundleResult = bundle_1.bundle(bundleInfo);
                    fs.writeFileSync(tempDir + "/" + config.modName, bundleResult.bundle);
                    symbolsString = JSON.stringify(bundleResult.debugSymbols);
                    fs.writeFileSync(tempDir + "/" + config.modName + ".symbols", symbolsString);
                    fs.writeFileSync(outFileSymbols, symbolsString);
                    compileByteCodeAndWriteHash_1.compileByteCodeAndWriteHash(outFile, outFileHash, tempFile, config);
                    endTime = new Date().getTime();
                    console.log("Finished build in " + (endTime - startTime) + "ms");
                    console.log(chalk.blue(config.entry) + " ----> " + chalk.yellow(outFile));
                    console.log(chalk.blue(config.entry) + " ----> " + chalk.yellow(outFileHash));
                    console.log(chalk.blue(config.entry) + " ----> " + chalk.yellow(outFileSymbols));
                    return [2 /*return*/];
            }
        });
    });
}
exports.buildTs = buildTs;
