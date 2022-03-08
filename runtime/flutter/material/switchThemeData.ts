import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IMouseCursor } from "../services/mouseCursor";
import { IMaterialStateProperty } from "./materialStateProperty";
import { MaterialTapTargetSize } from "./materialTapTargetSize";
declare const flutter: {
    material: {
        switchThemeData: (
            this: void,
            switchThemeData: ISwitchThemeData,
            props?: {
                materialTapTargetSize?: MaterialTapTargetSize | undefined;
                mouseCursor?:
                    | IMaterialStateProperty<IMouseCursor | undefined>
                    | undefined;
                overlayColor?:
                    | IMaterialStateProperty<IColor | undefined>
                    | undefined;
                splashRadius?: number | undefined;
                thumbColor?:
                    | IMaterialStateProperty<IColor | undefined>
                    | undefined;
                trackColor?:
                    | IMaterialStateProperty<IColor | undefined>
                    | undefined;
            }
        ) => ISwitchThemeData;
        switchThemeDataLerp: (
            a: ISwitchThemeData | undefined,
            b: ISwitchThemeData | undefined,
            t: number
        ) => ISwitchThemeData;
    };
};
export interface ISwitchThemeData {
    thumbColor: IMaterialStateProperty<IColor | undefined> | undefined;
    trackColor: IMaterialStateProperty<IColor | undefined> | undefined;
    materialTapTargetSize: MaterialTapTargetSize | undefined;
    mouseCursor: IMaterialStateProperty<IMouseCursor | undefined> | undefined;
    overlayColor: IMaterialStateProperty<IColor | undefined> | undefined;
    splashRadius: number | undefined;
    copyWith: (props?: {
        materialTapTargetSize?: MaterialTapTargetSize | undefined;
        mouseCursor?:
            | IMaterialStateProperty<IMouseCursor | undefined>
            | undefined;
        overlayColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        splashRadius?: number | undefined;
        thumbColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        trackColor?: IMaterialStateProperty<IColor | undefined> | undefined;
    }) => ISwitchThemeData;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class SwitchThemeData implements IDiagnosticable {
    public readonly thumbColor:
        | IMaterialStateProperty<IColor | undefined>
        | undefined = undefined as any;
    public readonly trackColor:
        | IMaterialStateProperty<IColor | undefined>
        | undefined = undefined as any;
    public readonly materialTapTargetSize: MaterialTapTargetSize | undefined =
        undefined as any;
    public readonly mouseCursor:
        | IMaterialStateProperty<IMouseCursor | undefined>
        | undefined = undefined as any;
    public readonly overlayColor:
        | IMaterialStateProperty<IColor | undefined>
        | undefined = undefined as any;
    public readonly splashRadius: number | undefined = undefined as any;
    public constructor(props?: {
        materialTapTargetSize?: MaterialTapTargetSize | undefined;
        mouseCursor?:
            | IMaterialStateProperty<IMouseCursor | undefined>
            | undefined;
        overlayColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        splashRadius?: number | undefined;
        thumbColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        trackColor?: IMaterialStateProperty<IColor | undefined> | undefined;
    }) {
        flutter.material.switchThemeData(this, props);
    }
    public static lerp(
        a: ISwitchThemeData | undefined,
        b: ISwitchThemeData | undefined,
        t: number
    ): ISwitchThemeData {
        return flutter.material.switchThemeDataLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        materialTapTargetSize?: MaterialTapTargetSize | undefined;
        mouseCursor?:
            | IMaterialStateProperty<IMouseCursor | undefined>
            | undefined;
        overlayColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        splashRadius?: number | undefined;
        thumbColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        trackColor?: IMaterialStateProperty<IColor | undefined> | undefined;
    }) => ISwitchThemeData = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
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
    public copyWith(props?: {
        materialTapTargetSize?: MaterialTapTargetSize | undefined;
        mouseCursor?:
            | IMaterialStateProperty<IMouseCursor | undefined>
            | undefined;
        overlayColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        splashRadius?: number | undefined;
        thumbColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        trackColor?: IMaterialStateProperty<IColor | undefined> | undefined;
    }): ISwitchThemeData {
        return this._dart_copyWith(props);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
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
