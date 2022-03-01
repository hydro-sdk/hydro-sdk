
import { AxisDirection } from "../painting/axisDirection";
import { GrowthDirection } from "./growthDirection";
import { ScrollDirection } from "./scrollDirection";
import { IConstraints } from "./constraints";
import { IIterable } from "../../dart/core/iterable";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { Axis } from "../painting/axis";
import { IBoxConstraints } from "./boxConstraints";
import { double } from "../../dart/core/double";
declare const flutter: {
rendering: {
sliverConstraints: (this: void, sliverConstraints: ISliverConstraints, props : {  axisDirection : AxisDirection, cacheOrigin : number, crossAxisDirection : AxisDirection, crossAxisExtent : number, growthDirection : GrowthDirection, overlap : number, precedingScrollExtent : number, remainingCacheExtent : number, remainingPaintExtent : number, scrollOffset : number, userScrollDirection : ScrollDirection, viewportMainAxisExtent : number,}) => ISliverConstraints
}
};
export interface ISliverConstraints


{
axisDirection: AxisDirection;
growthDirection: GrowthDirection;
userScrollDirection: ScrollDirection;
scrollOffset: number;
precedingScrollExtent: number;
overlap: number;
remainingPaintExtent: number;
crossAxisExtent: number;
crossAxisDirection: AxisDirection;
viewportMainAxisExtent: number;
cacheOrigin: number;
remainingCacheExtent: number;
copyWith: ( props? : {  axisDirection? : AxisDirection | undefined, cacheOrigin? : number | undefined, crossAxisDirection? : AxisDirection | undefined, crossAxisExtent? : number | undefined, growthDirection? : GrowthDirection | undefined, overlap? : number | undefined, precedingScrollExtent? : number | undefined, remainingCacheExtent? : number | undefined, remainingPaintExtent? : number | undefined, scrollOffset? : number | undefined, userScrollDirection? : ScrollDirection | undefined, viewportMainAxisExtent? : number | undefined,}) => ISliverConstraints;
getAxis: () => Axis;
getNormalizedGrowthDirection: () => GrowthDirection;
getIsTight: () => boolean;
getIsNormalized: () => boolean;
asBoxConstraints: ( props : {  crossAxisExtent? : number | undefined, maxExtent : number, minExtent : number,}) => IBoxConstraints;
debugAssertIsValid: ( props : {  informationCollector? : () => IIterable<IDiagnosticsNode> | undefined, isAppliedConstraint : boolean,}) => boolean;
getHashCode: () => number;
toString: () => string;
}export class SliverConstraints

 implements IConstraints
{    public readonly axisDirection: AxisDirection = undefined as any;
    public readonly growthDirection: GrowthDirection = undefined as any;
    public readonly userScrollDirection: ScrollDirection = undefined as any;
    public readonly scrollOffset: number = undefined as any;
    public readonly precedingScrollExtent: number = undefined as any;
    public readonly overlap: number = undefined as any;
    public readonly remainingPaintExtent: number = undefined as any;
    public readonly crossAxisExtent: number = undefined as any;
    public readonly crossAxisDirection: AxisDirection = undefined as any;
    public readonly viewportMainAxisExtent: number = undefined as any;
    public readonly cacheOrigin: number = undefined as any;
    public readonly remainingCacheExtent: number = undefined as any;
public constructor( props : {  axisDirection : AxisDirection, cacheOrigin : number, crossAxisDirection : AxisDirection, crossAxisExtent : number, growthDirection : GrowthDirection, overlap : number, precedingScrollExtent : number, remainingCacheExtent : number, remainingPaintExtent : number, scrollOffset : number, userScrollDirection : ScrollDirection, viewportMainAxisExtent : number,}){
flutter.rendering.sliverConstraints(this, props);}
    private readonly _dart_copyWith: ( props? : {  axisDirection? : AxisDirection | undefined, cacheOrigin? : number | undefined, crossAxisDirection? : AxisDirection | undefined, crossAxisExtent? : number | undefined, growthDirection? : GrowthDirection | undefined, overlap? : number | undefined, precedingScrollExtent? : number | undefined, remainingCacheExtent? : number | undefined, remainingPaintExtent? : number | undefined, scrollOffset? : number | undefined, userScrollDirection? : ScrollDirection | undefined, viewportMainAxisExtent? : number | undefined,}) => ISliverConstraints = undefined as any;
    private readonly _dart_getAxis: () => Axis = undefined as any;
    private readonly _dart_getNormalizedGrowthDirection: () => GrowthDirection = undefined as any;
    private readonly _dart_getIsTight: () => boolean = undefined as any;
    private readonly _dart_getIsNormalized: () => boolean = undefined as any;
    private readonly _dart_asBoxConstraints: ( props : {  crossAxisExtent? : number | undefined, maxExtent : number, minExtent : number,}) => IBoxConstraints = undefined as any;
    private readonly _dart_debugAssertIsValid: ( props : {  informationCollector? : () => IIterable<IDiagnosticsNode> | undefined, isAppliedConstraint : boolean,}) => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
public copyWith( props? : {  axisDirection? : AxisDirection | undefined, cacheOrigin? : number | undefined, crossAxisDirection? : AxisDirection | undefined, crossAxisExtent? : number | undefined, growthDirection? : GrowthDirection | undefined, overlap? : number | undefined, precedingScrollExtent? : number | undefined, remainingCacheExtent? : number | undefined, remainingPaintExtent? : number | undefined, scrollOffset? : number | undefined, userScrollDirection? : ScrollDirection | undefined, viewportMainAxisExtent? : number | undefined,}) : ISliverConstraints {
    return this._dart_copyWith(props);
}
public getAxis() : Axis {
    return this._dart_getAxis();
}
public getNormalizedGrowthDirection() : GrowthDirection {
    return this._dart_getNormalizedGrowthDirection();
}
public getIsTight() : boolean {
    return this._dart_getIsTight();
}
public getIsNormalized() : boolean {
    return this._dart_getIsNormalized();
}
public asBoxConstraints( props : {  crossAxisExtent? : number | undefined, maxExtent? : number, minExtent? : number,}) : IBoxConstraints {
    return this._dart_asBoxConstraints({
...asBoxConstraintsDefaultProps,
...props
});
}
public debugAssertIsValid( props : {  informationCollector? : () => IIterable<IDiagnosticsNode> | undefined, isAppliedConstraint? : boolean,}) : boolean {
    return this._dart_debugAssertIsValid({
...debugAssertIsValidDefaultProps,
...props
});
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
public toString() : string {
    return this._dart_toString();
}
}
const asBoxConstraintsDefaultProps = {
    maxExtent: double.infinity,
    minExtent: 0.0,
};
const debugAssertIsValidDefaultProps = {
    isAppliedConstraint: false,
};
