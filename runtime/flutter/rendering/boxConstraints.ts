
import { IConstraints } from "./constraints";
import { IIterable } from "../../dart/core/iterable";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IEdgeInsets } from "../painting/edgeInsets";
import { ISize } from "../../dart/ui/size";
import { double } from "../../dart/core/double";
declare const flutter: {
rendering: {
boxConstraints: (this: void, boxConstraints: IBoxConstraints, props : {  maxHeight : number, maxWidth : number, minHeight : number, minWidth : number,}) => IBoxConstraints;
boxConstraintsLerp: (a: IBoxConstraints | undefined, b: IBoxConstraints | undefined, t: number) => IBoxConstraints | undefined
}
};
export interface IBoxConstraints


{
minWidth: number;
maxWidth: number;
minHeight: number;
maxHeight: number;
copyWith: ( props? : {  maxHeight? : number | undefined, maxWidth? : number | undefined, minHeight? : number | undefined, minWidth? : number | undefined,}) => IBoxConstraints;
deflate: (edges: IEdgeInsets) => IBoxConstraints;
loosen: () => IBoxConstraints;
enforce: (constraints: IBoxConstraints) => IBoxConstraints;
tighten: ( props? : {  height? : number | undefined, width? : number | undefined,}) => IBoxConstraints;
getFlipped: () => IBoxConstraints;
widthConstraints: () => IBoxConstraints;
heightConstraints: () => IBoxConstraints;
constrainWidth: (width: number) => number;
constrainHeight: (height: number) => number;
constrain: (size: ISize) => ISize;
constrainDimensions: (width: number, height: number) => ISize;
constrainSizeAndAttemptToPreserveAspectRatio: (size: ISize) => ISize;
getBiggest: () => ISize;
getSmallest: () => ISize;
getHasTightWidth: () => boolean;
getHasTightHeight: () => boolean;
getIsTight: () => boolean;
getHasBoundedWidth: () => boolean;
getHasBoundedHeight: () => boolean;
getHasInfiniteWidth: () => boolean;
getHasInfiniteHeight: () => boolean;
isSatisfiedBy: (size: ISize) => boolean;
getIsNormalized: () => boolean;
debugAssertIsValid: ( props : {  informationCollector? : () => IIterable<IDiagnosticsNode> | undefined, isAppliedConstraint : boolean,}) => boolean;
normalize: () => IBoxConstraints;
getHashCode: () => number;
toString: () => string;
}export class BoxConstraints

 implements IConstraints
{    public readonly minWidth: number = undefined as any;
    public readonly maxWidth: number = undefined as any;
    public readonly minHeight: number = undefined as any;
    public readonly maxHeight: number = undefined as any;
public constructor( props : {  maxHeight? : number, maxWidth? : number, minHeight? : number, minWidth? : number,}){
flutter.rendering.boxConstraints(this, {
...boxConstraintsDefaultProps,
...props
});}
public static lerp(a: IBoxConstraints | undefined, b: IBoxConstraints | undefined, t: number) : IBoxConstraints | undefined{
return flutter.rendering.boxConstraintsLerp(a, b, t);
}    private readonly _dart_copyWith: ( props? : {  maxHeight? : number | undefined, maxWidth? : number | undefined, minHeight? : number | undefined, minWidth? : number | undefined,}) => IBoxConstraints = undefined as any;
    private readonly _dart_deflate: (edges: IEdgeInsets) => IBoxConstraints = undefined as any;
    private readonly _dart_loosen: () => IBoxConstraints = undefined as any;
    private readonly _dart_enforce: (constraints: IBoxConstraints) => IBoxConstraints = undefined as any;
    private readonly _dart_tighten: ( props? : {  height? : number | undefined, width? : number | undefined,}) => IBoxConstraints = undefined as any;
    private readonly _dart_getFlipped: () => IBoxConstraints = undefined as any;
    private readonly _dart_widthConstraints: () => IBoxConstraints = undefined as any;
    private readonly _dart_heightConstraints: () => IBoxConstraints = undefined as any;
    private readonly _dart_constrainWidth: (width: number) => number = undefined as any;
    private readonly _dart_constrainHeight: (height: number) => number = undefined as any;
    private readonly _dart_constrain: (size: ISize) => ISize = undefined as any;
    private readonly _dart_constrainDimensions: (width: number, height: number) => ISize = undefined as any;
    private readonly _dart_constrainSizeAndAttemptToPreserveAspectRatio: (size: ISize) => ISize = undefined as any;
    private readonly _dart_getBiggest: () => ISize = undefined as any;
    private readonly _dart_getSmallest: () => ISize = undefined as any;
    private readonly _dart_getHasTightWidth: () => boolean = undefined as any;
    private readonly _dart_getHasTightHeight: () => boolean = undefined as any;
    private readonly _dart_getIsTight: () => boolean = undefined as any;
    private readonly _dart_getHasBoundedWidth: () => boolean = undefined as any;
    private readonly _dart_getHasBoundedHeight: () => boolean = undefined as any;
    private readonly _dart_getHasInfiniteWidth: () => boolean = undefined as any;
    private readonly _dart_getHasInfiniteHeight: () => boolean = undefined as any;
    private readonly _dart_isSatisfiedBy: (size: ISize) => boolean = undefined as any;
    private readonly _dart_getIsNormalized: () => boolean = undefined as any;
    private readonly _dart_debugAssertIsValid: ( props : {  informationCollector? : () => IIterable<IDiagnosticsNode> | undefined, isAppliedConstraint : boolean,}) => boolean = undefined as any;
    private readonly _dart_normalize: () => IBoxConstraints = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
public copyWith( props? : {  maxHeight? : number | undefined, maxWidth? : number | undefined, minHeight? : number | undefined, minWidth? : number | undefined,}) : IBoxConstraints {
    return this._dart_copyWith(props);
}
public deflate(edges: IEdgeInsets) : IBoxConstraints {
    return this._dart_deflate(edges);
}
public loosen() : IBoxConstraints {
    return this._dart_loosen();
}
public enforce(constraints: IBoxConstraints) : IBoxConstraints {
    return this._dart_enforce(constraints);
}
public tighten( props? : {  height? : number | undefined, width? : number | undefined,}) : IBoxConstraints {
    return this._dart_tighten(props);
}
public getFlipped() : IBoxConstraints {
    return this._dart_getFlipped();
}
public widthConstraints() : IBoxConstraints {
    return this._dart_widthConstraints();
}
public heightConstraints() : IBoxConstraints {
    return this._dart_heightConstraints();
}
public constrainWidth(width: number = double.infinity) : number {
    return this._dart_constrainWidth(width);
}
public constrainHeight(height: number = double.infinity) : number {
    return this._dart_constrainHeight(height);
}
public constrain(size: ISize) : ISize {
    return this._dart_constrain(size);
}
public constrainDimensions(width: number, height: number) : ISize {
    return this._dart_constrainDimensions(width, height);
}
public constrainSizeAndAttemptToPreserveAspectRatio(size: ISize) : ISize {
    return this._dart_constrainSizeAndAttemptToPreserveAspectRatio(size);
}
public getBiggest() : ISize {
    return this._dart_getBiggest();
}
public getSmallest() : ISize {
    return this._dart_getSmallest();
}
public getHasTightWidth() : boolean {
    return this._dart_getHasTightWidth();
}
public getHasTightHeight() : boolean {
    return this._dart_getHasTightHeight();
}
public getIsTight() : boolean {
    return this._dart_getIsTight();
}
public getHasBoundedWidth() : boolean {
    return this._dart_getHasBoundedWidth();
}
public getHasBoundedHeight() : boolean {
    return this._dart_getHasBoundedHeight();
}
public getHasInfiniteWidth() : boolean {
    return this._dart_getHasInfiniteWidth();
}
public getHasInfiniteHeight() : boolean {
    return this._dart_getHasInfiniteHeight();
}
public isSatisfiedBy(size: ISize) : boolean {
    return this._dart_isSatisfiedBy(size);
}
public getIsNormalized() : boolean {
    return this._dart_getIsNormalized();
}
public debugAssertIsValid( props : {  informationCollector? : () => IIterable<IDiagnosticsNode> | undefined, isAppliedConstraint? : boolean,}) : boolean {
    return this._dart_debugAssertIsValid({
...debugAssertIsValidDefaultProps,
...props
});
}
public normalize() : IBoxConstraints {
    return this._dart_normalize();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
public toString() : string {
    return this._dart_toString();
}
}
const boxConstraintsDefaultProps = {
    maxHeight: double.infinity,
    maxWidth: double.infinity,
    minHeight: 0.0,
    minWidth: 0.0,
};
const debugAssertIsValidDefaultProps = {
    isAppliedConstraint: false,
};
