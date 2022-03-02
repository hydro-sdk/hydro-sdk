import { IList } from "../../dart/core/list";
import { Brightness } from "../../dart/ui/brightness";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IDiagnosticableTree } from "../foundation/diagnosticableTree";
import { IDiagnosticableTreeMixin } from "../foundation/diagnosticableTreeMixin";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IBorder } from "../painting/border";
import { IEdgeInsetsDirectional } from "../painting/edgeInsetsDirectional";
import { IFloatingHeaderSnapConfiguration } from "../rendering/floatingHeaderSnapConfiguration";
import { IOverScrollHeaderStretchConfiguration } from "../rendering/overScrollHeaderStretchConfiguration";
import { IPersistentHeaderShowOnScreenConfiguration } from "../rendering/persistentHeaderShowOnScreenConfiguration";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { IBuildContext } from "../widgets/buildContext";
import { ISliverPersistentHeaderDelegate } from "../widgets/sliverPersistentHeaderDelegate";
import { IWidget } from "../widgets/widget";
import { I_NavigationBarStaticComponents } from "./_navigationBarStaticComponents";
import { I_NavigationBarStaticComponentsKeys } from "./_navigationBarStaticComponentsKeys";
declare const flutter: {
    cupertino: {
        _largeTitleNavigationBarSliverDelegate: (
            this: void,
            _largeTitleNavigationBarSliverDelegate: I_LargeTitleNavigationBarSliverDelegate,
            props: {
                actionsForegroundColor: IColor;
                alwaysShowMiddle: boolean;
                backgroundColor: IColor;
                border?: IBorder | undefined;
                brightness?: Brightness | undefined;
                components: I_NavigationBarStaticComponents;
                heroTag: Object;
                keys: I_NavigationBarStaticComponentsKeys;
                padding?: IEdgeInsetsDirectional | undefined;
                persistentHeight: number;
                stretchConfiguration?:
                    | IOverScrollHeaderStretchConfiguration
                    | undefined;
                transitionBetweenRoutes: boolean;
                userMiddle?: IWidget | undefined;
            }
        ) => I_LargeTitleNavigationBarSliverDelegate;
    };
};
export interface I_LargeTitleNavigationBarSliverDelegate {
    keys: I_NavigationBarStaticComponentsKeys;
    components: I_NavigationBarStaticComponents;
    userMiddle: IWidget | undefined;
    backgroundColor: IColor;
    brightness: Brightness | undefined;
    border: IBorder | undefined;
    padding: IEdgeInsetsDirectional | undefined;
    actionsForegroundColor: IColor;
    transitionBetweenRoutes: boolean;
    heroTag: Object;
    persistentHeight: number;
    alwaysShowMiddle: boolean;
    stretchConfiguration: IOverScrollHeaderStretchConfiguration | undefined;
    getMinExtent: () => number;
    getMaxExtent: () => number;
    build: (
        context: IBuildContext,
        shrinkOffset: number,
        overlapsContent: boolean
    ) => IWidget;
    shouldRebuild: (oldDelegate: unknown) => boolean;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string;
    toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string;
    toStringShort: () => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    debugDescribeChildren: () => IList<IDiagnosticsNode>;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getVsync: () => ITickerProvider | undefined;
    getSnapConfiguration: () => IFloatingHeaderSnapConfiguration | undefined;
    getStretchConfiguration: () =>
        | IOverScrollHeaderStretchConfiguration
        | undefined;
    getShowOnScreenConfiguration: () =>
        | IPersistentHeaderShowOnScreenConfiguration
        | undefined;
    getHashCode: () => number;
}
export class _LargeTitleNavigationBarSliverDelegate
    implements
        ISliverPersistentHeaderDelegate,
        IDiagnosticableTreeMixin,
        IDiagnosticable,
        Omit<
            IDiagnosticableTree,
            | "toStringShallow"
            | "toStringDeep"
            | "debugDescribeChildren"
            | "debugFillProperties"
            | "toStringShort"
            | "toDiagnosticsNode"
        >
{
    public readonly keys: I_NavigationBarStaticComponentsKeys =
        undefined as any;
    public readonly components: I_NavigationBarStaticComponents =
        undefined as any;
    public readonly userMiddle: IWidget | undefined = undefined as any;
    public readonly backgroundColor: IColor = undefined as any;
    public readonly brightness: Brightness | undefined = undefined as any;
    public readonly border: IBorder | undefined = undefined as any;
    public readonly padding: IEdgeInsetsDirectional | undefined =
        undefined as any;
    public readonly actionsForegroundColor: IColor = undefined as any;
    public readonly transitionBetweenRoutes: boolean = undefined as any;
    public readonly heroTag: Object = undefined as any;
    public readonly persistentHeight: number = undefined as any;
    public readonly alwaysShowMiddle: boolean = undefined as any;
    public readonly stretchConfiguration:
        | IOverScrollHeaderStretchConfiguration
        | undefined = undefined as any;
    public constructor(props: {
        actionsForegroundColor: IColor;
        alwaysShowMiddle: boolean;
        backgroundColor: IColor;
        border?: IBorder | undefined;
        brightness?: Brightness | undefined;
        components: I_NavigationBarStaticComponents;
        heroTag: Object;
        keys: I_NavigationBarStaticComponentsKeys;
        padding?: IEdgeInsetsDirectional | undefined;
        persistentHeight: number;
        stretchConfiguration?:
            | IOverScrollHeaderStretchConfiguration
            | undefined;
        transitionBetweenRoutes: boolean;
        userMiddle?: IWidget | undefined;
    }) {
        flutter.cupertino._largeTitleNavigationBarSliverDelegate(this, props);
    }
    private readonly _dart_getMinExtent: () => number = undefined as any;
    private readonly _dart_getMaxExtent: () => number = undefined as any;
    private readonly _dart_build: (
        context: IBuildContext,
        shrinkOffset: number,
        overlapsContent: boolean
    ) => IWidget = undefined as any;
    private readonly _dart_shouldRebuild: (oldDelegate: any) => boolean =
        undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> =
        undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getVsync: () => ITickerProvider | undefined =
        undefined as any;
    private readonly _dart_getSnapConfiguration: () =>
        | IFloatingHeaderSnapConfiguration
        | undefined = undefined as any;
    private readonly _dart_getStretchConfiguration: () =>
        | IOverScrollHeaderStretchConfiguration
        | undefined = undefined as any;
    private readonly _dart_getShowOnScreenConfiguration: () =>
        | IPersistentHeaderShowOnScreenConfiguration
        | undefined = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getMinExtent(): number {
        return this._dart_getMinExtent();
    }
    public getMaxExtent(): number {
        return this._dart_getMaxExtent();
    }
    public build(
        context: IBuildContext,
        shrinkOffset: number,
        overlapsContent: boolean
    ): IWidget {
        return this._dart_build(context, shrinkOffset, overlapsContent);
    }
    public shouldRebuild(oldDelegate: any): boolean {
        return this._dart_shouldRebuild(oldDelegate);
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
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
    public toStringShort(): string {
        return this._dart_toStringShort();
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
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public getVsync(): ITickerProvider | undefined {
        return this._dart_getVsync();
    }
    public getSnapConfiguration():
        | IFloatingHeaderSnapConfiguration
        | undefined {
        return this._dart_getSnapConfiguration();
    }
    public getStretchConfiguration():
        | IOverScrollHeaderStretchConfiguration
        | undefined {
        return this._dart_getStretchConfiguration();
    }
    public getShowOnScreenConfiguration():
        | IPersistentHeaderShowOnScreenConfiguration
        | undefined {
        return this._dart_getShowOnScreenConfiguration();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
const toStringShallowDefaultProps = {
    joiner: ", ",
    minLevel: DiagnosticLevel.debug,
};
const toStringDeepDefaultProps = {
    minLevel: DiagnosticLevel.debug,
    prefixLineOne: "",
};
