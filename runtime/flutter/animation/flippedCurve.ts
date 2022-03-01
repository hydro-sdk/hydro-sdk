
import { ICurve } from "./curve";
declare const flutter: {
animation: {
flippedCurve: (this: void, flippedCurve: IFlippedCurve, curve: ICurve) => IFlippedCurve
}
};
export interface IFlippedCurve


{
curve: ICurve;
transformInternal: (t: number) => number;
toString: () => string;
transform: (t: number) => number;
getFlipped: () => ICurve;
getHashCode: () => number;
}export class FlippedCurve

 implements ICurve
{    public readonly curve: ICurve = undefined as any;
public constructor(curve: ICurve){
flutter.animation.flippedCurve(this, curve);}
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
