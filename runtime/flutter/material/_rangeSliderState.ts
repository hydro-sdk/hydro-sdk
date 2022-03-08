import { ITimer } from "../../dart/async/timer";
import { Duration, IDuration } from "../../dart/core/duration";
import { IAnimationController } from "../animation/animationController";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { ITicker } from "../scheduler/ticker";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { IBuildContext } from "../widgets/buildContext";
import { IOverlayEntry } from "../widgets/overlayEntry";
import { IState } from "../widgets/state";
import { ITickerProviderStateMixin } from "../widgets/tickerProviderStateMixin";
import { IWidget } from "../widgets/widget";
import { IRangeSlider } from "./rangeSlider";
declare const flutter: {
    material: {
        _rangeSliderState: (
            this: void,
            _rangeSliderState: I_RangeSliderState
        ) => I_RangeSliderState;
    };
};
export interface I_RangeSliderState {
    overlayController: IAnimationController;
    valueIndicatorController: IAnimationController;
    enableController: IAnimationController;
    startPositionController: IAnimationController;
    endPositionController: IAnimationController;
    interactionTimer: ITimer | undefined;
    overlayEntry: IOverlayEntry | undefined;
    initState: () => void;
    didUpdateWidget: (oldWidget: unknown) => void;
    dispose: () => void;
    build: (context: IBuildContext) => IWidget;
    showValueIndicator: () => void;
    createTicker: (onTick: (elapsed: IDuration) => void) => ITicker;
    didChangeDependencies: () => void;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    reassemble: () => void;
    setState: (fn: () => void) => void;
    deactivate: () => void;
    activate: () => void;
    getWidget: () => IRangeSlider;
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
export class _RangeSliderState
    implements
        Omit<
            IState<IRangeSlider>,
            "dispose" | "didChangeDependencies" | "debugFillProperties"
        >,
        ITickerProviderStateMixin<IRangeSlider>,
        IDiagnosticable,
        ITickerProvider
{
    public static enableAnimationDuration = new Duration({ milliseconds: 75 });
    public static valueIndicatorAnimationDuration = new Duration({
        milliseconds: 100,
    });
    public readonly overlayController: IAnimationController = undefined as any;
    public readonly valueIndicatorController: IAnimationController =
        undefined as any;
    public readonly enableController: IAnimationController = undefined as any;
    public readonly startPositionController: IAnimationController =
        undefined as any;
    public readonly endPositionController: IAnimationController =
        undefined as any;
    public readonly interactionTimer: ITimer | undefined = undefined as any;
    public readonly overlayEntry: IOverlayEntry | undefined = undefined as any;
    public constructor() {
        flutter.material._rangeSliderState(this);
    }
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_showValueIndicator: () => void = undefined as any;
    private readonly _dart_createTicker: (
        onTick: (elapsed: IDuration) => void
    ) => ITicker = undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn: () => void) => void =
        undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_getWidget: () => IRangeSlider = undefined as any;
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
    public didUpdateWidget(oldWidget: any): void {
        return this._dart_didUpdateWidget(oldWidget);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
    }
    public showValueIndicator(): void {
        return this._dart_showValueIndicator();
    }
    public createTicker(onTick: (elapsed: IDuration) => void): ITicker {
        return this._dart_createTicker(onTick);
    }
    public didChangeDependencies(): void {
        return this._dart_didChangeDependencies();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
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
    public getWidget(): IRangeSlider {
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
