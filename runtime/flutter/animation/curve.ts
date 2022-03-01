
import { IParametricCurve } from "./parametricCurve";
declare const flutter: {
animation: {
curve: (this: void, curve: ICurve) => ICurve
}
};
export interface ICurve


{
transform: (t: number) => number;
getFlipped: () => ICurve;
transformInternal: (t: number) => number;
toString: () => string;
getHashCode: () => number;
}export class Curve

 implements IParametricCurve<number>
{public constructor(){
flutter.animation.curve(this);}
    private readonly _dart_transform: (t: number) => number = undefined as any;
    private readonly _dart_getFlipped: () => ICurve = undefined as any;
    private readonly _dart_transformInternal: (t: number) => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public transform(t: number) : number {
    return this._dart_transform(t);
}
public getFlipped() : ICurve {
    return this._dart_getFlipped();
}
public transformInternal(t: number) : number {
    return this._dart_transformInternal(t);
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
