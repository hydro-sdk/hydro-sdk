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
    const builder = new DiagnosticPropertiesBuilder();

    assert(builder.properties != undefined);
    assert(builder.properties.length() == 0);

    builder.add(new DiagnosticsNode({}));
    assert(builder.properties.length() == 1);
    assert(builder.properties.first() != undefined);
    assert(builder.properties.first().showName == true);
    assert(builder.properties.first().showSeparator == true);

    builder.add(
        new DiagnosticsNode({
            style: DiagnosticsTreeStyle.whitespace,
        })
    );
    assert(builder.properties.length() == 2);
    assert(builder.properties.first() != undefined);
    assert(builder.properties.first().showName == true);
    assert(builder.properties.first().showSeparator == true);
    assert(builder.properties.last() != undefined);
    assert(builder.properties.last().showName == true);
    assert(builder.properties.last().showSeparator == true);
    assert(builder.properties.last().style == DiagnosticsTreeStyle.whitespace);
}

function third() {
    //missing named generative constructors to test fromProperties
}

function main() {
    first();
    second();
    third();
}

main();
