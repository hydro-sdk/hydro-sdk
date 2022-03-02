import { IFrictionSimulation } from "./frictionSimulation";
import { ITolerance } from "./tolerance";
declare const flutter: {
    physics: {
        boundedFrictionSimulation: (
            this: void,
            boundedFrictionSimulation: IBoundedFrictionSimulation,
            drag: number,
            position: number,
            velocity: number,
            _minX: number,
            _maxX: number
        ) => IBoundedFrictionSimulation;
    };
};
export interface IBoundedFrictionSimulation {
    tolerance: ITolerance;
    x: (time: number) => number;
    isDone: (time: number) => boolean;
    toString: () => string;
    dx: (time: number) => number;
    timeAtX: (x: number) => number;
    getFinalX: () => number;
    getHashCode: () => number;
}
export class BoundedFrictionSimulation implements IFrictionSimulation {
    public readonly tolerance: ITolerance = undefined as any;
    public constructor(
        drag: number,
        position: number,
        velocity: number,
        _minX: number,
        _maxX: number
    ) {
        flutter.physics.boundedFrictionSimulation(
            this,
            drag,
            position,
            velocity,
            _minX,
            _maxX
        );
    }
    private readonly _dart_x: (time: number) => number = undefined as any;
    private readonly _dart_isDone: (time: number) => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_dx: (time: number) => number = undefined as any;
    private readonly _dart_timeAtX: (x: number) => number = undefined as any;
    private readonly _dart_getFinalX: () => number = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public x(time: number): number {
        return this._dart_x(time);
    }
    public isDone(time: number): boolean {
        return this._dart_isDone(time);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public dx(time: number): number {
        return this._dart_dx(time);
    }
    public timeAtX(x: number): number {
        return this._dart_timeAtX(x);
    }
    public getFinalX(): number {
        return this._dart_getFinalX();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
