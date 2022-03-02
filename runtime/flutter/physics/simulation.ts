import { ITolerance, Tolerance } from "./tolerance";
declare const flutter: {
    physics: {
        simulation: (
            this: void,
            simulation: ISimulation,
            props: { tolerance: ITolerance }
        ) => ISimulation;
    };
};
export interface ISimulation {
    tolerance: ITolerance;
    x: (time: number) => number;
    dx: (time: number) => number;
    isDone: (time: number) => boolean;
    toString: () => string;
}
export class Simulation {
    public readonly tolerance: ITolerance = undefined as any;
    public constructor(props: { tolerance?: ITolerance }) {
        flutter.physics.simulation(this, {
            ...simulationDefaultProps,
            ...props,
        });
    }
    private readonly _dart_x: (time: number) => number = undefined as any;
    private readonly _dart_dx: (time: number) => number = undefined as any;
    private readonly _dart_isDone: (time: number) => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
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
}
const simulationDefaultProps = {
    tolerance: Tolerance.defaultTolerance,
};
