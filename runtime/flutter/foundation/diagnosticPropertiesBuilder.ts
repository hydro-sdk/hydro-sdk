import { List } from "./../../dart/collection/list";
import { DiagnosticsNode } from "./diagnosticsNode";
import { DiagnosticsTreeStyle } from "./diagnosticsTreeStyle";
declare const flutter: {
    foundation: {
        diagnosticPropertiesBuilder: (
            this: void,
            diagnosticPropertiesBuilder: DiagnosticPropertiesBuilder
        ) => DiagnosticPropertiesBuilder;
        diagnosticPropertiesBuilderFromProperties: (
            properties: List<DiagnosticsNode>
        ) => DiagnosticPropertiesBuilder;
    };
};
export interface IDiagnosticPropertiesBuilder {
    properties: List<DiagnosticsNode>;
    defaultDiagnosticsTreeStyle: DiagnosticsTreeStyle;
    emptyBodyDescription: string | undefined;
    add: (property: DiagnosticsNode) => void;
}
export class DiagnosticPropertiesBuilder
    implements IDiagnosticPropertiesBuilder {
    public readonly properties: List<DiagnosticsNode> = undefined as any;
    public readonly defaultDiagnosticsTreeStyle: DiagnosticsTreeStyle = undefined as any;
    public readonly emptyBodyDescription: string | undefined = undefined as any;
    public constructor() {
        flutter.foundation.diagnosticPropertiesBuilder(this);
    }
    public static fromProperties(
        properties: List<DiagnosticsNode>
    ): DiagnosticPropertiesBuilder {
        return flutter.foundation.diagnosticPropertiesBuilderFromProperties(
            properties
        );
    }
    private readonly _dart_add: (
        property: DiagnosticsNode
    ) => void = undefined as any;
    public add(property: DiagnosticsNode): void {
        return this._dart_add(property);
    }
}
