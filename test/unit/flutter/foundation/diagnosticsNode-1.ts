import { DiagnosticLevel } from "../../../../runtime/flutter/foundation/diagnosticLevel";
import { DiagnosticsNode } from "../../../../runtime/flutter/foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../../../../runtime/flutter/foundation/diagnosticsTreeStyle";
declare const assert: (this: void, arg: boolean, message?: string) => void;

function first() {
    const node = new DiagnosticsNode({});

    assert(node != undefined);
    assert(node.showName == true);
    assert(node.showSeparator == true);
}

function second() {
    const node = new DiagnosticsNode({
        style: DiagnosticsTreeStyle.whitespace,
    });

    assert(node != undefined);
    assert(node.showName == true);
    assert(node.showSeparator == true);
    assert(node.style == DiagnosticsTreeStyle.whitespace);
}

function third() {
    const node = DiagnosticsNode.message("message", {});

    assert(node != undefined);
    assert(node.getAllowWrap() == true);
    assert(node.getLevel() == DiagnosticLevel.info);
}

function main() {
    first();
    second();
    third();
}

main();
