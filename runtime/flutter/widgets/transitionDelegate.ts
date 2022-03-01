
import { IMap } from "../../dart/core/map";
import { IRouteTransitionRecord } from "./routeTransitionRecord";
import { IList } from "../../dart/core/list";
import { IIterable } from "../../dart/core/iterable";
export interface ITransitionDelegate
<T>

{
resolve: ( props : {  locationToExitingPageRoute : IMap<IRouteTransitionRecord | undefined, IRouteTransitionRecord>, newPageRouteHistory : IList<IRouteTransitionRecord>, pageRouteToPagelessRoutes : IMap<IRouteTransitionRecord | undefined, IList<IRouteTransitionRecord>>,}) => IIterable<IRouteTransitionRecord>;
}