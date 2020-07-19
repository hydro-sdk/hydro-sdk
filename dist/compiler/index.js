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
var path = require("path");
var minimist = require("minimist");
var rimraf = require("rimraf");
var chokidar = require("chokidar");
var clear = require("clear");
var buildTs_1 = require("./src/buildTs");
var buildOptions_1 = require("./src/buildOptions");
var argv = minimist(process.argv.slice(2));
var entry = argv.t;
var modName = argv.m;
var outDir = argv.d;
var profile = argv.p;
var clean = argv.clean;
if (clean) {
    rimraf.sync(".hydroc");
    process.exit(0);
}
var watch = argv.w;
if (!entry) {
    console.log("Entry file must be specified with -t switch");
    process.exit(1);
}
else {
    if (!fs.statSync(entry)) {
        console.log("Entry file does not exist");
        process.exit(1);
    }
}
if (!profile) {
    console.log("Build profile must be specified with -p switch");
    process.exit(1);
}
if (profile !== "debug" && profile !== "release") {
    console.log(profile + " is not a valid profile argument. Must be debug or release");
    process.exit(1);
}
var inputLanguage;
var extName = path.extname(entry);
switch (extName) {
    case ".ts":
        inputLanguage = buildOptions_1.InputLanguage.typescript;
        break;
    case ".hx":
        inputLanguage = buildOptions_1.InputLanguage.haxe;
        break;
}
var classPath = [];
var mainClass;
if (argv["class-path"] !== undefined) {
    if (typeof argv["class-path"] === "string") {
        classPath.push(argv["class-path"]);
    }
    else {
        classPath = argv["class-path"];
    }
}
if (inputLanguage == buildOptions_1.InputLanguage.haxe) {
    if (argv["main-class"] !== undefined) {
        mainClass = argv["main-class"];
    }
    else if (argv["main-class"] === undefined || argv["main-class"] === "" || mainClass === undefined || mainClass === "") {
        console.log("A main class must be provided. Use --main-class");
    }
}
if (!modName) {
    console.log("Output module name must be specified with -m switch");
    process.exit(1);
}
if (!outDir) {
    console.log("Output directory must be specified with -d switch");
    process.exit(1);
}
if (!fs.existsSync(".hydroc")) {
    fs.mkdirSync(".hydroc");
}
if (watch !== undefined) {
    (function () { return __awaiter(void 0, void 0, void 0, function () {
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    if (!(inputLanguage == buildOptions_1.InputLanguage.typescript)) return [3 /*break*/, 2];
                    clear();
                    return [4 /*yield*/, buildTs_1.buildTs({
                            inputLanguage: inputLanguage,
                            entry: entry,
                            modName: modName,
                            outDir: outDir,
                            profile: profile
                        })];
                case 1:
                    _a.sent();
                    _a.label = 2;
                case 2: return [2 /*return*/];
            }
        });
    }); })();
    chokidar.watch(watch).on("change", function () { return __awaiter(void 0, void 0, void 0, function () {
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    if (!(inputLanguage == buildOptions_1.InputLanguage.typescript)) return [3 /*break*/, 2];
                    clear();
                    return [4 /*yield*/, buildTs_1.buildTs({
                            inputLanguage: inputLanguage,
                            entry: entry,
                            modName: modName,
                            outDir: outDir,
                            profile: profile
                        })];
                case 1:
                    _a.sent();
                    _a.label = 2;
                case 2: return [2 /*return*/];
            }
        });
    }); });
}
else {
    (function () { return __awaiter(void 0, void 0, void 0, function () {
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    if (!(inputLanguage == buildOptions_1.InputLanguage.typescript)) return [3 /*break*/, 2];
                    return [4 /*yield*/, buildTs_1.buildTs({
                            inputLanguage: inputLanguage,
                            entry: entry,
                            modName: modName,
                            outDir: outDir,
                            profile: profile
                        })];
                case 1:
                    _a.sent();
                    _a.label = 2;
                case 2: return [2 /*return*/];
            }
        });
    }); })();
}
