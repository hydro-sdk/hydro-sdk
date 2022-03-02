import { ISimulation } from "./simulation";
import { ITolerance, Tolerance } from "./tolerance";
declare const flutter: {
    physics: {
        frictionSimulation: (
            this: void,
            frictionSimulation: IFrictionSimulation,
            drag: number,
            position: number,
            velocity: number,
            props: { tolerance: ITolerance }
        ) => IFrictionSimulation;
        frictionSimulationThrough: (
            startPosition: number,
            endPosition: number,
            startVelocity: number,
            endVelocity: number
        ) => IFrictionSimulation;
    };
};
export interface IFrictionSimulation {
    tolerance: ITolerance;
    x: (time: number) => number;
    dx: (time: number) => number;
    getFinalX: () => number;
    timeAtX: (x: number) => number;
    isDone: (time: number) => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class FrictionSimulation implements ISimulation {
    public readonly tolerance: ITolerance = undefined as any;
    public constructor(
        drag: number,
        position: number,
        velocity: number,
        props: { tolerance?: ITolerance }
    ) {
        flutter.physics.frictionSimulation(this, drag, position, velocity, {
            ...frictionSimulationDefaultProps,
            ...props,
        });
    }
    public static through(
        startPosition: number,
        endPosition: number,
        startVelocity: number,
        endVelocity: number
    ): IFrictionSimulation {
        return flutter.physics.frictionSimulationThrough(
            startPosition,
            endPosition,
            startVelocity,
            endVelocity
        );
    }
    private readonly _dart_x: (time: number) => number = undefined as any;
    private readonly _dart_dx: (time: number) => number = undefined as any;
    private readonly _dart_getFinalX: () => number = undefined as any;
    private readonly _dart_timeAtX: (x: number) => number = undefined as any;
    private readonly _dart_isDone: (time: number) => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public x(time: number): number {
        return this._dart_x(time);
    }
    public dx(time: number): number {
        return this._dart_dx(time);
    }
    public getFinalX(): number {
        return this._dart_getFinalX();
    }
    public timeAtX(x: number): number {
        return this._dart_timeAtX(x);
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
const frictionSimulationDefaultProps = {
    tolerance: Tolerance.defaultTolerance,
};
