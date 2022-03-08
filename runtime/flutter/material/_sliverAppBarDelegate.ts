import { IList } from "../../dart/core/list";
import { Brightness } from "../../dart/ui/brightness";
import { IColor } from "../../dart/ui/color";
import { IShapeBorder } from "../painting/shapeBorder";
import { ITextStyle } from "../painting/textStyle";
import { IFloatingHeaderSnapConfiguration } from "../rendering/floatingHeaderSnapConfiguration";
import { IOverScrollHeaderStretchConfiguration } from "../rendering/overScrollHeaderStretchConfiguration";
import { IPersistentHeaderShowOnScreenConfiguration } from "../rendering/persistentHeaderShowOnScreenConfiguration";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { ISystemUiOverlayStyle } from "../services/systemUiOverlayStyle";
import { IBuildContext } from "../widgets/buildContext";
import { IIconThemeData } from "../widgets/iconThemeData";
import { IPreferredSizeWidget } from "../widgets/preferredSizeWidget";
import { ISliverPersistentHeaderDelegate } from "../widgets/sliverPersistentHeaderDelegate";
import { IWidget } from "../widgets/widget";
import { ITextTheme } from "./textTheme";
declare const flutter: {
    material: {
        _sliverAppBarDelegate: (
            this: void,
            _sliverAppBarDelegate: I_SliverAppBarDelegate,
            props: {
                actions?: IList<IWidget> | undefined;
                actionsIconTheme?: IIconThemeData | undefined;
                automaticallyImplyLeading: boolean;
                backgroundColor?: IColor | undefined;
                backwardsCompatibility?: boolean | undefined;
                bottom?: IPreferredSizeWidget | undefined;
                brightness?: Brightness | undefined;
                centerTitle?: boolean | undefined;
                collapsedHeight: number;
                elevation?: number | undefined;
                excludeHeaderSemantics: boolean;
                expandedHeight?: number | undefined;
                flexibleSpace?: IWidget | undefined;
                floating: boolean;
                forceElevated: boolean;
                foregroundColor?: IColor | undefined;
                iconTheme?: IIconThemeData | undefined;
                leading?: IWidget | undefined;
                leadingWidth?: number | undefined;
                pinned: boolean;
                primary: boolean;
                shadowColor?: IColor | undefined;
                shape?: IShapeBorder | undefined;
                showOnScreenConfiguration?:
                    | IPersistentHeaderShowOnScreenConfiguration
                    | undefined;
                snapConfiguration?:
                    | IFloatingHeaderSnapConfiguration
                    | undefined;
                stretchConfiguration?:
                    | IOverScrollHeaderStretchConfiguration
                    | undefined;
                systemOverlayStyle?: ISystemUiOverlayStyle | undefined;
                textTheme?: ITextTheme | undefined;
                title?: IWidget | undefined;
                titleSpacing?: number | undefined;
                titleTextStyle?: ITextStyle | undefined;
                toolbarHeight?: number | undefined;
                toolbarTextStyle?: ITextStyle | undefined;
                topPadding: number;
                vsync: ITickerProvider;
            }
        ) => I_SliverAppBarDelegate;
    };
};
export interface I_SliverAppBarDelegate {
    leading: IWidget | undefined;
    automaticallyImplyLeading: boolean;
    title: IWidget | undefined;
    actions: IList<IWidget> | undefined;
    flexibleSpace: IWidget | undefined;
    bottom: IPreferredSizeWidget | undefined;
    elevation: number | undefined;
    shadowColor: IColor | undefined;
    forceElevated: boolean;
    backgroundColor: IColor | undefined;
    foregroundColor: IColor | undefined;
    brightness: Brightness | undefined;
    iconTheme: IIconThemeData | undefined;
    actionsIconTheme: IIconThemeData | undefined;
    textTheme: ITextTheme | undefined;
    primary: boolean;
    centerTitle: boolean | undefined;
    excludeHeaderSemantics: boolean;
    titleSpacing: number | undefined;
    expandedHeight: number | undefined;
    collapsedHeight: number;
    topPadding: number;
    floating: boolean;
    pinned: boolean;
    shape: IShapeBorder | undefined;
    toolbarHeight: number | undefined;
    leadingWidth: number | undefined;
    backwardsCompatibility: boolean | undefined;
    toolbarTextStyle: ITextStyle | undefined;
    titleTextStyle: ITextStyle | undefined;
    systemOverlayStyle: ISystemUiOverlayStyle | undefined;
    vsync: ITickerProvider;
    snapConfiguration: IFloatingHeaderSnapConfiguration | undefined;
    stretchConfiguration: IOverScrollHeaderStretchConfiguration | undefined;
    showOnScreenConfiguration:
        | IPersistentHeaderShowOnScreenConfiguration
        | undefined;
    getMinExtent: () => number;
    getMaxExtent: () => number;
    build: (
        context: IBuildContext,
        shrinkOffset: number,
        overlapsContent: boolean
    ) => IWidget;
    shouldRebuild: (oldDelegate: unknown) => boolean;
    toString: () => string;
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
export class _SliverAppBarDelegate implements ISliverPersistentHeaderDelegate {
    public readonly leading: IWidget | undefined = undefined as any;
    public readonly automaticallyImplyLeading: boolean = undefined as any;
    public readonly title: IWidget | undefined = undefined as any;
    public readonly actions: IList<IWidget> | undefined = undefined as any;
    public readonly flexibleSpace: IWidget | undefined = undefined as any;
    public readonly bottom: IPreferredSizeWidget | undefined = undefined as any;
    public readonly elevation: number | undefined = undefined as any;
    public readonly shadowColor: IColor | undefined = undefined as any;
    public readonly forceElevated: boolean = undefined as any;
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly foregroundColor: IColor | undefined = undefined as any;
    public readonly brightness: Brightness | undefined = undefined as any;
    public readonly iconTheme: IIconThemeData | undefined = undefined as any;
    public readonly actionsIconTheme: IIconThemeData | undefined =
        undefined as any;
    public readonly textTheme: ITextTheme | undefined = undefined as any;
    public readonly primary: boolean = undefined as any;
    public readonly centerTitle: boolean | undefined = undefined as any;
    public readonly excludeHeaderSemantics: boolean = undefined as any;
    public readonly titleSpacing: number | undefined = undefined as any;
    public readonly expandedHeight: number | undefined = undefined as any;
    public readonly collapsedHeight: number = undefined as any;
    public readonly topPadding: number = undefined as any;
    public readonly floating: boolean = undefined as any;
    public readonly pinned: boolean = undefined as any;
    public readonly shape: IShapeBorder | undefined = undefined as any;
    public readonly toolbarHeight: number | undefined = undefined as any;
    public readonly leadingWidth: number | undefined = undefined as any;
    public readonly backwardsCompatibility: boolean | undefined =
        undefined as any;
    public readonly toolbarTextStyle: ITextStyle | undefined = undefined as any;
    public readonly titleTextStyle: ITextStyle | undefined = undefined as any;
    public readonly systemOverlayStyle: ISystemUiOverlayStyle | undefined =
        undefined as any;
    public readonly vsync: ITickerProvider = undefined as any;
    public readonly snapConfiguration:
        | IFloatingHeaderSnapConfiguration
        | undefined = undefined as any;
    public readonly stretchConfiguration:
        | IOverScrollHeaderStretchConfiguration
        | undefined = undefined as any;
    public readonly showOnScreenConfiguration:
        | IPersistentHeaderShowOnScreenConfiguration
        | undefined = undefined as any;
    public constructor(props: {
        actions?: IList<IWidget> | undefined;
        actionsIconTheme?: IIconThemeData | undefined;
        automaticallyImplyLeading: boolean;
        backgroundColor?: IColor | undefined;
        backwardsCompatibility?: boolean | undefined;
        bottom?: IPreferredSizeWidget | undefined;
        brightness?: Brightness | undefined;
        centerTitle?: boolean | undefined;
        collapsedHeight: number;
        elevation?: number | undefined;
        excludeHeaderSemantics: boolean;
        expandedHeight?: number | undefined;
        flexibleSpace?: IWidget | undefined;
        floating: boolean;
        forceElevated: boolean;
        foregroundColor?: IColor | undefined;
        iconTheme?: IIconThemeData | undefined;
        leading?: IWidget | undefined;
        leadingWidth?: number | undefined;
        pinned: boolean;
        primary: boolean;
        shadowColor?: IColor | undefined;
        shape?: IShapeBorder | undefined;
        showOnScreenConfiguration?:
            | IPersistentHeaderShowOnScreenConfiguration
            | undefined;
        snapConfiguration?: IFloatingHeaderSnapConfiguration | undefined;
        stretchConfiguration?:
            | IOverScrollHeaderStretchConfiguration
            | undefined;
        systemOverlayStyle?: ISystemUiOverlayStyle | undefined;
        textTheme?: ITextTheme | undefined;
        title?: IWidget | undefined;
        titleSpacing?: number | undefined;
        titleTextStyle?: ITextStyle | undefined;
        toolbarHeight?: number | undefined;
        toolbarTextStyle?: ITextStyle | undefined;
        topPadding: number;
        vsync: ITickerProvider;
    }) {
        flutter.material._sliverAppBarDelegate(this, props);
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
    private readonly _dart_toString: () => string = undefined as any;
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
    public toString(): string {
        return this._dart_toString();
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
