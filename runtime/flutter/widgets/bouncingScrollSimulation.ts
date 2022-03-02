import { ISimulation } from "../physics/simulation";
import { ISpringDescription } from "../physics/springDescription";
import { ITolerance, Tolerance } from "../physics/tolerance";
declare const flutter: {
    widgets: {
        bouncingScrollSimulation: (
            this: void,
            bouncingScrollSimulation: IBouncingScrollSimulation,
            props: {
                tolerance: ITolerance;
                leadingExtent: number;
                position: number;
                spring: ISpringDescription;
                trailingExtent: number;
                velocity: number;
            }
        ) => IBouncingScrollSimulation;
    };
};
export interface IBouncingScrollSimulation {
    leadingExtent: number;
    trailingExtent: number;
    spring: ISpringDescription;
    tolerance: ITolerance;
    x: (time: number) => number;
    dx: (time: number) => number;
    isDone: (time: number) => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class BouncingScrollSimulation implements ISimulation {
    public static maxSpringTransferVelocity = 5000.0;
    public readonly leadingExtent: number = undefined as any;
    public readonly trailingExtent: number = undefined as any;
    public readonly spring: ISpringDescription = undefined as any;
    public readonly tolerance: ITolerance = undefined as any;
    public constructor(props: {
        tolerance?: ITolerance;
        leadingExtent: number;
        position: number;
        spring: ISpringDescription;
        trailingExtent: number;
        velocity: number;
    }) {
        flutter.widgets.bouncingScrollSimulation(this, {
            ...bouncingScrollSimulationDefaultProps,
            ...props,
        });
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
const bouncingScrollSimulationDefaultProps = {
    tolerance: Tolerance.defaultTolerance,
};
