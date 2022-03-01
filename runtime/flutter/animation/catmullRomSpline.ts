
import { IOffset } from "../../dart/ui/offset";
import { IList } from "../../dart/core/list";
import { ICurve2D } from "./curve2D";
import { IIterable } from "../../dart/core/iterable";
import { ICurve2DSample } from "./curve2DSample";
declare const flutter: {
animation: {
catmullRomSpline: (this: void, catmullRomSpline: ICatmullRomSpline, controlPoints: IList<IOffset>, props : {  endHandle? : IOffset | undefined, startHandle? : IOffset | undefined, tension : number,}) => ICatmullRomSpline
}
};
export interface ICatmullRomSpline


{
getSamplingSeed: () => number;
transformInternal: (t: number) => IOffset;
generateSamples: ( props : {  end : number, start : number, tolerance : number,}) => IIterable<ICurve2DSample>;
findInverse: (x: number) => number;
transform: (t: number) => IOffset;
toString: () => string;
getHashCode: () => number;
}export class CatmullRomSpline

 implements ICurve2D
{public constructor(controlPoints: IList<IOffset>, props : {  endHandle? : IOffset | undefined, startHandle? : IOffset | undefined, tension? : number,}){
flutter.animation.catmullRomSpline(this, controlPoints, {
...catmullRomSplineDefaultProps,
...props
});}
    private readonly _dart_getSamplingSeed: () => number = undefined as any;
    private readonly _dart_transformInternal: (t: number) => IOffset = undefined as any;
    private readonly _dart_generateSamples: ( props : {  end : number, start : number, tolerance : number,}) => IIterable<ICurve2DSample> = undefined as any;
    private readonly _dart_findInverse: (x: number) => number = undefined as any;
    private readonly _dart_transform: (t: number) => IOffset = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getSamplingSeed() : number {
    return this._dart_getSamplingSeed();
}
public transformInternal(t: number) : IOffset {
    return this._dart_transformInternal(t);
}
public generateSamples( props : {  end? : number, start? : number, tolerance? : number,}) : IIterable<ICurve2DSample> {
    return this._dart_generateSamples({
...generateSamplesDefaultProps,
...props
});
}
public findInverse(x: number) : number {
    return this._dart_findInverse(x);
}
public transform(t: number) : IOffset {
    return this._dart_transform(t);
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
const catmullRomSplineDefaultProps = {
    tension: 0.0,
};
const generateSamplesDefaultProps = {
    end: 1.0,
    start: 0.0,
    tolerance: 1e-10,
};
