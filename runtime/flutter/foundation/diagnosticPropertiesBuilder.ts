import { IList, List } from "./../../dart/core/list";
import { DiagnosticsNode, IDiagnosticsNode } from "./diagnosticsNode";
import { DiagnosticsTreeStyle } from "./diagnosticsTreeStyle";
declare const flutter: {
    foundation: {
        diagnosticPropertiesBuilder: (
            this: void,
            diagnosticPropertiesBuilder: DiagnosticPropertiesBuilder
        ) => DiagnosticPropertiesBuilder;
        diagnosticPropertiesBuilderFromProperties: (
            properties: IList<IDiagnosticsNode>
        ) => IDiagnosticPropertiesBuilder;
    };
};
export interface IDiagnosticPropertiesBuilder {
    properties: IList<IDiagnosticsNode>;
    defaultDiagnosticsTreeStyle: DiagnosticsTreeStyle;
    emptyBodyDescription: string | undefined;
    add: (property: IDiagnosticsNode) => void;
}
export class DiagnosticPropertiesBuilder {
    public readonly properties: List<DiagnosticsNode> = undefined as any;
    public readonly defaultDiagnosticsTreeStyle: DiagnosticsTreeStyle = undefined as any;
    public readonly emptyBodyDescription: string | undefined = undefined as any;
    public constructor() {
        flutter.foundation.diagnosticPropertiesBuilder(this);
    }
    public static fromProperties(
        properties: IList<IDiagnosticsNode>
    ): IDiagnosticPropertiesBuilder {
        return flutter.foundation.diagnosticPropertiesBuilderFromProperties(
            properties
        );
    }
    private readonly _dart_add: (
        property: IDiagnosticsNode
    ) => void = undefined as any;
    public add(property: IDiagnosticsNode): void {
        return this._dart_add(property);
    }
}
