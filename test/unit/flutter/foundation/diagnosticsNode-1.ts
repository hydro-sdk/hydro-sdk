import { DiagnosticsNode } from "../../../../runtime/flutter/foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../../../../runtime/flutter/foundation/diagnosticsTreeStyle";
declare const assert: (this: void, arg: boolean, message?: string) => void;

const first = new DiagnosticsNode({});

assert(first != undefined);
assert(first.style == DiagnosticsTreeStyle.singleLine);
