import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IBorderSide } from "../painting/borderSide";
import { IOutlinedBorder } from "../painting/outlinedBorder";
import { IShapeBorder } from "../painting/shapeBorder";
import { ITextStyle } from "../painting/textStyle";
import { IInputDecorationTheme } from "./inputDecorationTheme";
declare const flutter: {
    material: {
        timePickerThemeData: (
            this: void,
            timePickerThemeData: ITimePickerThemeData,
            props?: {
                backgroundColor?: IColor | undefined;
                dayPeriodBorderSide?: IBorderSide | undefined;
                dayPeriodColor?: IColor | undefined;
                dayPeriodShape?: IOutlinedBorder | undefined;
                dayPeriodTextColor?: IColor | undefined;
                dayPeriodTextStyle?: ITextStyle | undefined;
                dialBackgroundColor?: IColor | undefined;
                dialHandColor?: IColor | undefined;
                dialTextColor?: IColor | undefined;
                entryModeIconColor?: IColor | undefined;
                helpTextStyle?: ITextStyle | undefined;
                hourMinuteColor?: IColor | undefined;
                hourMinuteShape?: IShapeBorder | undefined;
                hourMinuteTextColor?: IColor | undefined;
                hourMinuteTextStyle?: ITextStyle | undefined;
                inputDecorationTheme?: IInputDecorationTheme | undefined;
                shape?: IShapeBorder | undefined;
            }
        ) => ITimePickerThemeData;
        timePickerThemeDataLerp: (
            a: ITimePickerThemeData | undefined,
            b: ITimePickerThemeData | undefined,
            t: number
        ) => ITimePickerThemeData;
    };
};
export interface ITimePickerThemeData {
    backgroundColor: IColor | undefined;
    hourMinuteTextColor: IColor | undefined;
    hourMinuteColor: IColor | undefined;
    dayPeriodTextColor: IColor | undefined;
    dayPeriodColor: IColor | undefined;
    dialHandColor: IColor | undefined;
    dialBackgroundColor: IColor | undefined;
    dialTextColor: IColor | undefined;
    entryModeIconColor: IColor | undefined;
    hourMinuteTextStyle: ITextStyle | undefined;
    dayPeriodTextStyle: ITextStyle | undefined;
    helpTextStyle: ITextStyle | undefined;
    shape: IShapeBorder | undefined;
    hourMinuteShape: IShapeBorder | undefined;
    dayPeriodShape: IOutlinedBorder | undefined;
    dayPeriodBorderSide: IBorderSide | undefined;
    inputDecorationTheme: IInputDecorationTheme | undefined;
    copyWith: (props?: {
        backgroundColor?: IColor | undefined;
        dayPeriodBorderSide?: IBorderSide | undefined;
        dayPeriodColor?: IColor | undefined;
        dayPeriodShape?: IOutlinedBorder | undefined;
        dayPeriodTextColor?: IColor | undefined;
        dayPeriodTextStyle?: ITextStyle | undefined;
        dialBackgroundColor?: IColor | undefined;
        dialHandColor?: IColor | undefined;
        dialTextColor?: IColor | undefined;
        entryModeIconColor?: IColor | undefined;
        helpTextStyle?: ITextStyle | undefined;
        hourMinuteColor?: IColor | undefined;
        hourMinuteShape?: IShapeBorder | undefined;
        hourMinuteTextColor?: IColor | undefined;
        hourMinuteTextStyle?: ITextStyle | undefined;
        inputDecorationTheme?: IInputDecorationTheme | undefined;
        shape?: IShapeBorder | undefined;
    }) => ITimePickerThemeData;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class TimePickerThemeData implements IDiagnosticable {
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly hourMinuteTextColor: IColor | undefined = undefined as any;
    public readonly hourMinuteColor: IColor | undefined = undefined as any;
    public readonly dayPeriodTextColor: IColor | undefined = undefined as any;
    public readonly dayPeriodColor: IColor | undefined = undefined as any;
    public readonly dialHandColor: IColor | undefined = undefined as any;
    public readonly dialBackgroundColor: IColor | undefined = undefined as any;
    public readonly dialTextColor: IColor | undefined = undefined as any;
    public readonly entryModeIconColor: IColor | undefined = undefined as any;
    public readonly hourMinuteTextStyle: ITextStyle | undefined =
        undefined as any;
    public readonly dayPeriodTextStyle: ITextStyle | undefined =
        undefined as any;
    public readonly helpTextStyle: ITextStyle | undefined = undefined as any;
    public readonly shape: IShapeBorder | undefined = undefined as any;
    public readonly hourMinuteShape: IShapeBorder | undefined =
        undefined as any;
    public readonly dayPeriodShape: IOutlinedBorder | undefined =
        undefined as any;
    public readonly dayPeriodBorderSide: IBorderSide | undefined =
        undefined as any;
    public readonly inputDecorationTheme: IInputDecorationTheme | undefined =
        undefined as any;
    public constructor(props?: {
        backgroundColor?: IColor | undefined;
        dayPeriodBorderSide?: IBorderSide | undefined;
        dayPeriodColor?: IColor | undefined;
        dayPeriodShape?: IOutlinedBorder | undefined;
        dayPeriodTextColor?: IColor | undefined;
        dayPeriodTextStyle?: ITextStyle | undefined;
        dialBackgroundColor?: IColor | undefined;
        dialHandColor?: IColor | undefined;
        dialTextColor?: IColor | undefined;
        entryModeIconColor?: IColor | undefined;
        helpTextStyle?: ITextStyle | undefined;
        hourMinuteColor?: IColor | undefined;
        hourMinuteShape?: IShapeBorder | undefined;
        hourMinuteTextColor?: IColor | undefined;
        hourMinuteTextStyle?: ITextStyle | undefined;
        inputDecorationTheme?: IInputDecorationTheme | undefined;
        shape?: IShapeBorder | undefined;
    }) {
        flutter.material.timePickerThemeData(this, props);
    }
    public static lerp(
        a: ITimePickerThemeData | undefined,
        b: ITimePickerThemeData | undefined,
        t: number
    ): ITimePickerThemeData {
        return flutter.material.timePickerThemeDataLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        backgroundColor?: IColor | undefined;
        dayPeriodBorderSide?: IBorderSide | undefined;
        dayPeriodColor?: IColor | undefined;
        dayPeriodShape?: IOutlinedBorder | undefined;
        dayPeriodTextColor?: IColor | undefined;
        dayPeriodTextStyle?: ITextStyle | undefined;
        dialBackgroundColor?: IColor | undefined;
        dialHandColor?: IColor | undefined;
        dialTextColor?: IColor | undefined;
        entryModeIconColor?: IColor | undefined;
        helpTextStyle?: ITextStyle | undefined;
        hourMinuteColor?: IColor | undefined;
        hourMinuteShape?: IShapeBorder | undefined;
        hourMinuteTextColor?: IColor | undefined;
        hourMinuteTextStyle?: ITextStyle | undefined;
        inputDecorationTheme?: IInputDecorationTheme | undefined;
        shape?: IShapeBorder | undefined;
    }) => ITimePickerThemeData = undefined as any;
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
        backgroundColor?: IColor | undefined;
        dayPeriodBorderSide?: IBorderSide | undefined;
        dayPeriodColor?: IColor | undefined;
        dayPeriodShape?: IOutlinedBorder | undefined;
        dayPeriodTextColor?: IColor | undefined;
        dayPeriodTextStyle?: ITextStyle | undefined;
        dialBackgroundColor?: IColor | undefined;
        dialHandColor?: IColor | undefined;
        dialTextColor?: IColor | undefined;
        entryModeIconColor?: IColor | undefined;
        helpTextStyle?: ITextStyle | undefined;
        hourMinuteColor?: IColor | undefined;
        hourMinuteShape?: IShapeBorder | undefined;
        hourMinuteTextColor?: IColor | undefined;
        hourMinuteTextStyle?: ITextStyle | undefined;
        inputDecorationTheme?: IInputDecorationTheme | undefined;
        shape?: IShapeBorder | undefined;
    }): ITimePickerThemeData {
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
