import { IDuration } from "../../dart/core/duration";
import { IRect } from "../../dart/ui/rect";
import { IAnimatable } from "../animation/animatable";
import { IAnimation } from "../animation/animation";
import { IAnimationController } from "../animation/animationController";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDragDownDetails } from "../gestures/dragDownDetails";
import { IDragEndDetails } from "../gestures/dragEndDetails";
import { IDragUpdateDetails } from "../gestures/dragUpdateDetails";
import { IHorizontalDragGestureRecognizer } from "../gestures/horizontalDragGestureRecognizer";
import { ILongPressGestureRecognizer } from "../gestures/longPressGestureRecognizer";
import { ITapGestureRecognizer } from "../gestures/tapGestureRecognizer";
import { ITapUpDetails } from "../gestures/tapUpDetails";
import { ITicker } from "../scheduler/ticker";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { IBuildContext } from "../widgets/buildContext";
import { IState } from "../widgets/state";
import { ITickerProviderStateMixin } from "../widgets/tickerProviderStateMixin";
import { IWidget } from "../widgets/widget";
import { ICupertinoSlidingSegmentedControl } from "./cupertinoSlidingSegmentedControl";
declare const flutter: {
    cupertino: {
        _segmentedControlState: <T>(
            this: void,
            _segmentedControlState: I_SegmentedControlState<T>
        ) => I_SegmentedControlState<T>;
    };
};
export interface I_SegmentedControlState<T> {
    thumbController: IAnimationController;
    thumbAnimatable: IAnimatable<IRect | undefined> | undefined;
    thumbScaleController: IAnimationController;
    thumbScaleAnimation: IAnimation<number>;
    tap: ITapGestureRecognizer;
    drag: IHorizontalDragGestureRecognizer;
    longPress: ILongPressGestureRecognizer;
    initState: () => void;
    didUpdateWidget: (oldWidget: unknown) => void;
    dispose: () => void;
    getIsThumbDragging: () => boolean;
    segmentForXPosition: (dx: number) => T;
    onHighlightChangedByGesture: (newValue: T) => void;
    onPressedChangedByGesture: (newValue?: T | undefined) => void;
    onTapUp: (details: ITapUpDetails) => void;
    onDown: (details: IDragDownDetails) => void;
    onUpdate: (details: IDragUpdateDetails) => void;
    onEnd: (details: IDragEndDetails) => void;
    onCancel: () => void;
    build: (context: IBuildContext) => IWidget;
    createTicker: (onTick: (elapsed: IDuration) => void) => ITicker;
    didChangeDependencies: () => void;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    reassemble: () => void;
    setState: (fn: () => void) => void;
    deactivate: () => void;
    activate: () => void;
    getWidget: () => ICupertinoSlidingSegmentedControl<T>;
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
export class _SegmentedControlState<T>
    implements
        Omit<
            IState<ICupertinoSlidingSegmentedControl<T>>,
            "dispose" | "didChangeDependencies" | "debugFillProperties"
        >,
        ITickerProviderStateMixin<ICupertinoSlidingSegmentedControl<T>>,
        IDiagnosticable,
        ITickerProvider
{
    public readonly thumbController: IAnimationController = undefined as any;
    public readonly thumbAnimatable:
        | IAnimatable<IRect | undefined>
        | undefined = undefined as any;
    public readonly thumbScaleController: IAnimationController =
        undefined as any;
    public readonly thumbScaleAnimation: IAnimation<number> = undefined as any;
    public readonly tap: ITapGestureRecognizer = undefined as any;
    public readonly drag: IHorizontalDragGestureRecognizer = undefined as any;
    public readonly longPress: ILongPressGestureRecognizer = undefined as any;
    public constructor() {
        flutter.cupertino._segmentedControlState(this);
    }
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_getIsThumbDragging: () => boolean = undefined as any;
    private readonly _dart_segmentForXPosition: (dx: number) => T =
        undefined as any;
    private readonly _dart_onHighlightChangedByGesture: (newValue: T) => void =
        undefined as any;
    private readonly _dart_onPressedChangedByGesture: (
        newValue?: T | undefined
    ) => void = undefined as any;
    private readonly _dart_onTapUp: (details: ITapUpDetails) => void =
        undefined as any;
    private readonly _dart_onDown: (details: IDragDownDetails) => void =
        undefined as any;
    private readonly _dart_onUpdate: (details: IDragUpdateDetails) => void =
        undefined as any;
    private readonly _dart_onEnd: (details: IDragEndDetails) => void =
        undefined as any;
    private readonly _dart_onCancel: () => void = undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
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
    private readonly _dart_getWidget: () => ICupertinoSlidingSegmentedControl<T> =
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
    public initState(): void {
        return this._dart_initState();
    }
    public didUpdateWidget(oldWidget: any): void {
        return this._dart_didUpdateWidget(oldWidget);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public getIsThumbDragging(): boolean {
        return this._dart_getIsThumbDragging();
    }
    public segmentForXPosition(dx: number): T {
        return this._dart_segmentForXPosition(dx);
    }
    public onHighlightChangedByGesture(newValue: T): void {
        return this._dart_onHighlightChangedByGesture(newValue);
    }
    public onPressedChangedByGesture(newValue?: T | undefined): void {
        return this._dart_onPressedChangedByGesture(newValue);
    }
    public onTapUp(details: ITapUpDetails): void {
        return this._dart_onTapUp(details);
    }
    public onDown(details: IDragDownDetails): void {
        return this._dart_onDown(details);
    }
    public onUpdate(details: IDragUpdateDetails): void {
        return this._dart_onUpdate(details);
    }
    public onEnd(details: IDragEndDetails): void {
        return this._dart_onEnd(details);
    }
    public onCancel(): void {
        return this._dart_onCancel();
    }
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
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
    public getWidget(): ICupertinoSlidingSegmentedControl<T> {
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
