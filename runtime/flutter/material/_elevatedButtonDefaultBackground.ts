import { ISet } from "../../dart/core/set";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { MaterialState } from "./materialState";
import { IMaterialStateProperty } from "./materialStateProperty";
declare const flutter: {
    material: {
        _elevatedButtonDefaultBackground: (
            this: void,
            _elevatedButtonDefaultBackground: I_ElevatedButtonDefaultBackground,
            primary?: IColor | undefined,
            onSurface?: IColor | undefined
        ) => I_ElevatedButtonDefaultBackground;
    };
};
export interface I_ElevatedButtonDefaultBackground {
    primary: IColor | undefined;
    onSurface: IColor | undefined;
    resolve: (states: ISet<MaterialState>) => IColor | undefined;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getHashCode: () => number;
}
export class _ElevatedButtonDefaultBackground
    implements IMaterialStateProperty<?IColor>, IDiagnosticable
{
    public readonly primary: IColor | undefined = undefined as any;
    public readonly onSurface: IColor | undefined = undefined as any;
    public constructor(
        primary?: IColor | undefined,
        onSurface?: IColor | undefined
    ) {
        flutter.material._elevatedButtonDefaultBackground(
            this,
            primary,
            onSurface
        );
    }
    private readonly _dart_resolve: (
        states: ISet<MaterialState>
    ) => IColor | undefined = undefined as any;
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
    public resolve(states: ISet<MaterialState>): IColor | undefined {
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
