import { IDuration } from "../../dart/core/duration";
import { IAnimation } from "../animation/animation";
import { IAnimationController } from "../animation/animationController";
import { ITween } from "../animation/tween";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { ITicker } from "../scheduler/ticker";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { IAnimatedPositioned } from "./animatedPositioned";
import { IAnimatedWidgetBaseState } from "./animatedWidgetBaseState";
import { IBuildContext } from "./buildContext";
import { ISingleTickerProviderStateMixin } from "./singleTickerProviderStateMixin";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        _animatedPositionedState: (
            this: void,
            _animatedPositionedState: I_AnimatedPositionedState
        ) => I_AnimatedPositionedState;
    };
};
export interface I_AnimatedPositionedState {
    forEachTween: (
        visitor: (
            tween: ITween<any> | undefined,
            targetValue: any,
            constructor: (targetValue: any) => ITween<any>
        ) => ITween<any> | undefined
    ) => void;
    build: (context: IBuildContext) => IWidget;
    debugFillProperties: (description: IDiagnosticPropertiesBuilder) => void;
    initState: () => void;
    didUpdateWidget: (oldWidget: unknown) => void;
    dispose: () => void;
    didUpdateTweens: () => void;
    getController: () => IAnimationController;
    getAnimation: () => IAnimation<number>;
    createTicker: (onTick: (elapsed: IDuration) => void) => ITicker;
    didChangeDependencies: () => void;
    reassemble: () => void;
    setState: (fn: () => void) => void;
    deactivate: () => void;
    activate: () => void;
    getWidget: () => IAnimatedPositioned;
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
export class _AnimatedPositionedState
    implements
        IAnimatedWidgetBaseState<IAnimatedPositioned>,
        ISingleTickerProviderStateMixin<IAnimatedPositioned>,
        IDiagnosticable,
        ITickerProvider
{
    public constructor() {
        flutter.widgets._animatedPositionedState(this);
    }
    private readonly _dart_forEachTween: (
        visitor: (
            tween: ITween<any> | undefined,
            targetValue: any,
            constructor: (targetValue: any) => ITween<any>
        ) => ITween<any> | undefined
    ) => void = undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_debugFillProperties: (
        description: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_didUpdateTweens: () => void = undefined as any;
    private readonly _dart_getController: () => IAnimationController =
        undefined as any;
    private readonly _dart_getAnimation: () => IAnimation<number> =
        undefined as any;
    private readonly _dart_createTicker: (
        onTick: (elapsed: IDuration) => void
    ) => ITicker = undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn: () => void) => void =
        undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_getWidget: () => IAnimatedPositioned =
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
    public forEachTween(
        visitor: (
            tween: ITween<any> | undefined,
            targetValue: any,
            constructor: (targetValue: any) => ITween<any>
        ) => ITween<any> | undefined
    ): void {
        return this._dart_forEachTween(visitor);
    }
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
    }
    public debugFillProperties(
        description: IDiagnosticPropertiesBuilder
    ): void {
        return this._dart_debugFillProperties(description);
    }
    public initState(): void {
        return this._dart_initState();
    }
    public didUpdateWidget(oldWidget: any): void {
        return this._dart_didUpdateWidget(oldWidget);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public didUpdateTweens(): void {
        return this._dart_didUpdateTweens();
    }
    public getController(): IAnimationController {
        return this._dart_getController();
    }
    public getAnimation(): IAnimation<number> {
        return this._dart_getAnimation();
    }
    public createTicker(onTick: (elapsed: IDuration) => void): ITicker {
        return this._dart_createTicker(onTick);
    }
    public didChangeDependencies(): void {
        return this._dart_didChangeDependencies();
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
    public getWidget(): IAnimatedPositioned {
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
