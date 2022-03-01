
import { ISliverGridGeometry } from "./sliverGridGeometry";
export interface ISliverGridLayout


{
getMinChildIndexForScrollOffset: (scrollOffset: number) => number;
getMaxChildIndexForScrollOffset: (scrollOffset: number) => number;
getGeometryForChildIndex: (index: number) => ISliverGridGeometry;
computeMaxScrollOffset: (childCount: number) => number;
}