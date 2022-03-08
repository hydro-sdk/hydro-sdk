import { Duration, IDuration } from "../../dart/core/duration";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDecoration } from "../painting/decoration";
import { EdgeInsets } from "../painting/edgeInsets";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { ITextStyle } from "../painting/textStyle";
import { ITicker } from "../scheduler/ticker";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { IBuildContext } from "../widgets/buildContext";
import { ISingleTickerProviderStateMixin } from "../widgets/singleTickerProviderStateMixin";
import { IState } from "../widgets/state";
import { IWidget } from "../widgets/widget";
import { ITooltip } from "./tooltip";
import { TooltipTriggerMode } from "./tooltipTriggerMode";
declare const flutter: {
    material: {
        _tooltipState: (
            this: void,
            _tooltipState: I_TooltipState
        ) => I_TooltipState;
    };
};
export interface I_TooltipState {
    height: number;
    padding: IEdgeInsetsGeometry;
    margin: IEdgeInsetsGeometry;
    decoration: IDecoration;
    textStyle: ITextStyle;
    verticalOffset: number;
    preferBelow: boolean;
    excludeFromSemantics: boolean;
    showDuration: IDuration;
    hoverShowDuration: IDuration;
    waitDuration: IDuration;
    triggerMode: TooltipTriggerMode;
    enableFeedback: boolean;
    initState: () => void;
    didChangeDependencies: () => void;
    ensureTooltipVisible: () => boolean;
    deactivate: () => void;
    dispose: () => void;
    build: (context: IBuildContext) => IWidget;
    createTicker: (onTick: (elapsed: IDuration) => void) => ITicker;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    didUpdateWidget: (oldWidget: unknown) => void;
    reassemble: () => void;
    setState: (fn: () => void) => void;
    activate: () => void;
    getWidget: () => ITooltip;
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
export class _TooltipState
    implements
        Omit<
            IState<ITooltip>,
            "dispose" | "didChangeDependencies" | "debugFillProperties"
        >,
        ISingleTickerProviderStateMixin<ITooltip>,
        IDiagnosticable,
        ITickerProvider
{
    public static _defaultVerticalOffset = 24.0;
    public static _defaultPreferBelow = true;
    public static _defaultMargin = EdgeInsets.zero;
    public static _fadeInDuration = new Duration({ milliseconds: 150 });
    public static _fadeOutDuration = new Duration({ milliseconds: 75 });
    public static _defaultShowDuration = new Duration({ milliseconds: 1500 });
    public static _defaultHoverShowDuration = new Duration({
        milliseconds: 100,
    });
    public static _defaultWaitDuration = Duration.zero;
    public static _defaultExcludeFromSemantics = false;
    public static _defaultTriggerMode = TooltipTriggerMode.longPress;
    public static _defaultEnableFeedback = true;
    public readonly height: number = undefined as any;
    public readonly padding: IEdgeInsetsGeometry = undefined as any;
    public readonly margin: IEdgeInsetsGeometry = undefined as any;
    public readonly decoration: IDecoration = undefined as any;
    public readonly textStyle: ITextStyle = undefined as any;
    public readonly verticalOffset: number = undefined as any;
    public readonly preferBelow: boolean = undefined as any;
    public readonly excludeFromSemantics: boolean = undefined as any;
    public readonly showDuration: IDuration = undefined as any;
    public readonly hoverShowDuration: IDuration = undefined as any;
    public readonly waitDuration: IDuration = undefined as any;
    public readonly triggerMode: TooltipTriggerMode = undefined as any;
    public readonly enableFeedback: boolean = undefined as any;
    public constructor() {
        flutter.material._tooltipState(this);
    }
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_ensureTooltipVisible: () => boolean =
        undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_createTicker: (
        onTick: (elapsed: IDuration) => void
    ) => ITicker = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void =
        undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn: () => void) => void =
        undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_getWidget: () => ITooltip = undefined as any;
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
    public initState(): void {
        return this._dart_initState();
    }
    public didChangeDependencies(): void {
        return this._dart_didChangeDependencies();
    }
    public ensureTooltipVisible(): boolean {
        return this._dart_ensureTooltipVisible();
    }
    public deactivate(): void {
        return this._dart_deactivate();
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
    }
    public createTicker(onTick: (elapsed: IDuration) => void): ITicker {
        return this._dart_createTicker(onTick);
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
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
    public activate(): void {
        return this._dart_activate();
    }
    public getWidget(): ITooltip {
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
