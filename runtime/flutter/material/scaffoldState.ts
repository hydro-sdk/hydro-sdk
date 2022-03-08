import { IDuration } from "../../dart/core/duration";
import { Clip } from "../../dart/ui/clip";
import { IColor } from "../../dart/ui/color";
import { IAnimationController } from "../animation/animationController";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IShapeBorder } from "../painting/shapeBorder";
import { IBoxConstraints } from "../rendering/boxConstraints";
import { ITicker } from "../scheduler/ticker";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { IRestorationBucket } from "../services/restorationBucket";
import { IBuildContext } from "../widgets/buildContext";
import { IRestorableProperty } from "../widgets/restorableProperty";
import { IRestorationMixin } from "../widgets/restorationMixin";
import { IState } from "../widgets/state";
import { ITickerProviderStateMixin } from "../widgets/tickerProviderStateMixin";
import { IWidget } from "../widgets/widget";
import { IPersistentBottomSheetController } from "./persistentBottomSheetController";
import { IScaffold } from "./scaffold";
import { IScaffoldFeatureController } from "./scaffoldFeatureController";
import { ISnackBar } from "./snackBar";
import { SnackBarClosedReason } from "./snackBarClosedReason";
declare const flutter: {
    material: {
        scaffoldState: (
            this: void,
            scaffoldState: IScaffoldState
        ) => IScaffoldState;
    };
};
export interface IScaffoldState {
    getRestorationId: () => string | undefined;
    restoreState: (
        oldBucket: IRestorationBucket | undefined,
        initialRestore: boolean
    ) => void;
    getHasAppBar: () => boolean;
    getHasDrawer: () => boolean;
    getHasEndDrawer: () => boolean;
    getHasFloatingActionButton: () => boolean;
    getAppBarMaxHeight: () => number | undefined;
    getIsDrawerOpen: () => boolean;
    getIsEndDrawerOpen: () => boolean;
    openDrawer: () => void;
    openEndDrawer: () => void;
    showSnackBar: (
        snackbar: ISnackBar
    ) => IScaffoldFeatureController<ISnackBar, SnackBarClosedReason>;
    removeCurrentSnackBar: (props: { reason: SnackBarClosedReason }) => void;
    hideCurrentSnackBar: (props: { reason: SnackBarClosedReason }) => void;
    showBottomSheet: <T>(
        builder: (context: IBuildContext) => IWidget,
        props?: {
            backgroundColor?: IColor | undefined;
            clipBehavior?: Clip | undefined;
            constraints?: IBoxConstraints | undefined;
            elevation?: number | undefined;
            shape?: IShapeBorder | undefined;
            transitionAnimationController?: IAnimationController | undefined;
        }
    ) => IPersistentBottomSheetController<T>;
    initState: () => void;
    didUpdateWidget: (oldWidget: unknown) => void;
    didChangeDependencies: () => void;
    dispose: () => void;
    showBodyScrim: (value: boolean, opacity: number) => void;
    build: (context: IBuildContext) => IWidget;
    createTicker: (onTick: (elapsed: IDuration) => void) => ITicker;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    didToggleBucket: (oldBucket?: IRestorationBucket | undefined) => void;
    registerForRestoration: (
        property: IRestorableProperty<Object | undefined>,
        restorationId: string
    ) => void;
    unregisterFromRestoration: (
        property: IRestorableProperty<Object | undefined>
    ) => void;
    didUpdateRestorationId: () => void;
    getBucket: () => IRestorationBucket | undefined;
    getRestorePending: () => boolean;
    reassemble: () => void;
    setState: (fn: () => void) => void;
    deactivate: () => void;
    activate: () => void;
    getWidget: () => IScaffold;
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
export class ScaffoldState
    implements
        Omit<
            IState<IScaffold>,
            | "dispose"
            | "didChangeDependencies"
            | "debugFillProperties"
            | "didUpdateWidget"
        >,
        ITickerProviderStateMixin<IScaffold>,
        IRestorationMixin<IScaffold>,
        IDiagnosticable,
        ITickerProvider
{
    public constructor() {
        flutter.material.scaffoldState(this);
    }
    private readonly _dart_getRestorationId: () => string | undefined =
        undefined as any;
    private readonly _dart_restoreState: (
        oldBucket: IRestorationBucket | undefined,
        initialRestore: boolean
    ) => void = undefined as any;
    private readonly _dart_getHasAppBar: () => boolean = undefined as any;
    private readonly _dart_getHasDrawer: () => boolean = undefined as any;
    private readonly _dart_getHasEndDrawer: () => boolean = undefined as any;
    private readonly _dart_getHasFloatingActionButton: () => boolean =
        undefined as any;
    private readonly _dart_getAppBarMaxHeight: () => number | undefined =
        undefined as any;
    private readonly _dart_getIsDrawerOpen: () => boolean = undefined as any;
    private readonly _dart_getIsEndDrawerOpen: () => boolean = undefined as any;
    private readonly _dart_openDrawer: () => void = undefined as any;
    private readonly _dart_openEndDrawer: () => void = undefined as any;
    private readonly _dart_showSnackBar: (
        snackbar: ISnackBar
    ) => IScaffoldFeatureController<ISnackBar, SnackBarClosedReason> =
        undefined as any;
    private readonly _dart_removeCurrentSnackBar: (props: {
        reason: SnackBarClosedReason;
    }) => void = undefined as any;
    private readonly _dart_hideCurrentSnackBar: (props: {
        reason: SnackBarClosedReason;
    }) => void = undefined as any;
    private readonly _dart_showBottomSheet: <T>(
        builder: (context: IBuildContext) => IWidget,
        props?: {
            backgroundColor?: IColor | undefined;
            clipBehavior?: Clip | undefined;
            constraints?: IBoxConstraints | undefined;
            elevation?: number | undefined;
            shape?: IShapeBorder | undefined;
            transitionAnimationController?: IAnimationController | undefined;
        }
    ) => IPersistentBottomSheetController<T> = undefined as any;
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void =
        undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_showBodyScrim: (
        value: boolean,
        opacity: number
    ) => void = undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_createTicker: (
        onTick: (elapsed: IDuration) => void
    ) => ITicker = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_didToggleBucket: (
        oldBucket?: IRestorationBucket | undefined
    ) => void = undefined as any;
    private readonly _dart_registerForRestoration: (
        property: IRestorableProperty<Object | undefined>,
        restorationId: string
    ) => void = undefined as any;
    private readonly _dart_unregisterFromRestoration: (
        property: IRestorableProperty<Object | undefined>
    ) => void = undefined as any;
    private readonly _dart_didUpdateRestorationId: () => void =
        undefined as any;
    private readonly _dart_getBucket: () => IRestorationBucket | undefined =
        undefined as any;
    private readonly _dart_getRestorePending: () => boolean = undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn: () => void) => void =
        undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_getWidget: () => IScaffold = undefined as any;
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
    public getRestorationId(): string | undefined {
        return this._dart_getRestorationId();
    }
    public restoreState(
        oldBucket: IRestorationBucket | undefined,
        initialRestore: boolean
    ): void {
        return this._dart_restoreState(oldBucket, initialRestore);
    }
    public getHasAppBar(): boolean {
        return this._dart_getHasAppBar();
    }
    public getHasDrawer(): boolean {
        return this._dart_getHasDrawer();
    }
    public getHasEndDrawer(): boolean {
        return this._dart_getHasEndDrawer();
    }
    public getHasFloatingActionButton(): boolean {
        return this._dart_getHasFloatingActionButton();
    }
    public getAppBarMaxHeight(): number | undefined {
        return this._dart_getAppBarMaxHeight();
    }
    public getIsDrawerOpen(): boolean {
        return this._dart_getIsDrawerOpen();
    }
    public getIsEndDrawerOpen(): boolean {
        return this._dart_getIsEndDrawerOpen();
    }
    public openDrawer(): void {
        return this._dart_openDrawer();
    }
    public openEndDrawer(): void {
        return this._dart_openEndDrawer();
    }
    public showSnackBar(
        snackbar: ISnackBar
    ): IScaffoldFeatureController<ISnackBar, SnackBarClosedReason> {
        return this._dart_showSnackBar(snackbar);
    }
    public removeCurrentSnackBar(props: {
        reason?: SnackBarClosedReason;
    }): void {
        return this._dart_removeCurrentSnackBar({
            ...removeCurrentSnackBarDefaultProps,
            ...props,
        });
    }
    public hideCurrentSnackBar(props: { reason?: SnackBarClosedReason }): void {
        return this._dart_hideCurrentSnackBar({
            ...hideCurrentSnackBarDefaultProps,
            ...props,
        });
    }
    public showBottomSheet<T>(
        builder: (context: IBuildContext) => IWidget,
        props?: {
            backgroundColor?: IColor | undefined;
            clipBehavior?: Clip | undefined;
            constraints?: IBoxConstraints | undefined;
            elevation?: number | undefined;
            shape?: IShapeBorder | undefined;
            transitionAnimationController?: IAnimationController | undefined;
        }
    ): IPersistentBottomSheetController<T> {
        return this._dart_showBottomSheet(builder, props);
    }
    public initState(): void {
        return this._dart_initState();
    }
    public didUpdateWidget(oldWidget: any): void {
        return this._dart_didUpdateWidget(oldWidget);
    }
    public didChangeDependencies(): void {
        return this._dart_didChangeDependencies();
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public showBodyScrim(value: boolean, opacity: number): void {
        return this._dart_showBodyScrim(value, opacity);
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
    public didToggleBucket(oldBucket?: IRestorationBucket | undefined): void {
        return this._dart_didToggleBucket(oldBucket);
    }
    public registerForRestoration(
        property: IRestorableProperty<Object | undefined>,
        restorationId: string
    ): void {
        return this._dart_registerForRestoration(property, restorationId);
    }
    public unregisterFromRestoration(
        property: IRestorableProperty<Object | undefined>
    ): void {
        return this._dart_unregisterFromRestoration(property);
    }
    public didUpdateRestorationId(): void {
        return this._dart_didUpdateRestorationId();
    }
    public getBucket(): IRestorationBucket | undefined {
        return this._dart_getBucket();
    }
    public getRestorePending(): boolean {
        return this._dart_getRestorePending();
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
    public getWidget(): IScaffold {
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
const removeCurrentSnackBarDefaultProps = {
    reason: SnackBarClosedReason.remove,
};
const hideCurrentSnackBarDefaultProps = {
    reason: SnackBarClosedReason.hide,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
