
import { ITransitionDelegate } from "./transitionDelegate";
import { IMap } from "../../dart/core/map";
import { IRouteTransitionRecord } from "./routeTransitionRecord";
import { IList } from "../../dart/core/list";
import { IIterable } from "../../dart/core/iterable";
declare const flutter: {
widgets: {
defaultTransitionDelegate: <T>(this: void, defaultTransitionDelegate: IDefaultTransitionDelegate<T>) => IDefaultTransitionDelegate<T>
}
};
export interface IDefaultTransitionDelegate
<T>

{
resolve: ( props : {  locationToExitingPageRoute : IMap<IRouteTransitionRecord | undefined, IRouteTransitionRecord>, newPageRouteHistory : IList<IRouteTransitionRecord>, pageRouteToPagelessRoutes : IMap<IRouteTransitionRecord | undefined, IList<IRouteTransitionRecord>>,}) => IIterable<IRouteTransitionRecord>;
toString: () => string;
getHashCode: () => number;
}export class DefaultTransitionDelegate
<T>
 implements ITransitionDelegate<T>
{public constructor(){
flutter.widgets.defaultTransitionDelegate(this);}
    private readonly _dart_resolve: ( props : {  locationToExitingPageRoute : IMap<IRouteTransitionRecord | undefined, IRouteTransitionRecord>, newPageRouteHistory : IList<IRouteTransitionRecord>, pageRouteToPagelessRoutes : IMap<IRouteTransitionRecord | undefined, IList<IRouteTransitionRecord>>,}) => IIterable<IRouteTransitionRecord> = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public resolve( props : {  locationToExitingPageRoute : IMap<IRouteTransitionRecord | undefined, IRouteTransitionRecord>, newPageRouteHistory : IList<IRouteTransitionRecord>, pageRouteToPagelessRoutes : IMap<IRouteTransitionRecord | undefined, IList<IRouteTransitionRecord>>,}) : IIterable<IRouteTransitionRecord> {
    return this._dart_resolve(props);
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
