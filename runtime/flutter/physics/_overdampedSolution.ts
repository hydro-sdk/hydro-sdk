import { I_SpringSolution } from "./_springSolution";
import { ISpringDescription } from "./springDescription";
import { SpringType } from "./springType";
declare const flutter: {
    physics: {
        _overdampedSolution: (
            this: void,
            _overdampedSolution: I_OverdampedSolution,
            spring: ISpringDescription,
            distance: number,
            velocity: number
        ) => I_OverdampedSolution;
    };
};
export interface I_OverdampedSolution {
    x: (time: number) => number;
    dx: (time: number) => number;
    getType: () => SpringType;
}
export class _OverdampedSolution implements I_SpringSolution {
    public constructor(
        spring: ISpringDescription,
        distance: number,
        velocity: number
    ) {
        flutter.physics._overdampedSolution(this, spring, distance, velocity);
    }
    private readonly _dart_x: (time: number) => number = undefined as any;
    private readonly _dart_dx: (time: number) => number = undefined as any;
    private readonly _dart_getType: () => SpringType = undefined as any;
    public x(time: number): number {
        return this._dart_x(time);
    }
    public dx(time: number): number {
        return this._dart_dx(time);
    }
    public getType(): SpringType {
        return this._dart_getType();
    }
}
