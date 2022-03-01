
import { IDuration } from "../../dart/core/duration";
import { _AnimationDirection } from "./_animationDirection";
import { ISimulation } from "../physics/simulation";
import { ITolerance } from "../physics/tolerance";
declare const flutter: {
animation: {
_repeatingSimulation: (this: void, _repeatingSimulation: I_RepeatingSimulation, initialValue: number, min: number, max: number, reverse: boolean, period: IDuration, directionSetter : (direction: _AnimationDirection) => void) => I_RepeatingSimulation
}
};
export interface I_RepeatingSimulation


{
min: number;
max: number;
reverse: boolean;
tolerance: ITolerance;
x: (timeInSeconds: number) => number;
dx: (timeInSeconds: number) => number;
isDone: (timeInSeconds: number) => boolean;
toString: () => string;
getHashCode: () => number;
}export class _RepeatingSimulation

 implements ISimulation
{    public readonly min: number = undefined as any;
    public readonly max: number = undefined as any;
    public readonly reverse: boolean = undefined as any;
    public readonly tolerance: ITolerance = undefined as any;
public constructor(initialValue: number, min: number, max: number, reverse: boolean, period: IDuration, directionSetter : (direction: _AnimationDirection) => void){
flutter.animation._repeatingSimulation(this, initialValue, min, max, reverse, period, directionSetter);}
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
