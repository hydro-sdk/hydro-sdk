import { double } from "../../dart/core/double";
import { ISimulation } from "./simulation";
import { ITolerance } from "./tolerance";
declare const flutter: {
    physics: {
        clampedSimulation: (
            this: void,
            clampedSimulation: IClampedSimulation,
            simulation: ISimulation,
            props: { dxMax: number; dxMin: number; xMax: number; xMin: number }
        ) => IClampedSimulation;
    };
};
export interface IClampedSimulation {
    simulation: ISimulation;
    xMin: number;
    xMax: number;
    dxMin: number;
    dxMax: number;
    tolerance: ITolerance;
    x: (time: number) => number;
    dx: (time: number) => number;
    isDone: (time: number) => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class ClampedSimulation implements ISimulation {
    public readonly simulation: ISimulation = undefined as any;
    public readonly xMin: number = undefined as any;
    public readonly xMax: number = undefined as any;
    public readonly dxMin: number = undefined as any;
    public readonly dxMax: number = undefined as any;
    public readonly tolerance: ITolerance = undefined as any;
    public constructor(
        simulation: ISimulation,
        props: { dxMax?: number; dxMin?: number; xMax?: number; xMin?: number }
    ) {
        flutter.physics.clampedSimulation(this, simulation, {
            ...clampedSimulationDefaultProps,
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
const clampedSimulationDefaultProps = {
    dxMax: double.infinity,
    dxMin: double.negativeInfinity,
    xMax: double.infinity,
    xMin: double.negativeInfinity,
};
