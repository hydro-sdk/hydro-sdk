import { DiagnosticLevel } from "../../../../runtime/flutter/foundation/diagnosticLevel";
import { DiagnosticPropertiesBuilder } from "../../../../runtime/flutter/foundation/diagnosticPropertiesBuilder";
import { DiagnosticsNode } from "../../../../runtime/flutter/foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../../../../runtime/flutter/foundation/diagnosticsTreeStyle";
declare const assert: (this: void, arg: boolean, message?: string) => void;

function first() {
    const builder = new DiagnosticPropertiesBuilder();

    assert(builder.properties != undefined);
    assert(builder.properties.length() == 0);
}

function second() {
    //missing named generative constructors to test fromProperties
}

function main() {
    first();
    second();
}

main();
