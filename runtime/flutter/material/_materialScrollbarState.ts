import { IDuration } from "../../dart/core/duration";
import { IOffset } from "../../dart/ui/offset";
import { PointerDeviceKind } from "../../dart/ui/pointerDeviceKind";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IPointerExitEvent } from "../gestures/pointerExitEvent";
import { IPointerHoverEvent } from "../gestures/pointerHoverEvent";
import { IVelocity } from "../gestures/velocity";
import { Axis } from "../painting/axis";
import { ITicker } from "../scheduler/ticker";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { IBuildContext } from "../widgets/buildContext";
import { IRawScrollbarState } from "../widgets/rawScrollbarState";
import { IScrollbarPainter } from "../widgets/scrollbarPainter";
import { ITickerProviderStateMixin } from "../widgets/tickerProviderStateMixin";
import { IWidget } from "../widgets/widget";
import { I_MaterialScrollbar } from "./_materialScrollbar";
declare const flutter: {
    material: {
        _materialScrollbarState: (
            this: void,
            _materialScrollbarState: I_MaterialScrollbarState
        ) => I_MaterialScrollbarState;
    };
};
export interface I_MaterialScrollbarState {
    scrollbarPainter: IScrollbarPainter;
    getShowScrollbar: () => boolean;
    getEnableGestures: () => boolean;
    initState: () => void;
    didChangeDependencies: () => void;
    updateScrollbarPainter: () => void;
    handleThumbPressStart: (localPosition: IOffset) => void;
    handleThumbPressEnd: (localPosition: IOffset, velocity: IVelocity) => void;
    handleHover: (event: IPointerHoverEvent) => void;
    handleHoverExit: (event: IPointerExitEvent) => void;
    dispose: () => void;
    didUpdateWidget: (oldWidget: unknown) => void;
    getScrollbarDirection: () => Axis | undefined;
    handleThumbPress: () => void;
    handleThumbPressUpdate: (localPosition: IOffset) => void;
    isPointerOverTrack: (position: IOffset, kind: PointerDeviceKind) => boolean;
    isPointerOverThumb: (position: IOffset, kind: PointerDeviceKind) => boolean;
    isPointerOverScrollbar: (
        position: IOffset,
        kind: PointerDeviceKind,
        props: { forHover: boolean }
    ) => boolean;
    build: (context: IBuildContext) => IWidget;
    createTicker: (onTick: (elapsed: IDuration) => void) => ITicker;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    reassemble: () => void;
    setState: (fn: () => void) => void;
    deactivate: () => void;
    activate: () => void;
    getWidget: () => I_MaterialScrollbar;
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
export class _MaterialScrollbarState
    implements
        Omit<
            IRawScrollbarState<I_MaterialScrollbar>,
            "didChangeDependencies" | "dispose" | "debugFillProperties"
        >,
        ITickerProviderStateMixin<I_MaterialScrollbar>,
        IDiagnosticable,
        ITickerProvider
{
    public readonly scrollbarPainter: IScrollbarPainter = undefined as any;
    public constructor() {
        flutter.material._materialScrollbarState(this);
    }
    private readonly _dart_getShowScrollbar: () => boolean = undefined as any;
    private readonly _dart_getEnableGestures: () => boolean = undefined as any;
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_updateScrollbarPainter: () => void =
        undefined as any;
    private readonly _dart_handleThumbPressStart: (
        localPosition: IOffset
    ) => void = undefined as any;
    private readonly _dart_handleThumbPressEnd: (
        localPosition: IOffset,
        velocity: IVelocity
    ) => void = undefined as any;
    private readonly _dart_handleHover: (event: IPointerHoverEvent) => void =
        undefined as any;
    private readonly _dart_handleHoverExit: (event: IPointerExitEvent) => void =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void =
        undefined as any;
    private readonly _dart_getScrollbarDirection: () => Axis | undefined =
        undefined as any;
    private readonly _dart_handleThumbPress: () => void = undefined as any;
    private readonly _dart_handleThumbPressUpdate: (
        localPosition: IOffset
    ) => void = undefined as any;
    private readonly _dart_isPointerOverTrack: (
        position: IOffset,
        kind: PointerDeviceKind
    ) => boolean = undefined as any;
    private readonly _dart_isPointerOverThumb: (
        position: IOffset,
        kind: PointerDeviceKind
    ) => boolean = undefined as any;
    private readonly _dart_isPointerOverScrollbar: (
        position: IOffset,
        kind: PointerDeviceKind,
        props: { forHover: boolean }
    ) => boolean = undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_createTicker: (
        onTick: (elapsed: IDuration) => void
    ) => ITicker = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn: () => void) => void =
        undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_getWidget: () => I_MaterialScrollbar =
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
    public getShowScrollbar(): boolean {
        return this._dart_getShowScrollbar();
    }
    public getEnableGestures(): boolean {
        return this._dart_getEnableGestures();
    }
    public initState(): void {
        return this._dart_initState();
    }
    public didChangeDependencies(): void {
        return this._dart_didChangeDependencies();
    }
    public updateScrollbarPainter(): void {
        return this._dart_updateScrollbarPainter();
    }
    public handleThumbPressStart(localPosition: IOffset): void {
        return this._dart_handleThumbPressStart(localPosition);
    }
    public handleThumbPressEnd(
        localPosition: IOffset,
        velocity: IVelocity
    ): void {
        return this._dart_handleThumbPressEnd(localPosition, velocity);
    }
    public handleHover(event: IPointerHoverEvent): void {
        return this._dart_handleHover(event);
    }
    public handleHoverExit(event: IPointerExitEvent): void {
        return this._dart_handleHoverExit(event);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public didUpdateWidget(oldWidget: any): void {
        return this._dart_didUpdateWidget(oldWidget);
    }
    public getScrollbarDirection(): Axis | undefined {
        return this._dart_getScrollbarDirection();
    }
    public handleThumbPress(): void {
        return this._dart_handleThumbPress();
    }
    public handleThumbPressUpdate(localPosition: IOffset): void {
        return this._dart_handleThumbPressUpdate(localPosition);
    }
    public isPointerOverTrack(
        position: IOffset,
        kind: PointerDeviceKind
    ): boolean {
        return this._dart_isPointerOverTrack(position, kind);
    }
    public isPointerOverThumb(
        position: IOffset,
        kind: PointerDeviceKind
    ): boolean {
        return this._dart_isPointerOverThumb(position, kind);
    }
    public isPointerOverScrollbar(
        position: IOffset,
        kind: PointerDeviceKind,
        props: { forHover?: boolean }
    ): boolean {
        return this._dart_isPointerOverScrollbar(position, kind, {
            ...isPointerOverScrollbarDefaultProps,
            ...props,
        });
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
    public getWidget(): I_MaterialScrollbar {
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
const isPointerOverScrollbarDefaultProps = {
    forHover: false,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
