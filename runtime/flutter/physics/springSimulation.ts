import { ISimulation } from "./simulation";
import { ISpringDescription } from "./springDescription";
import { SpringType } from "./springType";
import { ITolerance, Tolerance } from "./tolerance";
declare const flutter: {
    physics: {
        springSimulation: (
            this: void,
            springSimulation: ISpringSimulation,
            spring: ISpringDescription,
            start: number,
            end: number,
            velocity: number,
            props: { tolerance: ITolerance }
        ) => ISpringSimulation;
    };
};
export interface ISpringSimulation {
    tolerance: ITolerance;
    getType: () => SpringType;
    x: (time: number) => number;
    dx: (time: number) => number;
    isDone: (time: number) => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class SpringSimulation implements ISimulation {
    public readonly tolerance: ITolerance = undefined as any;
    public constructor(
        spring: ISpringDescription,
        start: number,
        end: number,
        velocity: number,
        props: { tolerance?: ITolerance }
    ) {
        flutter.physics.springSimulation(this, spring, start, end, velocity, {
            ...springSimulationDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getType: () => SpringType = undefined as any;
    private readonly _dart_x: (time: number) => number = undefined as any;
    private readonly _dart_dx: (time: number) => number = undefined as any;
    private readonly _dart_isDone: (time: number) => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getType(): SpringType {
        return this._dart_getType();
    }
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
const springSimulationDefaultProps = {
    tolerance: Tolerance.defaultTolerance,
};
