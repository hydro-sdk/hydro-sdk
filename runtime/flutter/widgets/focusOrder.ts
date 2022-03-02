import { IComparable } from "../../dart/core/comparable";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
declare const flutter: {
    widgets: {
        focusOrder: (this: void, focusOrder: IFocusOrder) => IFocusOrder;
    };
};
export interface IFocusOrder {
    compareTo: (other: IFocusOrder) => number;
    doCompare: (other: unknown) => number;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
}
export class FocusOrder implements IDiagnosticable, IComparable<IFocusOrder> {
    public constructor() {
        flutter.widgets.focusOrder(this);
    }
    private readonly _dart_compareTo: (other: IFocusOrder) => number =
        undefined as any;
    private readonly _dart_doCompare: (other: any) => number = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    public compareTo(other: IFocusOrder): number {
        return this._dart_compareTo(other);
    }
    public doCompare(other: any): number {
        return this._dart_doCompare(other);
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
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
