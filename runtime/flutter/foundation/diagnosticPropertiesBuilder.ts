import { List } from "./../../dart/collection/list";
import { DiagnosticsNode } from "./diagnosticsNode";
import { DiagnosticsTreeStyle } from "./diagnosticsTreeStyle";
declare const flutter: {
    foundation: {
        diagnosticPropertiesBuilder: (
            this: void,
            diagnosticPropertiesBuilder: DiagnosticPropertiesBuilder
        ) => DiagnosticPropertiesBuilder;
    };
};
export class DiagnosticPropertiesBuilder {
    public readonly properties: List<DiagnosticsNode> = undefined as any;
    public readonly defaultDiagnosticsTreeStyle: DiagnosticsTreeStyle = undefined as any;
    public readonly emptyBodyDescription: string | undefined = undefined as any;
    public constructor() {
        flutter.foundation.diagnosticPropertiesBuilder(this);
    }
    private readonly _dart_add: (
        property: DiagnosticsNode
    ) => void = undefined as any;
    public add(property: DiagnosticsNode) {
        return this._dart_add(property);
    }
}
