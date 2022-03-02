import { IDateTime } from "../../dart/core/dateTime";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IAlignment } from "../painting/alignment";
import { IBuildContext } from "../widgets/buildContext";
import { IFixedExtentScrollController } from "../widgets/fixedExtentScrollController";
import { IState } from "../widgets/state";
import { IWidget } from "../widgets/widget";
import { ICupertinoDatePicker } from "./cupertinoDatePicker";
import { ICupertinoLocalizations } from "./cupertinoLocalizations";
declare const flutter: {
    cupertino: {
        _cupertinoDatePickerDateTimeState: (
            this: void,
            _cupertinoDatePickerDateTimeState: I_CupertinoDatePickerDateTimeState
        ) => I_CupertinoDatePickerDateTimeState;
    };
};
export interface I_CupertinoDatePickerDateTimeState {
    textDirectionFactor: number;
    localizations: ICupertinoLocalizations;
    alignCenterLeft: IAlignment;
    alignCenterRight: IAlignment;
    initialDateTime: IDateTime;
    dateController: IFixedExtentScrollController;
    hourController: IFixedExtentScrollController;
    minuteController: IFixedExtentScrollController;
    selectedAmPm: number;
    meridiemRegion: number;
    meridiemController: IFixedExtentScrollController;
    isDatePickerScrolling: boolean;
    isHourPickerScrolling: boolean;
    isMinutePickerScrolling: boolean;
    isMeridiemPickerScrolling: boolean;
    estimatedColumnWidths: { [index: number]: number };
    getSelectedDayFromInitial: () => number;
    getSelectedHour: () => number;
    getSelectedMinute: () => number;
    getIsHourRegionFlipped: () => boolean;
    getIsScrolling: () => boolean;
    initState: () => void;
    dispose: () => void;
    didUpdateWidget: (oldWidget: unknown) => void;
    didChangeDependencies: () => void;
    getSelectedDateTime: () => IDateTime;
    build: (context: IBuildContext) => IWidget;
    reassemble: () => void;
    setState: (fn: () => void) => void;
    deactivate: () => void;
    activate: () => void;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getWidget: () => ICupertinoDatePicker;
    getContext: () => IBuildContext;
    getMounted: () => boolean;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    getHashCode: () => number;
}
export class _CupertinoDatePickerDateTimeState
    implements
        Omit<IState<ICupertinoDatePicker>, "debugFillProperties">,
        IDiagnosticable
{
    public static _kMaximumOffAxisFraction = 0.45;
    public readonly textDirectionFactor: number = undefined as any;
    public readonly localizations: ICupertinoLocalizations = undefined as any;
    public readonly alignCenterLeft: IAlignment = undefined as any;
    public readonly alignCenterRight: IAlignment = undefined as any;
    public readonly initialDateTime: IDateTime = undefined as any;
    public readonly dateController: IFixedExtentScrollController =
        undefined as any;
    public readonly hourController: IFixedExtentScrollController =
        undefined as any;
    public readonly minuteController: IFixedExtentScrollController =
        undefined as any;
    public readonly selectedAmPm: number = undefined as any;
    public readonly meridiemRegion: number = undefined as any;
    public readonly meridiemController: IFixedExtentScrollController =
        undefined as any;
    public readonly isDatePickerScrolling: boolean = undefined as any;
    public readonly isHourPickerScrolling: boolean = undefined as any;
    public readonly isMinutePickerScrolling: boolean = undefined as any;
    public readonly isMeridiemPickerScrolling: boolean = undefined as any;
    public readonly estimatedColumnWidths: { [index: number]: number } =
        undefined as any;
    public constructor() {
        flutter.cupertino._cupertinoDatePickerDateTimeState(this);
    }
    private readonly _dart_getSelectedDayFromInitial: () => number =
        undefined as any;
    private readonly _dart_getSelectedHour: () => number = undefined as any;
    private readonly _dart_getSelectedMinute: () => number = undefined as any;
    private readonly _dart_getIsHourRegionFlipped: () => boolean =
        undefined as any;
    private readonly _dart_getIsScrolling: () => boolean = undefined as any;
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void =
        undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_getSelectedDateTime: () => IDateTime =
        undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn: () => void) => void =
        undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getWidget: () => ICupertinoDatePicker =
        undefined as any;
    private readonly _dart_getContext: () => IBuildContext = undefined as any;
    private readonly _dart_getMounted: () => boolean = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getSelectedDayFromInitial(): number {
        return this._dart_getSelectedDayFromInitial();
    }
    public getSelectedHour(): number {
        return this._dart_getSelectedHour();
    }
    public getSelectedMinute(): number {
        return this._dart_getSelectedMinute();
    }
    public getIsHourRegionFlipped(): boolean {
        return this._dart_getIsHourRegionFlipped();
    }
    public getIsScrolling(): boolean {
        return this._dart_getIsScrolling();
    }
    public initState(): void {
        return this._dart_initState();
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public didUpdateWidget(oldWidget: any): void {
        return this._dart_didUpdateWidget(oldWidget);
    }
    public didChangeDependencies(): void {
        return this._dart_didChangeDependencies();
    }
    public getSelectedDateTime(): IDateTime {
        return this._dart_getSelectedDateTime();
    }
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
    }
    public reassemble(): void {
        return this._dart_reassemble();
    }
    public setState(fn: () => void): void {
        return this._dart_setState(fn);
    }
    public deactivate(): void {
        return this._dart_deactivate();
    }
    public activate(): void {
        return this._dart_activate();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public getWidget(): ICupertinoDatePicker {
        return this._dart_getWidget();
    }
    public getContext(): IBuildContext {
        return this._dart_getContext();
    }
    public getMounted(): boolean {
        return this._dart_getMounted();
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
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
