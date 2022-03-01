
import { ICurve } from "./curve";
declare const flutter: {
animation: {
elasticInCurve: (this: void, elasticInCurve: IElasticInCurve, period: number) => IElasticInCurve
}
};
export interface IElasticInCurve


{
period: number;
transformInternal: (t: number) => number;
toString: () => string;
transform: (t: number) => number;
getFlipped: () => ICurve;
getHashCode: () => number;
}export class ElasticInCurve

 implements ICurve
{    public readonly period: number = undefined as any;
public constructor(period: number = 0.4){
flutter.animation.elasticInCurve(this, period);}
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
