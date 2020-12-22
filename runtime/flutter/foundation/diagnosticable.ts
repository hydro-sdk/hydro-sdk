import { DiagnosticLevel } from "./diagnosticLevel";
import { DiagnosticsNode } from "./diagnosticsNode";
import { DiagnosticsTreeStyle } from "./diagnosticsTreeStyle";
export interface Diagnosticable {
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => DiagnosticsNode;
}
