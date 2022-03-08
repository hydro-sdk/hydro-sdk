import { IDuration } from "../../dart/core/duration";
import { Brightness } from "../../dart/ui/brightness";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IShapeBorder } from "../painting/shapeBorder";
import { IBoxConstraints } from "../rendering/boxConstraints";
import { ButtonBarLayoutBehavior } from "./buttonBarLayoutBehavior";
import { ButtonTextTheme } from "./buttonTextTheme";
import { IColorScheme } from "./colorScheme";
import { IMaterialButton } from "./materialButton";
import { MaterialTapTargetSize } from "./materialTapTargetSize";
declare const flutter: {
    material: {
        buttonThemeData: (
            this: void,
            buttonThemeData: IButtonThemeData,
            props: {
                alignedDropdown: boolean;
                buttonColor?: IColor | undefined;
                colorScheme?: IColorScheme | undefined;
                disabledColor?: IColor | undefined;
                focusColor?: IColor | undefined;
                height: number;
                highlightColor?: IColor | undefined;
                hoverColor?: IColor | undefined;
                layoutBehavior: ButtonBarLayoutBehavior;
                materialTapTargetSize?: MaterialTapTargetSize | undefined;
                minWidth: number;
                padding?: IEdgeInsetsGeometry | undefined;
                shape?: IShapeBorder | undefined;
                splashColor?: IColor | undefined;
                textTheme: ButtonTextTheme;
            }
        ) => IButtonThemeData;
    };
};
export interface IButtonThemeData {
    minWidth: number;
    height: number;
    textTheme: ButtonTextTheme;
    layoutBehavior: ButtonBarLayoutBehavior;
    alignedDropdown: boolean;
    colorScheme: IColorScheme | undefined;
    getConstraints: (button: IMaterialButton) => IBoxConstraints;
    getPadding: (button: IMaterialButton) => IEdgeInsetsGeometry;
    getShape: (button: IMaterialButton) => IShapeBorder;
    getBrightness: (button: IMaterialButton) => Brightness;
    getTextTheme: (button: IMaterialButton) => ButtonTextTheme;
    getDisabledTextColor: (button: IMaterialButton) => IColor;
    getDisabledFillColor: (button: IMaterialButton) => IColor;
    getFillColor: (button: IMaterialButton) => IColor | undefined;
    getTextColor: (button: IMaterialButton) => IColor;
    getSplashColor: (button: IMaterialButton) => IColor;
    getFocusColor: (button: IMaterialButton) => IColor;
    getHoverColor: (button: IMaterialButton) => IColor;
    getHighlightColor: (button: IMaterialButton) => IColor;
    getElevation: (button: IMaterialButton) => number;
    getFocusElevation: (button: IMaterialButton) => number;
    getHoverElevation: (button: IMaterialButton) => number;
    getHighlightElevation: (button: IMaterialButton) => number;
    getDisabledElevation: (button: IMaterialButton) => number;
    getAnimationDuration: (button: IMaterialButton) => IDuration;
    getMaterialTapTargetSize: (
        button: IMaterialButton
    ) => MaterialTapTargetSize;
    copyWith: (props?: {
        alignedDropdown?: boolean | undefined;
        buttonColor?: IColor | undefined;
        colorScheme?: IColorScheme | undefined;
        disabledColor?: IColor | undefined;
        focusColor?: IColor | undefined;
        height?: number | undefined;
        highlightColor?: IColor | undefined;
        hoverColor?: IColor | undefined;
        layoutBehavior?: ButtonBarLayoutBehavior | undefined;
        materialTapTargetSize?: MaterialTapTargetSize | undefined;
        minWidth?: number | undefined;
        padding?: IEdgeInsetsGeometry | undefined;
        shape?: IShapeBorder | undefined;
        splashColor?: IColor | undefined;
        textTheme?: ButtonTextTheme | undefined;
    }) => IButtonThemeData;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class ButtonThemeData implements IDiagnosticable {
    public readonly minWidth: number = undefined as any;
    public readonly height: number = undefined as any;
    public readonly textTheme: ButtonTextTheme = undefined as any;
    public readonly layoutBehavior: ButtonBarLayoutBehavior = undefined as any;
    public readonly alignedDropdown: boolean = undefined as any;
    public readonly colorScheme: IColorScheme | undefined = undefined as any;
    public constructor(props: {
        alignedDropdown?: boolean;
        buttonColor?: IColor | undefined;
        colorScheme?: IColorScheme | undefined;
        disabledColor?: IColor | undefined;
        focusColor?: IColor | undefined;
        height?: number;
        highlightColor?: IColor | undefined;
        hoverColor?: IColor | undefined;
        layoutBehavior?: ButtonBarLayoutBehavior;
        materialTapTargetSize?: MaterialTapTargetSize | undefined;
        minWidth?: number;
        padding?: IEdgeInsetsGeometry | undefined;
        shape?: IShapeBorder | undefined;
        splashColor?: IColor | undefined;
        textTheme?: ButtonTextTheme;
    }) {
        flutter.material.buttonThemeData(this, {
            ...buttonThemeDataDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getConstraints: () => IBoxConstraints =
        undefined as any;
    private readonly _dart_getPadding: () => IEdgeInsetsGeometry =
        undefined as any;
    private readonly _dart_getShape: () => IShapeBorder = undefined as any;
    private readonly _dart_getBrightness: (
        button: IMaterialButton
    ) => Brightness = undefined as any;
    private readonly _dart_getTextTheme: (
        button: IMaterialButton
    ) => ButtonTextTheme = undefined as any;
    private readonly _dart_getDisabledTextColor: (
        button: IMaterialButton
    ) => IColor = undefined as any;
    private readonly _dart_getDisabledFillColor: (
        button: IMaterialButton
    ) => IColor = undefined as any;
    private readonly _dart_getFillColor: (
        button: IMaterialButton
    ) => IColor | undefined = undefined as any;
    private readonly _dart_getTextColor: (button: IMaterialButton) => IColor =
        undefined as any;
    private readonly _dart_getSplashColor: (button: IMaterialButton) => IColor =
        undefined as any;
    private readonly _dart_getFocusColor: (button: IMaterialButton) => IColor =
        undefined as any;
    private readonly _dart_getHoverColor: (button: IMaterialButton) => IColor =
        undefined as any;
    private readonly _dart_getHighlightColor: (
        button: IMaterialButton
    ) => IColor = undefined as any;
    private readonly _dart_getElevation: (button: IMaterialButton) => number =
        undefined as any;
    private readonly _dart_getFocusElevation: (
        button: IMaterialButton
    ) => number = undefined as any;
    private readonly _dart_getHoverElevation: (
        button: IMaterialButton
    ) => number = undefined as any;
    private readonly _dart_getHighlightElevation: (
        button: IMaterialButton
    ) => number = undefined as any;
    private readonly _dart_getDisabledElevation: (
        button: IMaterialButton
    ) => number = undefined as any;
    private readonly _dart_getPadding: (
        button: IMaterialButton
    ) => IEdgeInsetsGeometry = undefined as any;
    private readonly _dart_getShape: (button: IMaterialButton) => IShapeBorder =
        undefined as any;
    private readonly _dart_getAnimationDuration: (
        button: IMaterialButton
    ) => IDuration = undefined as any;
    private readonly _dart_getConstraints: (
        button: IMaterialButton
    ) => IBoxConstraints = undefined as any;
    private readonly _dart_getMaterialTapTargetSize: (
        button: IMaterialButton
    ) => MaterialTapTargetSize = undefined as any;
    private readonly _dart_copyWith: (props?: {
        alignedDropdown?: boolean | undefined;
        buttonColor?: IColor | undefined;
        colorScheme?: IColorScheme | undefined;
        disabledColor?: IColor | undefined;
        focusColor?: IColor | undefined;
        height?: number | undefined;
        highlightColor?: IColor | undefined;
        hoverColor?: IColor | undefined;
        layoutBehavior?: ButtonBarLayoutBehavior | undefined;
        materialTapTargetSize?: MaterialTapTargetSize | undefined;
        minWidth?: number | undefined;
        padding?: IEdgeInsetsGeometry | undefined;
        shape?: IShapeBorder | undefined;
        splashColor?: IColor | undefined;
        textTheme?: ButtonTextTheme | undefined;
    }) => IButtonThemeData = undefined as any;
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
    public getConstraints(): IBoxConstraints {
        return this._dart_getConstraints();
    }
    public getPadding(): IEdgeInsetsGeometry {
        return this._dart_getPadding();
    }
    public getShape(): IShapeBorder {
        return this._dart_getShape();
    }
    public getBrightness(button: IMaterialButton): Brightness {
        return this._dart_getBrightness(button);
    }
    public getTextTheme(button: IMaterialButton): ButtonTextTheme {
        return this._dart_getTextTheme(button);
    }
    public getDisabledTextColor(button: IMaterialButton): IColor {
        return this._dart_getDisabledTextColor(button);
    }
    public getDisabledFillColor(button: IMaterialButton): IColor {
        return this._dart_getDisabledFillColor(button);
    }
    public getFillColor(button: IMaterialButton): IColor | undefined {
        return this._dart_getFillColor(button);
    }
    public getTextColor(button: IMaterialButton): IColor {
        return this._dart_getTextColor(button);
    }
    public getSplashColor(button: IMaterialButton): IColor {
        return this._dart_getSplashColor(button);
    }
    public getFocusColor(button: IMaterialButton): IColor {
        return this._dart_getFocusColor(button);
    }
    public getHoverColor(button: IMaterialButton): IColor {
        return this._dart_getHoverColor(button);
    }
    public getHighlightColor(button: IMaterialButton): IColor {
        return this._dart_getHighlightColor(button);
    }
    public getElevation(button: IMaterialButton): number {
        return this._dart_getElevation(button);
    }
    public getFocusElevation(button: IMaterialButton): number {
        return this._dart_getFocusElevation(button);
    }
    public getHoverElevation(button: IMaterialButton): number {
        return this._dart_getHoverElevation(button);
    }
    public getHighlightElevation(button: IMaterialButton): number {
        return this._dart_getHighlightElevation(button);
    }
    public getDisabledElevation(button: IMaterialButton): number {
        return this._dart_getDisabledElevation(button);
    }
    public getPadding(button: IMaterialButton): IEdgeInsetsGeometry {
        return this._dart_getPadding(button);
    }
    public getShape(button: IMaterialButton): IShapeBorder {
        return this._dart_getShape(button);
    }
    public getAnimationDuration(button: IMaterialButton): IDuration {
        return this._dart_getAnimationDuration(button);
    }
    public getConstraints(button: IMaterialButton): IBoxConstraints {
        return this._dart_getConstraints(button);
    }
    public getMaterialTapTargetSize(
        button: IMaterialButton
    ): MaterialTapTargetSize {
        return this._dart_getMaterialTapTargetSize(button);
    }
    public copyWith(props?: {
        alignedDropdown?: boolean | undefined;
        buttonColor?: IColor | undefined;
        colorScheme?: IColorScheme | undefined;
        disabledColor?: IColor | undefined;
        focusColor?: IColor | undefined;
        height?: number | undefined;
        highlightColor?: IColor | undefined;
        hoverColor?: IColor | undefined;
        layoutBehavior?: ButtonBarLayoutBehavior | undefined;
        materialTapTargetSize?: MaterialTapTargetSize | undefined;
        minWidth?: number | undefined;
        padding?: IEdgeInsetsGeometry | undefined;
        shape?: IShapeBorder | undefined;
        splashColor?: IColor | undefined;
        textTheme?: ButtonTextTheme | undefined;
    }): IButtonThemeData {
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
const buttonThemeDataDefaultProps = {
    alignedDropdown: false,
    height: 36.0,
    layoutBehavior: ButtonBarLayoutBehavior.padded,
    minWidth: 88.0,
    textTheme: ButtonTextTheme.normal,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
