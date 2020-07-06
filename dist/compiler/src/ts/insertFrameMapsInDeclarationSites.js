"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var lparse = require("luaparse");
var callStatement_1 = require("../ast/callStatement");
var callExpression_1 = require("../ast/callExpression");
var identifier_1 = require("../ast/identifier");
var stringLiteral_1 = require("../ast/stringLiteral");
var extractFullyQualifiedFunctionName_1 = require("../ast/extractFullyQualifiedFunctionName");
var lcodegen = require("luacodegen");
function insertFrameMapsInDeclarationSites(file) {
    // try {
    var last = lparse.parse(file.text, {
        luaVersion: "5.2",
        comments: true,
        scope: true,
        locations: true,
        ranges: true
    });
    last.body.forEach(function (x) {
        if (x.type == "FunctionDeclaration") {
            x.body.unshift(callStatement_1.callStatement(callExpression_1.callExpression(identifier_1.identifier("__hydro__framemap"), [
                stringLiteral_1.stringLiteral(extractFullyQualifiedFunctionName_1.extractFullyQualifiedFunctionName(x)),
                stringLiteral_1.stringLiteral(file.name)
            ])));
        }
    });
    file.text = lcodegen(last);
    // } catch{ }
}
exports.insertFrameMapsInDeclarationSites = insertFrameMapsInDeclarationSites;
