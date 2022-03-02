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
import { DatePickerDateOrder } from "./datePickerDateOrder";
declare const flutter: {
    cupertino: {
        _cupertinoDatePickerDateState: (
            this: void,
            _cupertinoDatePickerDateState: I_CupertinoDatePickerDateState,
            props?: { dateOrder?: DatePickerDateOrder | undefined }
        ) => I_CupertinoDatePickerDateState;
    };
};
export interface I_CupertinoDatePickerDateState {
    dateOrder: DatePickerDateOrder | undefined;
    textDirectionFactor: number;
    localizations: ICupertinoLocalizations;
    alignCenterLeft: IAlignment;
    alignCenterRight: IAlignment;
    selectedDay: number;
    selectedMonth: number;
    selectedYear: number;
    dayController: IFixedExtentScrollController;
    monthController: IFixedExtentScrollController;
    yearController: IFixedExtentScrollController;
    isDayPickerScrolling: boolean;
    isMonthPickerScrolling: boolean;
    isYearPickerScrolling: boolean;
    estimatedColumnWidths: { [index: number]: number };
    getIsScrolling: () => boolean;
    initState: () => void;
    dispose: () => void;
    didChangeDependencies: () => void;
    build: (context: IBuildContext) => IWidget;
    didUpdateWidget: (oldWidget: unknown) => void;
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
export class _CupertinoDatePickerDateState
    implements
        Omit<IState<ICupertinoDatePicker>, "debugFillProperties">,
        IDiagnosticable
{
    public readonly dateOrder: DatePickerDateOrder | undefined =
        undefined as any;
    public readonly textDirectionFactor: number = undefined as any;
    public readonly localizations: ICupertinoLocalizations = undefined as any;
    public readonly alignCenterLeft: IAlignment = undefined as any;
    public readonly alignCenterRight: IAlignment = undefined as any;
    public readonly selectedDay: number = undefined as any;
    public readonly selectedMonth: number = undefined as any;
    public readonly selectedYear: number = undefined as any;
    public readonly dayController: IFixedExtentScrollController =
        undefined as any;
    public readonly monthController: IFixedExtentScrollController =
        undefined as any;
    public readonly yearController: IFixedExtentScrollController =
        undefined as any;
    public readonly isDayPickerScrolling: boolean = undefined as any;
    public readonly isMonthPickerScrolling: boolean = undefined as any;
    public readonly isYearPickerScrolling: boolean = undefined as any;
    public readonly estimatedColumnWidths: { [index: number]: number } =
        undefined as any;
    public constructor(props?: {
        dateOrder?: DatePickerDateOrder | undefined;
    }) {
        flutter.cupertino._cupertinoDatePickerDateState(this, props);
    }
    private readonly _dart_getIsScrolling: () => boolean = undefined as any;
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void =
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
    public getIsScrolling(): boolean {
        return this._dart_getIsScrolling();
    }
    public initState(): void {
        return this._dart_initState();
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public didChangeDependencies(): void {
        return this._dart_didChangeDependencies();
    }
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
    }
    public didUpdateWidget(oldWidget: any): void {
        return this._dart_didUpdateWidget(oldWidget);
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
