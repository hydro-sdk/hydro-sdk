import { IDuration } from "../../dart/core/duration";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { ITicker } from "../scheduler/ticker";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { IBuildContext } from "../widgets/buildContext";
import { IState } from "../widgets/state";
import { ITickerProviderStateMixin } from "../widgets/tickerProviderStateMixin";
import { IWidget } from "../widgets/widget";
import { IMaterialBanner } from "./materialBanner";
import { MaterialBannerClosedReason } from "./materialBannerClosedReason";
import { IScaffoldFeatureController } from "./scaffoldFeatureController";
import { IScaffoldMessenger } from "./scaffoldMessenger";
import { ISnackBar } from "./snackBar";
import { SnackBarClosedReason } from "./snackBarClosedReason";
declare const flutter: {
    material: {
        scaffoldMessengerState: (
            this: void,
            scaffoldMessengerState: IScaffoldMessengerState
        ) => IScaffoldMessengerState;
    };
};
export interface IScaffoldMessengerState {
    didChangeDependencies: () => void;
    showSnackBar: (
        snackBar: ISnackBar
    ) => IScaffoldFeatureController<ISnackBar, SnackBarClosedReason>;
    removeCurrentSnackBar: (props: { reason: SnackBarClosedReason }) => void;
    hideCurrentSnackBar: (props: { reason: SnackBarClosedReason }) => void;
    clearSnackBars: () => void;
    showMaterialBanner: (
        materialBanner: IMaterialBanner
    ) => IScaffoldFeatureController<
        IMaterialBanner,
        MaterialBannerClosedReason
    >;
    removeCurrentMaterialBanner: (props: {
        reason: MaterialBannerClosedReason;
    }) => void;
    hideCurrentMaterialBanner: (props: {
        reason: MaterialBannerClosedReason;
    }) => void;
    clearMaterialBanners: () => void;
    build: (context: IBuildContext) => IWidget;
    dispose: () => void;
    createTicker: (onTick: (elapsed: IDuration) => void) => ITicker;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    initState: () => void;
    didUpdateWidget: (oldWidget: unknown) => void;
    reassemble: () => void;
    setState: (fn: () => void) => void;
    deactivate: () => void;
    activate: () => void;
    getWidget: () => IScaffoldMessenger;
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
export class ScaffoldMessengerState
    implements
        Omit<
            IState<IScaffoldMessenger>,
            "dispose" | "didChangeDependencies" | "debugFillProperties"
        >,
        ITickerProviderStateMixin<IScaffoldMessenger>,
        IDiagnosticable,
        ITickerProvider
{
    public constructor() {
        flutter.material.scaffoldMessengerState(this);
    }
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_showSnackBar: (
        snackBar: ISnackBar
    ) => IScaffoldFeatureController<ISnackBar, SnackBarClosedReason> =
        undefined as any;
    private readonly _dart_removeCurrentSnackBar: (props: {
        reason: SnackBarClosedReason;
    }) => void = undefined as any;
    private readonly _dart_hideCurrentSnackBar: (props: {
        reason: SnackBarClosedReason;
    }) => void = undefined as any;
    private readonly _dart_clearSnackBars: () => void = undefined as any;
    private readonly _dart_showMaterialBanner: (
        materialBanner: IMaterialBanner
    ) => IScaffoldFeatureController<
        IMaterialBanner,
        MaterialBannerClosedReason
    > = undefined as any;
    private readonly _dart_removeCurrentMaterialBanner: (props: {
        reason: MaterialBannerClosedReason;
    }) => void = undefined as any;
    private readonly _dart_hideCurrentMaterialBanner: (props: {
        reason: MaterialBannerClosedReason;
    }) => void = undefined as any;
    private readonly _dart_clearMaterialBanners: () => void = undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_createTicker: (
        onTick: (elapsed: IDuration) => void
    ) => ITicker = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void =
        undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn: () => void) => void =
        undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_getWidget: () => IScaffoldMessenger =
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
    public didChangeDependencies(): void {
        return this._dart_didChangeDependencies();
    }
    public showSnackBar(
        snackBar: ISnackBar
    ): IScaffoldFeatureController<ISnackBar, SnackBarClosedReason> {
        return this._dart_showSnackBar(snackBar);
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
    public clearSnackBars(): void {
        return this._dart_clearSnackBars();
    }
    public showMaterialBanner(
        materialBanner: IMaterialBanner
    ): IScaffoldFeatureController<IMaterialBanner, MaterialBannerClosedReason> {
        return this._dart_showMaterialBanner(materialBanner);
    }
    public removeCurrentMaterialBanner(props: {
        reason?: MaterialBannerClosedReason;
    }): void {
        return this._dart_removeCurrentMaterialBanner({
            ...removeCurrentMaterialBannerDefaultProps,
            ...props,
        });
    }
    public hideCurrentMaterialBanner(props: {
        reason?: MaterialBannerClosedReason;
    }): void {
        return this._dart_hideCurrentMaterialBanner({
            ...hideCurrentMaterialBannerDefaultProps,
            ...props,
        });
    }
    public clearMaterialBanners(): void {
        return this._dart_clearMaterialBanners();
    }
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public createTicker(onTick: (elapsed: IDuration) => void): ITicker {
        return this._dart_createTicker(onTick);
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public initState(): void {
        return this._dart_initState();
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
    public getWidget(): IScaffoldMessenger {
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
const removeCurrentMaterialBannerDefaultProps = {
    reason: MaterialBannerClosedReason.remove,
};
const hideCurrentMaterialBannerDefaultProps = {
    reason: MaterialBannerClosedReason.hide,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
