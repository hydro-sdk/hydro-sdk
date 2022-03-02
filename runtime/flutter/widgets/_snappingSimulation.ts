import { IList } from "../../dart/core/list";
import { ISimulation } from "../physics/simulation";
import { ITolerance, Tolerance } from "../physics/tolerance";
declare const flutter: {
    widgets: {
        _snappingSimulation: (
            this: void,
            _snappingSimulation: I_SnappingSimulation,
            props: {
                tolerance: ITolerance;
                initialVelocity: number;
                pixelSnapSize: IList<number>;
                position: number;
            }
        ) => I_SnappingSimulation;
    };
};
export interface I_SnappingSimulation {
    position: number;
    velocity: number;
    tolerance: ITolerance;
    dx: (time: number) => number;
    isDone: (time: number) => boolean;
    x: (time: number) => number;
    toString: () => string;
    getHashCode: () => number;
}
export class _SnappingSimulation implements ISimulation {
    public static minimumSpeed = 1600.0;
    public readonly position: number = undefined as any;
    public readonly velocity: number = undefined as any;
    public readonly tolerance: ITolerance = undefined as any;
    public constructor(props: {
        tolerance?: ITolerance;
        initialVelocity: number;
        pixelSnapSize: IList<number>;
        position: number;
    }) {
        flutter.widgets._snappingSimulation(this, {
            ..._snappingSimulationDefaultProps,
            ...props,
        });
    }
    private readonly _dart_dx: (time: number) => number = undefined as any;
    private readonly _dart_isDone: (time: number) => boolean = undefined as any;
    private readonly _dart_x: (time: number) => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public dx(time: number): number {
        return this._dart_dx(time);
    }
    public isDone(time: number): boolean {
        return this._dart_isDone(time);
    }
    public x(time: number): number {
        return this._dart_x(time);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const _snappingSimulationDefaultProps = {
    tolerance: Tolerance.defaultTolerance,
};
