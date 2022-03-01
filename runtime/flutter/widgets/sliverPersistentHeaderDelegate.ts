
import { IBuildContext } from "./buildContext";
import { IWidget } from "./widget";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { IFloatingHeaderSnapConfiguration } from "../rendering/floatingHeaderSnapConfiguration";
import { IOverScrollHeaderStretchConfiguration } from "../rendering/overScrollHeaderStretchConfiguration";
import { IPersistentHeaderShowOnScreenConfiguration } from "../rendering/persistentHeaderShowOnScreenConfiguration";
declare const flutter: {
widgets: {
sliverPersistentHeaderDelegate: (this: void, sliverPersistentHeaderDelegate: ISliverPersistentHeaderDelegate) => ISliverPersistentHeaderDelegate
}
};
export interface ISliverPersistentHeaderDelegate


{
build: (context: IBuildContext, shrinkOffset: number, overlapsContent: boolean) => IWidget;
getMinExtent: () => number;
getMaxExtent: () => number;
getVsync: () => ITickerProvider | undefined;
getSnapConfiguration: () => IFloatingHeaderSnapConfiguration | undefined;
getStretchConfiguration: () => IOverScrollHeaderStretchConfiguration | undefined;
getShowOnScreenConfiguration: () => IPersistentHeaderShowOnScreenConfiguration | undefined;
shouldRebuild: (oldDelegate: unknown) => boolean;
}export class SliverPersistentHeaderDelegate


{public constructor(){
flutter.widgets.sliverPersistentHeaderDelegate(this);}
    private readonly _dart_build: (context: IBuildContext, shrinkOffset: number, overlapsContent: boolean) => IWidget = undefined as any;
    private readonly _dart_getMinExtent: () => number = undefined as any;
    private readonly _dart_getMaxExtent: () => number = undefined as any;
    private readonly _dart_getVsync: () => ITickerProvider | undefined = undefined as any;
    private readonly _dart_getSnapConfiguration: () => IFloatingHeaderSnapConfiguration | undefined = undefined as any;
    private readonly _dart_getStretchConfiguration: () => IOverScrollHeaderStretchConfiguration | undefined = undefined as any;
    private readonly _dart_getShowOnScreenConfiguration: () => IPersistentHeaderShowOnScreenConfiguration | undefined = undefined as any;
    private readonly _dart_shouldRebuild: (oldDelegate: any) => boolean = undefined as any;
public build(context: IBuildContext, shrinkOffset: number, overlapsContent: boolean) : IWidget {
    return this._dart_build(context, shrinkOffset, overlapsContent);
}
public getMinExtent() : number {
    return this._dart_getMinExtent();
}
public getMaxExtent() : number {
    return this._dart_getMaxExtent();
}
public getVsync() : ITickerProvider | undefined {
    return this._dart_getVsync();
}
public getSnapConfiguration() : IFloatingHeaderSnapConfiguration | undefined {
    return this._dart_getSnapConfiguration();
}
public getStretchConfiguration() : IOverScrollHeaderStretchConfiguration | undefined {
    return this._dart_getStretchConfiguration();
}
public getShowOnScreenConfiguration() : IPersistentHeaderShowOnScreenConfiguration | undefined {
    return this._dart_getShowOnScreenConfiguration();
}
public shouldRebuild(oldDelegate: any) : boolean {
    return this._dart_shouldRebuild(oldDelegate);
}
}
