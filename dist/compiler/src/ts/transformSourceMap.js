"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
function transformSourceMap(fileName, file) {
    var lines = file.split("\n");
    var srcMap = new Array();
    var _loop_1 = function (i) {
        var regex = new RegExp("__TS__SourceMapTraceBack\\(debug\\.getinfo\\(1\\)\\.short_src,");
        if (regex.test(lines[i])) {
            var tokens = lines[i].split(",");
            tokens.splice(0, 1);
            tokens = tokens.join("").split("=").join("").split("{").join("").split("}").join("").split("").join("").split("\"").join("").split("(");
            var subTokens = tokens[0].split(" ").map(function (x) {
                return x.split("[");
            });
            subTokens = subTokens.filter(function (x) {
                if (x.length == 1 && x[0] == "") {
                    return false;
                }
                return true;
            });
            var finalTokens_1 = new Array();
            subTokens.forEach(function (x) {
                x.forEach(function (k) {
                    var token = k.replace(new RegExp("]"), "");
                    token = token.replace(new RegExp("\\)"), "");
                    token = token.replace(new RegExp(";"), "");
                    if (token != "") {
                        finalTokens_1.push(token);
                    }
                });
            });
            for (var k = 0; k < finalTokens_1.length; k += 2) {
                srcMap.push({
                    in: parseInt(finalTokens_1[k + 1]),
                    out: parseInt(finalTokens_1[k])
                });
            }
            return "break";
        }
    };
    for (var i = 0; i < lines.length; ++i) {
        var state_1 = _loop_1(i);
        if (state_1 === "break")
            break;
    }
    if (srcMap && srcMap.length != 0) {
        var insertions = 0;
        for (var i = 0; i < srcMap.length; ++i) {
            if (!new RegExp("(return )").test(lines[srcMap[i].out + insertions - 2])) {
                // lines.splice(srcMap[i].out + insertions - 1, 0, `__hydro__filename="${fileName}";__hydro__linenumber=${srcMap[i].in.toString()};`);
                insertions += 1;
                var inLine = srcMap[i].in;
                for (var k = srcMap.length; k >= 0; --k) {
                    if (srcMap[k] && srcMap[k].in == inLine) {
                        srcMap.splice(k, 1);
                    }
                }
            }
        }
    }
    return lines.join("\n");
}
exports.transformSourceMap = transformSourceMap;
