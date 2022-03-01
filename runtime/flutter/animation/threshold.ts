
import { ICurve } from "./curve";
declare const flutter: {
animation: {
threshold: (this: void, threshold: number) => IThreshold
}
};
export interface IThreshold


{
threshold: number;
transformInternal: (t: number) => number;
transform: (t: number) => number;
getFlipped: () => ICurve;
toString: () => string;
getHashCode: () => number;
}export class Threshold

 implements ICurve
{    public readonly threshold: number = undefined as any;
public constructor(threshold: number){
flutter.animation.threshold(this, threshold);}
    private readonly _dart_transformInternal: (t: number) => number = undefined as any;
    private readonly _dart_transform: (t: number) => number = undefined as any;
    private readonly _dart_getFlipped: () => ICurve = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public transformInternal(t: number) : number {
    return this._dart_transformInternal(t);
}
public transform(t: number) : number {
    return this._dart_transform(t);
}
public getFlipped() : ICurve {
    return this._dart_getFlipped();
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
