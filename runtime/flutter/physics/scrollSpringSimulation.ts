import { ISpringDescription } from "./springDescription";
import { ISpringSimulation } from "./springSimulation";
import { SpringType } from "./springType";
import { ITolerance, Tolerance } from "./tolerance";
declare const flutter: {
    physics: {
        scrollSpringSimulation: (
            this: void,
            scrollSpringSimulation: IScrollSpringSimulation,
            spring: ISpringDescription,
            start: number,
            end: number,
            velocity: number,
            props: { tolerance: ITolerance }
        ) => IScrollSpringSimulation;
    };
};
export interface IScrollSpringSimulation {
    tolerance: ITolerance;
    x: (time: number) => number;
    dx: (time: number) => number;
    isDone: (time: number) => boolean;
    toString: () => string;
    getType: () => SpringType;
    getHashCode: () => number;
}
export class ScrollSpringSimulation implements ISpringSimulation {
    public readonly tolerance: ITolerance = undefined as any;
    public constructor(
        spring: ISpringDescription,
        start: number,
        end: number,
        velocity: number,
        props: { tolerance?: ITolerance }
    ) {
        flutter.physics.scrollSpringSimulation(
            this,
            spring,
            start,
            end,
            velocity,
            {
                ...scrollSpringSimulationDefaultProps,
                ...props,
            }
        );
    }
    private readonly _dart_x: (time: number) => number = undefined as any;
    private readonly _dart_dx: (time: number) => number = undefined as any;
    private readonly _dart_isDone: (time: number) => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getType: () => SpringType = undefined as any;
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
    public getType(): SpringType {
        return this._dart_getType();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const scrollSpringSimulationDefaultProps = {
    tolerance: Tolerance.defaultTolerance,
};
