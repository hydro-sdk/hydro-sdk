import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IBorderSide } from "../painting/borderSide";
import { IOutlinedBorder } from "../painting/outlinedBorder";
import { IMouseCursor } from "../services/mouseCursor";
import { IMaterialStateProperty } from "./materialStateProperty";
import { MaterialTapTargetSize } from "./materialTapTargetSize";
import { IVisualDensity } from "./visualDensity";
declare const flutter: {
    material: {
        checkboxThemeData: (
            this: void,
            checkboxThemeData: ICheckboxThemeData,
            props?: {
                checkColor?:
                    | IMaterialStateProperty<IColor | undefined>
                    | undefined;
                fillColor?:
                    | IMaterialStateProperty<IColor | undefined>
                    | undefined;
                materialTapTargetSize?: MaterialTapTargetSize | undefined;
                mouseCursor?:
                    | IMaterialStateProperty<IMouseCursor | undefined>
                    | undefined;
                overlayColor?:
                    | IMaterialStateProperty<IColor | undefined>
                    | undefined;
                shape?: IOutlinedBorder | undefined;
                side?: IBorderSide | undefined;
                splashRadius?: number | undefined;
                visualDensity?: IVisualDensity | undefined;
            }
        ) => ICheckboxThemeData;
        checkboxThemeDataLerp: (
            a: ICheckboxThemeData | undefined,
            b: ICheckboxThemeData | undefined,
            t: number
        ) => ICheckboxThemeData;
    };
};
export interface ICheckboxThemeData {
    mouseCursor: IMaterialStateProperty<IMouseCursor | undefined> | undefined;
    fillColor: IMaterialStateProperty<IColor | undefined> | undefined;
    checkColor: IMaterialStateProperty<IColor | undefined> | undefined;
    overlayColor: IMaterialStateProperty<IColor | undefined> | undefined;
    splashRadius: number | undefined;
    materialTapTargetSize: MaterialTapTargetSize | undefined;
    visualDensity: IVisualDensity | undefined;
    shape: IOutlinedBorder | undefined;
    side: IBorderSide | undefined;
    copyWith: (props?: {
        checkColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        fillColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        materialTapTargetSize?: MaterialTapTargetSize | undefined;
        mouseCursor?:
            | IMaterialStateProperty<IMouseCursor | undefined>
            | undefined;
        overlayColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        shape?: IOutlinedBorder | undefined;
        side?: IBorderSide | undefined;
        splashRadius?: number | undefined;
        visualDensity?: IVisualDensity | undefined;
    }) => ICheckboxThemeData;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class CheckboxThemeData implements IDiagnosticable {
    public readonly mouseCursor:
        | IMaterialStateProperty<IMouseCursor | undefined>
        | undefined = undefined as any;
    public readonly fillColor:
        | IMaterialStateProperty<IColor | undefined>
        | undefined = undefined as any;
    public readonly checkColor:
        | IMaterialStateProperty<IColor | undefined>
        | undefined = undefined as any;
    public readonly overlayColor:
        | IMaterialStateProperty<IColor | undefined>
        | undefined = undefined as any;
    public readonly splashRadius: number | undefined = undefined as any;
    public readonly materialTapTargetSize: MaterialTapTargetSize | undefined =
        undefined as any;
    public readonly visualDensity: IVisualDensity | undefined =
        undefined as any;
    public readonly shape: IOutlinedBorder | undefined = undefined as any;
    public readonly side: IBorderSide | undefined = undefined as any;
    public constructor(props?: {
        checkColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        fillColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        materialTapTargetSize?: MaterialTapTargetSize | undefined;
        mouseCursor?:
            | IMaterialStateProperty<IMouseCursor | undefined>
            | undefined;
        overlayColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        shape?: IOutlinedBorder | undefined;
        side?: IBorderSide | undefined;
        splashRadius?: number | undefined;
        visualDensity?: IVisualDensity | undefined;
    }) {
        flutter.material.checkboxThemeData(this, props);
    }
    public static lerp(
        a: ICheckboxThemeData | undefined,
        b: ICheckboxThemeData | undefined,
        t: number
    ): ICheckboxThemeData {
        return flutter.material.checkboxThemeDataLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        checkColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        fillColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        materialTapTargetSize?: MaterialTapTargetSize | undefined;
        mouseCursor?:
            | IMaterialStateProperty<IMouseCursor | undefined>
            | undefined;
        overlayColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        shape?: IOutlinedBorder | undefined;
        side?: IBorderSide | undefined;
        splashRadius?: number | undefined;
        visualDensity?: IVisualDensity | undefined;
    }) => ICheckboxThemeData = undefined as any;
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
        checkColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        fillColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        materialTapTargetSize?: MaterialTapTargetSize | undefined;
        mouseCursor?:
            | IMaterialStateProperty<IMouseCursor | undefined>
            | undefined;
        overlayColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        shape?: IOutlinedBorder | undefined;
        side?: IBorderSide | undefined;
        splashRadius?: number | undefined;
        visualDensity?: IVisualDensity | undefined;
    }): ICheckboxThemeData {
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
