"use strict";
var __assign = (this && this.__assign) || function () {
    __assign = Object.assign || function(t) {
        for (var s, i = 1, n = arguments.length; i < n; i++) {
            s = arguments[i];
            for (var p in s) if (Object.prototype.hasOwnProperty.call(s, p))
                t[p] = s[p];
        }
        return t;
    };
    return __assign.apply(this, arguments);
};
Object.defineProperty(exports, "__esModule", { value: true });
var lparse = require("luaparse");
var extractFullyQualifiedFunctionName_1 = require("./extractFullyQualifiedFunctionName");
function findModuleDebugInfo(props) {
    var res = new Array();
    var last = lparse.parse(props.fileContent, {
        comments: true,
        scope: true,
        locations: true,
        ranges: true
    });
    last.body.forEach(function (x) {
        findModuleDebugInfoInner(__assign(__assign({}, props), { last: x, cont: res }));
    });
    return res;
}
exports.findModuleDebugInfo = findModuleDebugInfo;
function findModuleDebugInfoInner(props) {
    if (props.last.type == "FunctionDeclaration") {
        extract(__assign(__assign({}, props), { exp: props.last }));
        props.last.body.forEach(function (k) {
            findModuleDebugInfoInner(__assign(__assign({}, props), { last: k }));
        });
    }
    if (props.last.type == "CallStatement") {
        if (props.last.expression.type == "CallExpression") {
            props.last.expression.arguments.forEach(function (k) {
                if (k.type == "FunctionDeclaration") {
                    extract(__assign(__assign({}, props), { exp: k }));
                }
            });
        }
    }
    if (props.last.type == "AssignmentStatement") {
        extract(__assign(__assign({}, props), { exp: props.last }));
    }
}
function extract(props) {
    var _a, _b, _c, _d, _e, _f, _g, _h, _j, _k, _l, _m;
    if (props.exp.type == "AssignmentStatement") {
        if (props.exp.init[0].type == "FunctionDeclaration") {
            findModuleDebugInfoInner(__assign(__assign({}, props), { last: props.exp.init[0] }));
        }
    }
    if (props.exp.type == "FunctionDeclaration" || props.exp.type == "MemberExpression") {
        props.cont.push({
            lineStart: (_c = (_b = (_a = props.exp.loc) === null || _a === void 0 ? void 0 : _a.start) === null || _b === void 0 ? void 0 : _b.line) !== null && _c !== void 0 ? _c : 0,
            lineEnd: (_f = (_e = (_d = props.exp.loc) === null || _d === void 0 ? void 0 : _d.end) === null || _e === void 0 ? void 0 : _e.line) !== null && _f !== void 0 ? _f : 0,
            columnStart: (_j = (_h = (_g = props.exp.loc) === null || _g === void 0 ? void 0 : _g.start) === null || _h === void 0 ? void 0 : _h.column) !== null && _j !== void 0 ? _j : 0,
            columnEnd: (_m = (_l = (_k = props.exp.loc) === null || _k === void 0 ? void 0 : _k.end) === null || _l === void 0 ? void 0 : _l.column) !== null && _m !== void 0 ? _m : 0,
            symbolName: extractFullyQualifiedFunctionName_1.extractFullyQualifiedFunctionName(props.exp),
            moduleName: "",
            fileName: props.filename,
            originalFileName: props.originalFileName,
            originalLineStart: 0,
            originalColumnStart: 0,
        });
    }
}
