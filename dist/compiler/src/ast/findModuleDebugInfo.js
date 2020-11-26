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
var extractFunctionDeclarationArguments_1 = require("./extractFunctionDeclarationArguments");
function findModuleDebugInfo(props) {
    var res = new Array();
    var last = lparse.parse(props.fileContent, {
        comments: true,
        scope: true,
        locations: true,
        ranges: true,
        luaVersion: "5.2",
    });
    last.body.forEach(function (x) {
        findModuleDebugInfoInner(__assign(__assign({}, props), { last: x, cont: res, log: props.log }));
    });
    return res;
}
exports.findModuleDebugInfo = findModuleDebugInfo;
function maybeNarrowNodeType(node) {
    if (node.type == "CallExpression") {
        return node;
    }
    else if (node.type == "FunctionDeclaration") {
        return node;
    }
    else if (node.type == "TableConstructorExpression") {
        return node;
    }
    else if (node.type == "IfClause") {
        return node;
    }
    else if (node.type == "IfStatement") {
        return node;
    }
    else if (node.type == "LocalStatement") {
        return node;
    }
    else if (node.type == "ForGenericStatement") {
        return node;
    }
    else if (node.type == "AssignmentStatement") {
        return node;
    }
    else if (node.type == "UnaryExpression") {
        return node;
    }
    else if (node.type == "LogicalExpression") {
        return node;
    }
    else if (node.type == "TableKeyString") {
        return node;
    }
    else if (node.type == "TableValue") {
        return node;
    }
    else if (node.type == "MemberExpression") {
        return node;
    }
    return;
}
function findModuleDebugInfoInner(props) {
    var _a, _b, _c, _d, _e, _f, _g, _h, _j, _k, _l, _m, _o, _p, _q, _r, _s, _t, _u, _v, _w, _x, _y, _z, _0;
    if (props.last.type == "FunctionDeclaration") {
        if (props.log) {
            console.log("FunctionDeclaration " + ((_b = (_a = props.last.loc) === null || _a === void 0 ? void 0 : _a.start) === null || _b === void 0 ? void 0 : _b.line));
        }
        extract(__assign(__assign({}, props), { exp: props.last }));
        props.last.body.forEach(function (k) {
            findModuleDebugInfoInner(__assign(__assign({}, props), { last: k }));
        });
    }
    if (props.last.type == "ReturnStatement") {
        if (props.log) {
            console.log("ReturnStatement " + ((_e = (_d = (_c = props.last) === null || _c === void 0 ? void 0 : _c.loc) === null || _d === void 0 ? void 0 : _d.start) === null || _e === void 0 ? void 0 : _e.line));
        }
        props.last.arguments.forEach(function (k) {
            if (maybeNarrowNodeType(k)) {
                findModuleDebugInfoInner(__assign(__assign({}, props), { last: k }));
            }
        });
    }
    if (props.last.type == "CallStatement") {
        if (props.log) {
            console.log("CallStatement " + ((_g = (_f = props.last.loc) === null || _f === void 0 ? void 0 : _f.start) === null || _g === void 0 ? void 0 : _g.line));
        }
        if (maybeNarrowNodeType(props.last.expression)) {
            findModuleDebugInfoInner(__assign(__assign({}, props), { last: props.last.expression }));
        }
    }
    if (props.last.type == "AssignmentStatement") {
        if (props.log) {
            console.log("AssignmentStatement " + ((_j = (_h = props.last.loc) === null || _h === void 0 ? void 0 : _h.start) === null || _j === void 0 ? void 0 : _j.line));
        }
        extract(__assign(__assign({}, props), { exp: props.last }));
        props.last.init.forEach(function (k) {
            if (maybeNarrowNodeType(k)) {
                findModuleDebugInfoInner(__assign(__assign({}, props), { last: k }));
            }
        });
    }
    if (props.last.type == "CallExpression") {
        if (props.log) {
            console.log("CallExpression " + ((_l = (_k = props.last.loc) === null || _k === void 0 ? void 0 : _k.start) === null || _l === void 0 ? void 0 : _l.line));
        }
        props.last.arguments.forEach(function (k) {
            if (maybeNarrowNodeType(k)) {
                findModuleDebugInfoInner(__assign(__assign({}, props), { last: k }));
            }
        });
        if (maybeNarrowNodeType(props.last.base)) {
            findModuleDebugInfoInner(__assign(__assign({}, props), { last: props.last.base }));
        }
    }
    if (props.last.type == "TableConstructorExpression") {
        if (props.log) {
            console.log("TableConstructorExpression " + ((_o = (_m = props.last.loc) === null || _m === void 0 ? void 0 : _m.start) === null || _o === void 0 ? void 0 : _o.line));
        }
        props.last.fields.forEach(function (k) {
            if (maybeNarrowNodeType(k)) {
                findModuleDebugInfoInner(__assign(__assign({}, props), { last: k }));
            }
        });
    }
    if (props.last.type == "IfStatement") {
        props.last.clauses.forEach(function (k) {
            if (maybeNarrowNodeType(k)) {
                findModuleDebugInfoInner(__assign(__assign({}, props), { last: k }));
            }
        });
    }
    if (props.last.type == "IfClause") {
        props.last.body.forEach(function (k) {
            findModuleDebugInfoInner(__assign(__assign({}, props), { last: k }));
        });
    }
    if (props.last.type == "LocalStatement") {
        props.last.init.forEach(function (k) {
            if (maybeNarrowNodeType(k)) {
                findModuleDebugInfoInner(__assign(__assign({}, props), { last: k }));
            }
        });
    }
    if (props.last.type == "ForGenericStatement") {
        if (props.log) {
            console.log("ForGenericStatement " + ((_q = (_p = props.last.loc) === null || _p === void 0 ? void 0 : _p.start) === null || _q === void 0 ? void 0 : _q.line));
        }
        props.last.iterators.forEach(function (k) {
            if (maybeNarrowNodeType(k)) {
                findModuleDebugInfoInner(__assign(__assign({}, props), { last: k }));
            }
        });
        props.last.body.forEach(function (k) {
            if (maybeNarrowNodeType(k)) {
                findModuleDebugInfoInner(__assign(__assign({}, props), { last: k }));
            }
        });
    }
    if (props.last.type == "UnaryExpression") {
        if (props.log) {
            console.log("UnaryExpression " + ((_s = (_r = props.last.loc) === null || _r === void 0 ? void 0 : _r.start) === null || _s === void 0 ? void 0 : _s.line));
        }
        if (props.last.operator == "not") {
            if (maybeNarrowNodeType(props.last.argument)) {
                findModuleDebugInfoInner(__assign(__assign({}, props), { last: props.last.argument }));
            }
        }
    }
    if (props.last.type == "LogicalExpression") {
        if (props.log) {
            console.log("LogicalExpression " + ((_u = (_t = props.last.loc) === null || _t === void 0 ? void 0 : _t.start) === null || _u === void 0 ? void 0 : _u.line));
        }
        if (props.last.operator == "and") {
            if (maybeNarrowNodeType(props.last.left)) {
                findModuleDebugInfoInner(__assign(__assign({}, props), { last: props.last.left }));
            }
            if (maybeNarrowNodeType(props.last.right)) {
                findModuleDebugInfoInner(__assign(__assign({}, props), { last: props.last.right }));
            }
        }
        if (props.last.operator == "or") {
            if (maybeNarrowNodeType(props.last.left)) {
                findModuleDebugInfoInner(__assign(__assign({}, props), { last: props.last.left }));
            }
            if (maybeNarrowNodeType(props.last.right)) {
                findModuleDebugInfoInner(__assign(__assign({}, props), { last: props.last.right }));
            }
        }
    }
    if (props.last.type == "TableKeyString") {
        if (props.log) {
            console.log("TableKeyString " + ((_w = (_v = props.last.loc) === null || _v === void 0 ? void 0 : _v.start) === null || _w === void 0 ? void 0 : _w.line));
        }
        if (maybeNarrowNodeType(props.last.value)) {
            findModuleDebugInfoInner(__assign(__assign({}, props), { last: props.last.value }));
        }
    }
    if (props.last.type == "TableValue") {
        if (props.log) {
            console.log("TableValue " + ((_y = (_x = props.last.loc) === null || _x === void 0 ? void 0 : _x.start) === null || _y === void 0 ? void 0 : _y.line));
        }
        if (maybeNarrowNodeType(props.last.value)) {
            findModuleDebugInfoInner(__assign(__assign({}, props), { last: props.last.value }));
        }
    }
    if (props.last.type == "MemberExpression") {
        if (props.log) {
            console.log("MemberExpression " + ((_0 = (_z = props.last.loc) === null || _z === void 0 ? void 0 : _z.start) === null || _0 === void 0 ? void 0 : _0.line));
        }
        if (maybeNarrowNodeType(props.last.base)) {
            findModuleDebugInfoInner(__assign(__assign({}, props), { last: props.last.base }));
        }
    }
}
function extract(props) {
    var _a, _b, _c, _d, _e, _f, _g, _h, _j, _k, _l, _m;
    if (props.exp.type == "AssignmentStatement") {
        if (props.exp.init[0].type == "FunctionDeclaration") {
            findModuleDebugInfoInner(__assign(__assign({}, props), { last: props.exp.init[0] }));
        }
    }
    if (props.exp.type == "FunctionDeclaration" ||
        props.exp.type == "MemberExpression") {
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
            parameterNames: props.exp.type == "FunctionDeclaration"
                ? extractFunctionDeclarationArguments_1.extractFunctionDeclarationArguments(props.exp)
                : [],
            symbolDisambiguationIndex: 0,
        });
    }
}
