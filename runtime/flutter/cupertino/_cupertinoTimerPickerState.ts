import { IList } from "../../dart/core/list";
import { TextDirection } from "../../dart/ui/textDirection";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { ITextPainter } from "../painting/textPainter";
import { IBuildContext } from "../widgets/buildContext";
import { IState } from "../widgets/state";
import { IWidget } from "../widgets/widget";
import { ICupertinoLocalizations } from "./cupertinoLocalizations";
import { ICupertinoTimerPicker } from "./cupertinoTimerPicker";
declare const flutter: {
    cupertino: {
        _cupertinoTimerPickerState: (
            this: void,
            _cupertinoTimerPickerState: I_CupertinoTimerPickerState
        ) => I_CupertinoTimerPickerState;
    };
};
export interface I_CupertinoTimerPickerState {
    textDirection: TextDirection;
    localizations: ICupertinoLocalizations;
    selectedHour: number | undefined;
    selectedMinute: number;
    selectedSecond: number | undefined;
    lastSelectedHour: number | undefined;
    lastSelectedMinute: number | undefined;
    lastSelectedSecond: number | undefined;
    textPainter: ITextPainter;
    numbers: IList<string>;
    numberLabelWidth: number;
    numberLabelHeight: number;
    numberLabelBaseline: number;
    hourLabelWidth: number;
    minuteLabelWidth: number;
    secondLabelWidth: number;
    totalWidth: number;
    pickerColumnWidth: number;
    getTextDirectionFactor: () => number;
    initState: () => void;
    dispose: () => void;
    didUpdateWidget: (oldWidget: unknown) => void;
    didChangeDependencies: () => void;
    build: (context: IBuildContext) => IWidget;
    reassemble: () => void;
    setState: (fn: () => void) => void;
    deactivate: () => void;
    activate: () => void;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getWidget: () => ICupertinoTimerPicker;
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
export class _CupertinoTimerPickerState
    implements
        Omit<IState<ICupertinoTimerPicker>, "debugFillProperties">,
        IDiagnosticable
{
    public readonly textDirection: TextDirection = undefined as any;
    public readonly localizations: ICupertinoLocalizations = undefined as any;
    public readonly selectedHour: number | undefined = undefined as any;
    public readonly selectedMinute: number = undefined as any;
    public readonly selectedSecond: number | undefined = undefined as any;
    public readonly lastSelectedHour: number | undefined = undefined as any;
    public readonly lastSelectedMinute: number | undefined = undefined as any;
    public readonly lastSelectedSecond: number | undefined = undefined as any;
    public readonly textPainter: ITextPainter = undefined as any;
    public readonly numbers: IList<string> = undefined as any;
    public readonly numberLabelWidth: number = undefined as any;
    public readonly numberLabelHeight: number = undefined as any;
    public readonly numberLabelBaseline: number = undefined as any;
    public readonly hourLabelWidth: number = undefined as any;
    public readonly minuteLabelWidth: number = undefined as any;
    public readonly secondLabelWidth: number = undefined as any;
    public readonly totalWidth: number = undefined as any;
    public readonly pickerColumnWidth: number = undefined as any;
    public constructor() {
        flutter.cupertino._cupertinoTimerPickerState(this);
    }
    private readonly _dart_getTextDirectionFactor: () => number =
        undefined as any;
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void =
        undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
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
    private readonly _dart_getWidget: () => ICupertinoTimerPicker =
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
    public getTextDirectionFactor(): number {
        return this._dart_getTextDirectionFactor();
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
    public getWidget(): ICupertinoTimerPicker {
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
