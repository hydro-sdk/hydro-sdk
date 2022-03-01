
import { AxisDirection } from "../painting/axisDirection";
import { IScrollMetrics } from "./scrollMetrics";
import { Axis } from "../painting/axis";
declare const flutter: {
widgets: {
fixedScrollMetrics: (this: void, fixedScrollMetrics: IFixedScrollMetrics, props : {  axisDirection : AxisDirection, maxScrollExtent? : number | undefined, minScrollExtent? : number | undefined, pixels? : number | undefined, viewportDimension? : number | undefined,}) => IFixedScrollMetrics
}
};
export interface IFixedScrollMetrics


{
axisDirection: AxisDirection;
getMinScrollExtent: () => number;
getMaxScrollExtent: () => number;
getHasContentDimensions: () => boolean;
getPixels: () => number;
getHasPixels: () => boolean;
getViewportDimension: () => number;
getHasViewportDimension: () => boolean;
toString: () => string;
copyWith: ( props? : {  axisDirection? : AxisDirection | undefined, maxScrollExtent? : number | undefined, minScrollExtent? : number | undefined, pixels? : number | undefined, viewportDimension? : number | undefined,}) => IScrollMetrics;
getAxisDirection: () => AxisDirection;
getAxis: () => Axis;
getOutOfRange: () => boolean;
getAtEdge: () => boolean;
getExtentBefore: () => number;
getExtentInside: () => number;
getExtentAfter: () => number;
}export class FixedScrollMetrics

 implements IScrollMetrics
{    public readonly axisDirection: AxisDirection = undefined as any;
public constructor( props : {  axisDirection : AxisDirection, maxScrollExtent? : number | undefined, minScrollExtent? : number | undefined, pixels? : number | undefined, viewportDimension? : number | undefined,}){
flutter.widgets.fixedScrollMetrics(this, props);}
    private readonly _dart_getMinScrollExtent: () => number = undefined as any;
    private readonly _dart_getMaxScrollExtent: () => number = undefined as any;
    private readonly _dart_getHasContentDimensions: () => boolean = undefined as any;
    private readonly _dart_getPixels: () => number = undefined as any;
    private readonly _dart_getHasPixels: () => boolean = undefined as any;
    private readonly _dart_getViewportDimension: () => number = undefined as any;
    private readonly _dart_getHasViewportDimension: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_copyWith: ( props? : {  axisDirection? : AxisDirection | undefined, maxScrollExtent? : number | undefined, minScrollExtent? : number | undefined, pixels? : number | undefined, viewportDimension? : number | undefined,}) => IScrollMetrics = undefined as any;
    private readonly _dart_getAxisDirection: () => AxisDirection = undefined as any;
    private readonly _dart_getAxis: () => Axis = undefined as any;
    private readonly _dart_getOutOfRange: () => boolean = undefined as any;
    private readonly _dart_getAtEdge: () => boolean = undefined as any;
    private readonly _dart_getExtentBefore: () => number = undefined as any;
    private readonly _dart_getExtentInside: () => number = undefined as any;
    private readonly _dart_getExtentAfter: () => number = undefined as any;
public getMinScrollExtent() : number {
    return this._dart_getMinScrollExtent();
}
public getMaxScrollExtent() : number {
    return this._dart_getMaxScrollExtent();
}
public getHasContentDimensions() : boolean {
    return this._dart_getHasContentDimensions();
}
public getPixels() : number {
    return this._dart_getPixels();
}
public getHasPixels() : boolean {
    return this._dart_getHasPixels();
}
public getViewportDimension() : number {
    return this._dart_getViewportDimension();
}
public getHasViewportDimension() : boolean {
    return this._dart_getHasViewportDimension();
}
public toString() : string {
    return this._dart_toString();
}
public copyWith( props? : {  axisDirection? : AxisDirection | undefined, maxScrollExtent? : number | undefined, minScrollExtent? : number | undefined, pixels? : number | undefined, viewportDimension? : number | undefined,}) : IScrollMetrics {
    return this._dart_copyWith(props);
}
public getAxisDirection() : AxisDirection {
    return this._dart_getAxisDirection();
}
public getAxis() : Axis {
    return this._dart_getAxis();
}
public getOutOfRange() : boolean {
    return this._dart_getOutOfRange();
}
public getAtEdge() : boolean {
    return this._dart_getAtEdge();
}
public getExtentBefore() : number {
    return this._dart_getExtentBefore();
}
public getExtentInside() : number {
    return this._dart_getExtentInside();
}
public getExtentAfter() : number {
    return this._dart_getExtentAfter();
}
}
