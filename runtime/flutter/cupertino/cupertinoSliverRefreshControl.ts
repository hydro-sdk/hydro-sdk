import { IFuture } from "../../dart/async/future";
import { IList } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IBuildContext } from "../widgets/buildContext";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { RefreshIndicatorMode } from "./refreshIndicatorMode";
declare const flutter: {
    cupertino: {
        cupertinoSliverRefreshControl: (
            this: void,
            cupertinoSliverRefreshControl: ICupertinoSliverRefreshControl,
            props: {
                builder?: (
                    context: IBuildContext,
                    refreshState: RefreshIndicatorMode,
                    pulledExtent: number,
                    refreshTriggerPullDistance: number,
                    refreshIndicatorExtent: number
                ) => IWidget | undefined;
                key?: IKey | undefined;
                onRefresh?: () => IFuture<void> | undefined;
                refreshIndicatorExtent: number;
                refreshTriggerPullDistance: number;
            }
        ) => ICupertinoSliverRefreshControl;
        cupertinoSliverRefreshControlState: (
            context: IBuildContext
        ) => RefreshIndicatorMode;
        cupertinoSliverRefreshControlBuildRefreshIndicator: (
            context: IBuildContext,
            refreshState: RefreshIndicatorMode,
            pulledExtent: number,
            refreshTriggerPullDistance: number,
            refreshIndicatorExtent: number
        ) => IWidget;
    };
};
export interface ICupertinoSliverRefreshControl {
    refreshTriggerPullDistance: number;
    refreshIndicatorExtent: number;
    key: IKey | undefined;
    createState: () => IState<ICupertinoSliverRefreshControl>;
    createElement: () => IStatefulElement;
    toStringShort: () => string;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getHashCode: () => number;
    toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string;
    toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    debugDescribeChildren: () => IList<IDiagnosticsNode>;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
}
export class CupertinoSliverRefreshControl
    implements IStatefulWidget, IDiagnosticable
{
    public static _defaultRefreshTriggerPullDistance = 100.0;
    public static _defaultRefreshIndicatorExtent = 60.0;
    public readonly refreshTriggerPullDistance: number = undefined as any;
    public readonly refreshIndicatorExtent: number = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        builder?: (
            context: IBuildContext,
            refreshState: RefreshIndicatorMode,
            pulledExtent: number,
            refreshTriggerPullDistance: number,
            refreshIndicatorExtent: number
        ) => IWidget | undefined;
        key?: IKey | undefined;
        onRefresh?: () => IFuture<void> | undefined;
        refreshIndicatorExtent?: number;
        refreshTriggerPullDistance?: number;
    }) {
        flutter.cupertino.cupertinoSliverRefreshControl(this, {
            ...cupertinoSliverRefreshControlDefaultProps,
            ...props,
        });
    }
    public static state(context: IBuildContext): RefreshIndicatorMode {
        return flutter.cupertino.cupertinoSliverRefreshControlState(context);
    }
    public static buildRefreshIndicator(
        context: IBuildContext,
        refreshState: RefreshIndicatorMode,
        pulledExtent: number,
        refreshTriggerPullDistance: number,
        refreshIndicatorExtent: number
    ): IWidget {
        return flutter.cupertino.cupertinoSliverRefreshControlBuildRefreshIndicator(
            context,
            refreshState,
            pulledExtent,
            refreshTriggerPullDistance,
            refreshIndicatorExtent
        );
    }
    private readonly _dart_createState: () => IState<ICupertinoSliverRefreshControl> =
        undefined as any;
    private readonly _dart_createElement: () => IStatefulElement =
        undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> =
        undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    public createState(): IState<ICupertinoSliverRefreshControl> {
        return this._dart_createState();
    }
    public createElement(): IStatefulElement {
        return this._dart_createElement();
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toStringShallow(props: {
        joiner?: string;
        minLevel?: DiagnosticLevel;
    }): string {
        return this._dart_toStringShallow({
            ...toStringShallowDefaultProps,
            ...props,
        });
    }
    public toStringDeep(props: {
        minLevel?: DiagnosticLevel;
        prefixLineOne?: string;
        prefixOtherLines?: string | undefined;
    }): string {
        return this._dart_toStringDeep({
            ...toStringDeepDefaultProps,
            ...props,
        });
    }
    public toDiagnosticsNode(props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }): IDiagnosticsNode {
        return this._dart_toDiagnosticsNode(props);
    }
    public debugDescribeChildren(): IList<IDiagnosticsNode> {
        return this._dart_debugDescribeChildren();
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
}
const cupertinoSliverRefreshControlDefaultProps = {
    refreshIndicatorExtent:
        CupertinoSliverRefreshControl._defaultRefreshIndicatorExtent,
    refreshTriggerPullDistance:
        CupertinoSliverRefreshControl._defaultRefreshTriggerPullDistance,
};
const toStringShallowDefaultProps = {
    joiner: ", ",
    minLevel: DiagnosticLevel.debug,
};
const toStringDeepDefaultProps = {
    minLevel: DiagnosticLevel.debug,
    prefixLineOne: "",
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
