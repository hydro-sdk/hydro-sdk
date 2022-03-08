import { ISet } from "../../dart/core/set";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IMouseCursor } from "../services/mouseCursor";
import { MaterialState } from "./materialState";
import { IMaterialStateProperty } from "./materialStateProperty";
declare const flutter: {
    material: {
        _textButtonDefaultMouseCursor: (
            this: void,
            _textButtonDefaultMouseCursor: I_TextButtonDefaultMouseCursor,
            enabledCursor: IMouseCursor,
            disabledCursor: IMouseCursor
        ) => I_TextButtonDefaultMouseCursor;
    };
};
export interface I_TextButtonDefaultMouseCursor {
    enabledCursor: IMouseCursor;
    disabledCursor: IMouseCursor;
    resolve: (states: ISet<MaterialState>) => IMouseCursor;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getHashCode: () => number;
}
export class _TextButtonDefaultMouseCursor
    implements IMaterialStateProperty<IMouseCursor>, IDiagnosticable
{
    public readonly enabledCursor: IMouseCursor = undefined as any;
    public readonly disabledCursor: IMouseCursor = undefined as any;
    public constructor(
        enabledCursor: IMouseCursor,
        disabledCursor: IMouseCursor
    ) {
        flutter.material._textButtonDefaultMouseCursor(
            this,
            enabledCursor,
            disabledCursor
        );
    }
    private readonly _dart_resolve: (
        states: ISet<MaterialState>
    ) => IMouseCursor = undefined as any;
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
    private readonly _dart_getHashCode: () => number = undefined as any;
    public resolve(states: ISet<MaterialState>): IMouseCursor {
        return this._dart_resolve(states);
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
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
