import { ISimulation } from "./simulation";
import { ITolerance } from "./tolerance";
declare const flutter: {
    physics: {
        gravitySimulation: (
            this: void,
            gravitySimulation: IGravitySimulation,
            acceleration: number,
            distance: number,
            endDistance: number,
            velocity: number
        ) => IGravitySimulation;
    };
};
export interface IGravitySimulation {
    tolerance: ITolerance;
    x: (time: number) => number;
    dx: (time: number) => number;
    isDone: (time: number) => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class GravitySimulation implements ISimulation {
    public readonly tolerance: ITolerance = undefined as any;
    public constructor(
        acceleration: number,
        distance: number,
        endDistance: number,
        velocity: number
    ) {
        flutter.physics.gravitySimulation(
            this,
            acceleration,
            distance,
            endDistance,
            velocity
        );
    }
    private readonly _dart_x: (time: number) => number = undefined as any;
    private readonly _dart_dx: (time: number) => number = undefined as any;
    private readonly _dart_isDone: (time: number) => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public x(time: number): number {
        return this._dart_x(time);
    }
    public dx(time: number): number {
        return this._dart_dx(time);
    }
    public isDone(time: number): boolean {
        return this._dart_isDone(time);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
