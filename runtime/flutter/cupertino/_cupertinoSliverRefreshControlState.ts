import { IFuture } from "../../dart/async/future";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IBuildContext } from "../widgets/buildContext";
import { IState } from "../widgets/state";
import { IWidget } from "../widgets/widget";
import { ICupertinoSliverRefreshControl } from "./cupertinoSliverRefreshControl";
import { RefreshIndicatorMode } from "./refreshIndicatorMode";
declare const flutter: {
    cupertino: {
        _cupertinoSliverRefreshControlState: (
            this: void,
            _cupertinoSliverRefreshControlState: I_CupertinoSliverRefreshControlState
        ) => I_CupertinoSliverRefreshControlState;
    };
};
export interface I_CupertinoSliverRefreshControlState {
    refreshState: RefreshIndicatorMode;
    refreshTask: IFuture<void> | undefined;
    latestIndicatorBoxExtent: number;
    hasSliverLayoutExtent: boolean;
    initState: () => void;
    transitionNextState: () => RefreshIndicatorMode;
    build: (context: IBuildContext) => IWidget;
    didUpdateWidget: (oldWidget: unknown) => void;
    reassemble: () => void;
    setState: (fn: () => void) => void;
    deactivate: () => void;
    activate: () => void;
    dispose: () => void;
    didChangeDependencies: () => void;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getWidget: () => ICupertinoSliverRefreshControl;
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
export class _CupertinoSliverRefreshControlState
    implements
        Omit<IState<ICupertinoSliverRefreshControl>, "debugFillProperties">,
        IDiagnosticable
{
    public static _inactiveResetOverscrollFraction = 0.1;
    public readonly refreshState: RefreshIndicatorMode = undefined as any;
    public readonly refreshTask: IFuture<void> | undefined = undefined as any;
    public readonly latestIndicatorBoxExtent: number = undefined as any;
    public readonly hasSliverLayoutExtent: boolean = undefined as any;
    public constructor() {
        flutter.cupertino._cupertinoSliverRefreshControlState(this);
    }
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_transitionNextState: () => RefreshIndicatorMode =
        undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void =
        undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn: () => void) => void =
        undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getWidget: () => ICupertinoSliverRefreshControl =
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
    public transitionNextState(): RefreshIndicatorMode {
        return this._dart_transitionNextState();
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
    public dispose(): void {
        return this._dart_dispose();
    }
    public didChangeDependencies(): void {
        return this._dart_didChangeDependencies();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public getWidget(): ICupertinoSliverRefreshControl {
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
