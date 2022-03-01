
import { IOffset } from "../../dart/ui/offset";
import { ICurve } from "./curve";
declare const flutter: {
animation: {
threePointCubic: (this: void, threePointCubic: IThreePointCubic, a1: IOffset, b1: IOffset, midpoint: IOffset, a2: IOffset, b2: IOffset) => IThreePointCubic
}
};
export interface IThreePointCubic


{
a1: IOffset;
b1: IOffset;
midpoint: IOffset;
a2: IOffset;
b2: IOffset;
transformInternal: (t: number) => number;
toString: () => string;
transform: (t: number) => number;
getFlipped: () => ICurve;
getHashCode: () => number;
}export class ThreePointCubic

 implements ICurve
{    public readonly a1: IOffset = undefined as any;
    public readonly b1: IOffset = undefined as any;
    public readonly midpoint: IOffset = undefined as any;
    public readonly a2: IOffset = undefined as any;
    public readonly b2: IOffset = undefined as any;
public constructor(a1: IOffset, b1: IOffset, midpoint: IOffset, a2: IOffset, b2: IOffset){
flutter.animation.threePointCubic(this, a1, b1, midpoint, a2, b2);}
    private readonly _dart_transformInternal: (t: number) => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_transform: (t: number) => number = undefined as any;
    private readonly _dart_getFlipped: () => ICurve = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public transformInternal(t: number) : number {
    return this._dart_transformInternal(t);
}
public toString() : string {
    return this._dart_toString();
}
public transform(t: number) : number {
    return this._dart_transform(t);
}
public getFlipped() : ICurve {
    return this._dart_getFlipped();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
