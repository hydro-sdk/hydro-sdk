
import { IParametricCurve } from "./parametricCurve";
import { IOffset } from "../../dart/ui/offset";
import { IIterable } from "../../dart/core/iterable";
import { ICurve2DSample } from "./curve2DSample";
declare const flutter: {
animation: {
curve2D: (this: void, curve2D: ICurve2D) => ICurve2D
}
};
export interface ICurve2D


{
generateSamples: ( props : {  end : number, start : number, tolerance : number,}) => IIterable<ICurve2DSample>;
getSamplingSeed: () => number;
findInverse: (x: number) => number;
transform: (t: number) => IOffset;
transformInternal: (t: number) => IOffset;
toString: () => string;
getHashCode: () => number;
}export class Curve2D

 implements IParametricCurve<IOffset>
{public constructor(){
flutter.animation.curve2D(this);}
    private readonly _dart_generateSamples: ( props : {  end : number, start : number, tolerance : number,}) => IIterable<ICurve2DSample> = undefined as any;
    private readonly _dart_getSamplingSeed: () => number = undefined as any;
    private readonly _dart_findInverse: (x: number) => number = undefined as any;
    private readonly _dart_transform: (t: number) => IOffset = undefined as any;
    private readonly _dart_transformInternal: (t: number) => IOffset = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public generateSamples( props : {  end? : number, start? : number, tolerance? : number,}) : IIterable<ICurve2DSample> {
    return this._dart_generateSamples({
...generateSamplesDefaultProps,
...props
});
}
public getSamplingSeed() : number {
    return this._dart_getSamplingSeed();
}
public findInverse(x: number) : number {
    return this._dart_findInverse(x);
}
public transform(t: number) : IOffset {
    return this._dart_transform(t);
}
public transformInternal(t: number) : IOffset {
    return this._dart_transformInternal(t);
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
const generateSamplesDefaultProps = {
    end: 1.0,
    start: 0.0,
    tolerance: 1e-10,
};
