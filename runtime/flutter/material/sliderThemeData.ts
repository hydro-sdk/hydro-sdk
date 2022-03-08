import { IColor } from "../../dart/ui/color";
import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { ITextStyle } from "../painting/textStyle";
import { IRangeSliderThumbShape } from "./rangeSliderThumbShape";
import { IRangeSliderTickMarkShape } from "./rangeSliderTickMarkShape";
import { IRangeSliderTrackShape } from "./rangeSliderTrackShape";
import { IRangeSliderValueIndicatorShape } from "./rangeSliderValueIndicatorShape";
import { IRangeValues } from "./rangeValues";
import { ShowValueIndicator } from "./showValueIndicator";
import { ISliderComponentShape } from "./sliderComponentShape";
import { ISliderTickMarkShape } from "./sliderTickMarkShape";
import { ISliderTrackShape } from "./sliderTrackShape";
import { Thumb } from "./thumb";
declare const flutter: {
    material: {
        sliderThemeData: (
            this: void,
            sliderThemeData: ISliderThemeData,
            props?: {
                activeTickMarkColor?: IColor | undefined;
                activeTrackColor?: IColor | undefined;
                disabledActiveTickMarkColor?: IColor | undefined;
                disabledActiveTrackColor?: IColor | undefined;
                disabledInactiveTickMarkColor?: IColor | undefined;
                disabledInactiveTrackColor?: IColor | undefined;
                disabledThumbColor?: IColor | undefined;
                inactiveTickMarkColor?: IColor | undefined;
                inactiveTrackColor?: IColor | undefined;
                minThumbSeparation?: number | undefined;
                overlappingShapeStrokeColor?: IColor | undefined;
                overlayColor?: IColor | undefined;
                overlayShape?: ISliderComponentShape | undefined;
                rangeThumbShape?: IRangeSliderThumbShape | undefined;
                rangeTickMarkShape?: IRangeSliderTickMarkShape | undefined;
                rangeTrackShape?: IRangeSliderTrackShape | undefined;
                rangeValueIndicatorShape?:
                    | IRangeSliderValueIndicatorShape
                    | undefined;
                showValueIndicator?: ShowValueIndicator | undefined;
                thumbColor?: IColor | undefined;
                thumbSelector?: (
                    textDirection: TextDirection,
                    values: IRangeValues,
                    tapValue: number,
                    thumbSize: ISize,
                    trackSize: ISize,
                    dx: number
                ) => Thumb | undefined | undefined;
                thumbShape?: ISliderComponentShape | undefined;
                tickMarkShape?: ISliderTickMarkShape | undefined;
                trackHeight?: number | undefined;
                trackShape?: ISliderTrackShape | undefined;
                valueIndicatorColor?: IColor | undefined;
                valueIndicatorShape?: ISliderComponentShape | undefined;
                valueIndicatorTextStyle?: ITextStyle | undefined;
            }
        ) => ISliderThemeData;
        sliderThemeDataFromPrimaryColors: (props: {
            primaryColor: IColor;
            primaryColorDark: IColor;
            primaryColorLight: IColor;
            valueIndicatorTextStyle: ITextStyle;
        }) => ISliderThemeData;
        sliderThemeDataLerp: (
            a: ISliderThemeData,
            b: ISliderThemeData,
            t: number
        ) => ISliderThemeData;
    };
};
export interface ISliderThemeData {
    trackHeight: number | undefined;
    activeTrackColor: IColor | undefined;
    inactiveTrackColor: IColor | undefined;
    disabledActiveTrackColor: IColor | undefined;
    disabledInactiveTrackColor: IColor | undefined;
    activeTickMarkColor: IColor | undefined;
    inactiveTickMarkColor: IColor | undefined;
    disabledActiveTickMarkColor: IColor | undefined;
    disabledInactiveTickMarkColor: IColor | undefined;
    thumbColor: IColor | undefined;
    overlappingShapeStrokeColor: IColor | undefined;
    disabledThumbColor: IColor | undefined;
    overlayColor: IColor | undefined;
    valueIndicatorColor: IColor | undefined;
    overlayShape: ISliderComponentShape | undefined;
    tickMarkShape: ISliderTickMarkShape | undefined;
    thumbShape: ISliderComponentShape | undefined;
    trackShape: ISliderTrackShape | undefined;
    valueIndicatorShape: ISliderComponentShape | undefined;
    rangeTickMarkShape: IRangeSliderTickMarkShape | undefined;
    rangeThumbShape: IRangeSliderThumbShape | undefined;
    rangeTrackShape: IRangeSliderTrackShape | undefined;
    rangeValueIndicatorShape: IRangeSliderValueIndicatorShape | undefined;
    showValueIndicator: ShowValueIndicator | undefined;
    valueIndicatorTextStyle: ITextStyle | undefined;
    minThumbSeparation: number | undefined;
    copyWith: (props?: {
        activeTickMarkColor?: IColor | undefined;
        activeTrackColor?: IColor | undefined;
        disabledActiveTickMarkColor?: IColor | undefined;
        disabledActiveTrackColor?: IColor | undefined;
        disabledInactiveTickMarkColor?: IColor | undefined;
        disabledInactiveTrackColor?: IColor | undefined;
        disabledThumbColor?: IColor | undefined;
        inactiveTickMarkColor?: IColor | undefined;
        inactiveTrackColor?: IColor | undefined;
        minThumbSeparation?: number | undefined;
        overlappingShapeStrokeColor?: IColor | undefined;
        overlayColor?: IColor | undefined;
        overlayShape?: ISliderComponentShape | undefined;
        rangeThumbShape?: IRangeSliderThumbShape | undefined;
        rangeTickMarkShape?: IRangeSliderTickMarkShape | undefined;
        rangeTrackShape?: IRangeSliderTrackShape | undefined;
        rangeValueIndicatorShape?: IRangeSliderValueIndicatorShape | undefined;
        showValueIndicator?: ShowValueIndicator | undefined;
        thumbColor?: IColor | undefined;
        thumbSelector?: (
            textDirection: TextDirection,
            values: IRangeValues,
            tapValue: number,
            thumbSize: ISize,
            trackSize: ISize,
            dx: number
        ) => Thumb | undefined | undefined;
        thumbShape?: ISliderComponentShape | undefined;
        tickMarkShape?: ISliderTickMarkShape | undefined;
        trackHeight?: number | undefined;
        trackShape?: ISliderTrackShape | undefined;
        valueIndicatorColor?: IColor | undefined;
        valueIndicatorShape?: ISliderComponentShape | undefined;
        valueIndicatorTextStyle?: ITextStyle | undefined;
    }) => ISliderThemeData;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class SliderThemeData implements IDiagnosticable {
    public readonly trackHeight: number | undefined = undefined as any;
    public readonly activeTrackColor: IColor | undefined = undefined as any;
    public readonly inactiveTrackColor: IColor | undefined = undefined as any;
    public readonly disabledActiveTrackColor: IColor | undefined =
        undefined as any;
    public readonly disabledInactiveTrackColor: IColor | undefined =
        undefined as any;
    public readonly activeTickMarkColor: IColor | undefined = undefined as any;
    public readonly inactiveTickMarkColor: IColor | undefined =
        undefined as any;
    public readonly disabledActiveTickMarkColor: IColor | undefined =
        undefined as any;
    public readonly disabledInactiveTickMarkColor: IColor | undefined =
        undefined as any;
    public readonly thumbColor: IColor | undefined = undefined as any;
    public readonly overlappingShapeStrokeColor: IColor | undefined =
        undefined as any;
    public readonly disabledThumbColor: IColor | undefined = undefined as any;
    public readonly overlayColor: IColor | undefined = undefined as any;
    public readonly valueIndicatorColor: IColor | undefined = undefined as any;
    public readonly overlayShape: ISliderComponentShape | undefined =
        undefined as any;
    public readonly tickMarkShape: ISliderTickMarkShape | undefined =
        undefined as any;
    public readonly thumbShape: ISliderComponentShape | undefined =
        undefined as any;
    public readonly trackShape: ISliderTrackShape | undefined =
        undefined as any;
    public readonly valueIndicatorShape: ISliderComponentShape | undefined =
        undefined as any;
    public readonly rangeTickMarkShape: IRangeSliderTickMarkShape | undefined =
        undefined as any;
    public readonly rangeThumbShape: IRangeSliderThumbShape | undefined =
        undefined as any;
    public readonly rangeTrackShape: IRangeSliderTrackShape | undefined =
        undefined as any;
    public readonly rangeValueIndicatorShape:
        | IRangeSliderValueIndicatorShape
        | undefined = undefined as any;
    public readonly showValueIndicator: ShowValueIndicator | undefined =
        undefined as any;
    public readonly valueIndicatorTextStyle: ITextStyle | undefined =
        undefined as any;
    public readonly minThumbSeparation: number | undefined = undefined as any;
    public constructor(props?: {
        activeTickMarkColor?: IColor | undefined;
        activeTrackColor?: IColor | undefined;
        disabledActiveTickMarkColor?: IColor | undefined;
        disabledActiveTrackColor?: IColor | undefined;
        disabledInactiveTickMarkColor?: IColor | undefined;
        disabledInactiveTrackColor?: IColor | undefined;
        disabledThumbColor?: IColor | undefined;
        inactiveTickMarkColor?: IColor | undefined;
        inactiveTrackColor?: IColor | undefined;
        minThumbSeparation?: number | undefined;
        overlappingShapeStrokeColor?: IColor | undefined;
        overlayColor?: IColor | undefined;
        overlayShape?: ISliderComponentShape | undefined;
        rangeThumbShape?: IRangeSliderThumbShape | undefined;
        rangeTickMarkShape?: IRangeSliderTickMarkShape | undefined;
        rangeTrackShape?: IRangeSliderTrackShape | undefined;
        rangeValueIndicatorShape?: IRangeSliderValueIndicatorShape | undefined;
        showValueIndicator?: ShowValueIndicator | undefined;
        thumbColor?: IColor | undefined;
        thumbSelector?: (
            textDirection: TextDirection,
            values: IRangeValues,
            tapValue: number,
            thumbSize: ISize,
            trackSize: ISize,
            dx: number
        ) => Thumb | undefined | undefined;
        thumbShape?: ISliderComponentShape | undefined;
        tickMarkShape?: ISliderTickMarkShape | undefined;
        trackHeight?: number | undefined;
        trackShape?: ISliderTrackShape | undefined;
        valueIndicatorColor?: IColor | undefined;
        valueIndicatorShape?: ISliderComponentShape | undefined;
        valueIndicatorTextStyle?: ITextStyle | undefined;
    }) {
        flutter.material.sliderThemeData(this, props);
    }
    public static fromPrimaryColors(props: {
        primaryColor: IColor;
        primaryColorDark: IColor;
        primaryColorLight: IColor;
        valueIndicatorTextStyle: ITextStyle;
    }): ISliderThemeData {
        return flutter.material.sliderThemeDataFromPrimaryColors(props);
    }
    public static lerp(
        a: ISliderThemeData,
        b: ISliderThemeData,
        t: number
    ): ISliderThemeData {
        return flutter.material.sliderThemeDataLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        activeTickMarkColor?: IColor | undefined;
        activeTrackColor?: IColor | undefined;
        disabledActiveTickMarkColor?: IColor | undefined;
        disabledActiveTrackColor?: IColor | undefined;
        disabledInactiveTickMarkColor?: IColor | undefined;
        disabledInactiveTrackColor?: IColor | undefined;
        disabledThumbColor?: IColor | undefined;
        inactiveTickMarkColor?: IColor | undefined;
        inactiveTrackColor?: IColor | undefined;
        minThumbSeparation?: number | undefined;
        overlappingShapeStrokeColor?: IColor | undefined;
        overlayColor?: IColor | undefined;
        overlayShape?: ISliderComponentShape | undefined;
        rangeThumbShape?: IRangeSliderThumbShape | undefined;
        rangeTickMarkShape?: IRangeSliderTickMarkShape | undefined;
        rangeTrackShape?: IRangeSliderTrackShape | undefined;
        rangeValueIndicatorShape?: IRangeSliderValueIndicatorShape | undefined;
        showValueIndicator?: ShowValueIndicator | undefined;
        thumbColor?: IColor | undefined;
        thumbSelector?: (
            textDirection: TextDirection,
            values: IRangeValues,
            tapValue: number,
            thumbSize: ISize,
            trackSize: ISize,
            dx: number
        ) => Thumb | undefined | undefined;
        thumbShape?: ISliderComponentShape | undefined;
        tickMarkShape?: ISliderTickMarkShape | undefined;
        trackHeight?: number | undefined;
        trackShape?: ISliderTrackShape | undefined;
        valueIndicatorColor?: IColor | undefined;
        valueIndicatorShape?: ISliderComponentShape | undefined;
        valueIndicatorTextStyle?: ITextStyle | undefined;
    }) => ISliderThemeData = undefined as any;
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
        activeTickMarkColor?: IColor | undefined;
        activeTrackColor?: IColor | undefined;
        disabledActiveTickMarkColor?: IColor | undefined;
        disabledActiveTrackColor?: IColor | undefined;
        disabledInactiveTickMarkColor?: IColor | undefined;
        disabledInactiveTrackColor?: IColor | undefined;
        disabledThumbColor?: IColor | undefined;
        inactiveTickMarkColor?: IColor | undefined;
        inactiveTrackColor?: IColor | undefined;
        minThumbSeparation?: number | undefined;
        overlappingShapeStrokeColor?: IColor | undefined;
        overlayColor?: IColor | undefined;
        overlayShape?: ISliderComponentShape | undefined;
        rangeThumbShape?: IRangeSliderThumbShape | undefined;
        rangeTickMarkShape?: IRangeSliderTickMarkShape | undefined;
        rangeTrackShape?: IRangeSliderTrackShape | undefined;
        rangeValueIndicatorShape?: IRangeSliderValueIndicatorShape | undefined;
        showValueIndicator?: ShowValueIndicator | undefined;
        thumbColor?: IColor | undefined;
        thumbSelector?: (
            textDirection: TextDirection,
            values: IRangeValues,
            tapValue: number,
            thumbSize: ISize,
            trackSize: ISize,
            dx: number
        ) => Thumb | undefined | undefined;
        thumbShape?: ISliderComponentShape | undefined;
        tickMarkShape?: ISliderTickMarkShape | undefined;
        trackHeight?: number | undefined;
        trackShape?: ISliderTrackShape | undefined;
        valueIndicatorColor?: IColor | undefined;
        valueIndicatorShape?: ISliderComponentShape | undefined;
        valueIndicatorTextStyle?: ITextStyle | undefined;
    }): ISliderThemeData {
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
