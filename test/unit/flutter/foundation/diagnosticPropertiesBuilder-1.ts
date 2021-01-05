import { DiagnosticPropertiesBuilder } from "../../../../runtime/flutter/foundation/diagnosticPropertiesBuilder";
import { DiagnosticsNode } from "../../../../runtime/flutter/foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../../../../runtime/flutter/foundation/diagnosticsTreeStyle";
declare const assert: (this: void, arg: boolean, message?: string) => void;

function first() {
    const builder = new DiagnosticPropertiesBuilder();

    assert(builder.properties != undefined);
    assert(builder.properties.getLength() == 0);
}

function second() {
    const builder = new DiagnosticPropertiesBuilder();

    assert(builder.properties != undefined);
    assert(builder.properties.getLength() == 0);

    builder.add(new DiagnosticsNode({}));
    assert(builder.properties.getLength() == 1);
    assert(builder.properties.getFirst() != undefined);
    assert(builder.properties.getFirst().showName == true);
    assert(builder.properties.getFirst().showSeparator == true);

    builder.add(
        new DiagnosticsNode({
            style: DiagnosticsTreeStyle.whitespace,
        })
    );
    assert(builder.properties.getLength() == 2);
    assert(builder.properties.getFirst() != undefined);
    assert(builder.properties.getFirst().showName == true);
    assert(builder.properties.getFirst().showSeparator == true);
    assert(builder.properties.getLast() != undefined);
    assert(builder.properties.getLast().showName == true);
    assert(builder.properties.getLast().showSeparator == true);
    assert(builder.properties.getLast().style == DiagnosticsTreeStyle.whitespace);
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
