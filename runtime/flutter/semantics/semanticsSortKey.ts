import { IComparable } from "../../dart/core/comparable";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
declare const flutter: {
    semantics: {
        semanticsSortKey: (
            this: void,
            semanticsSortKey: ISemanticsSortKey,
            props?: { name?: string | undefined }
        ) => ISemanticsSortKey;
    };
};
export interface ISemanticsSortKey {
    name: string | undefined;
    compareTo: (other: ISemanticsSortKey) => number;
    doCompare: (other: unknown) => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class SemanticsSortKey
    implements IDiagnosticable, IComparable<ISemanticsSortKey>
{
    public readonly name: string | undefined = undefined as any;
    public constructor(props?: { name?: string | undefined }) {
        flutter.semantics.semanticsSortKey(this, props);
    }
    private readonly _dart_compareTo: (other: ISemanticsSortKey) => number =
        undefined as any;
    private readonly _dart_doCompare: (other: any) => number = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    public compareTo(other: ISemanticsSortKey): number {
        return this._dart_compareTo(other);
    }
    public doCompare(other: any): number {
        return this._dart_doCompare(other);
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
    public toDiagnosticsNode(props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }): IDiagnosticsNode {
        return this._dart_toDiagnosticsNode(props);
    }
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
