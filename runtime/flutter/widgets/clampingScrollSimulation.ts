
import { ITolerance,Tolerance } from "../physics/tolerance";
import { ISimulation } from "../physics/simulation";
declare const flutter: {
widgets: {
clampingScrollSimulation: (this: void, clampingScrollSimulation: IClampingScrollSimulation, props : {  friction : number, tolerance : ITolerance, position : number, velocity : number,}) => IClampingScrollSimulation
}
};
export interface IClampingScrollSimulation


{
position: number;
velocity: number;
friction: number;
tolerance: ITolerance;
x: (time: number) => number;
dx: (time: number) => number;
isDone: (time: number) => boolean;
toString: () => string;
getHashCode: () => number;
}export class ClampingScrollSimulation

 implements ISimulation
{    public static _initialVelocityPenetration = 3.065;
    public readonly position: number = undefined as any;
    public readonly velocity: number = undefined as any;
    public readonly friction: number = undefined as any;
    public readonly tolerance: ITolerance = undefined as any;
public constructor( props : {  friction? : number, tolerance? : ITolerance, position : number, velocity : number,}){
flutter.widgets.clampingScrollSimulation(this, {
...clampingScrollSimulationDefaultProps,
...props
});}
    private readonly _dart_x: (time: number) => number = undefined as any;
    private readonly _dart_dx: (time: number) => number = undefined as any;
    private readonly _dart_isDone: (time: number) => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public x(time: number) : number {
    return this._dart_x(time);
}
public dx(time: number) : number {
    return this._dart_dx(time);
}
public isDone(time: number) : boolean {
    return this._dart_isDone(time);
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
const clampingScrollSimulationDefaultProps = {
    friction: 0.015,
    tolerance: Tolerance.defaultTolerance,
};
