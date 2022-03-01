
import { IDuration } from "../../dart/core/duration";
import { ICurve } from "./curve";
import { ISimulation } from "../physics/simulation";
import { ITolerance } from "../physics/tolerance";
declare const flutter: {
animation: {
_interpolationSimulation: (this: void, _interpolationSimulation: I_InterpolationSimulation, _begin: number, _end: number, duration: IDuration, _curve: ICurve, scale: number) => I_InterpolationSimulation
}
};
export interface I_InterpolationSimulation


{
tolerance: ITolerance;
x: (timeInSeconds: number) => number;
dx: (timeInSeconds: number) => number;
isDone: (timeInSeconds: number) => boolean;
toString: () => string;
getHashCode: () => number;
}export class _InterpolationSimulation

 implements ISimulation
{    public readonly tolerance: ITolerance = undefined as any;
public constructor(_begin: number, _end: number, duration: IDuration, _curve: ICurve, scale: number){
flutter.animation._interpolationSimulation(this, _begin, _end, duration, _curve, scale);}
    private readonly _dart_x: (timeInSeconds: number) => number = undefined as any;
    private readonly _dart_dx: (timeInSeconds: number) => number = undefined as any;
    private readonly _dart_isDone: (timeInSeconds: number) => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public x(timeInSeconds: number) : number {
    return this._dart_x(timeInSeconds);
}
public dx(timeInSeconds: number) : number {
    return this._dart_dx(timeInSeconds);
}
public isDone(timeInSeconds: number) : boolean {
    return this._dart_isDone(timeInSeconds);
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
