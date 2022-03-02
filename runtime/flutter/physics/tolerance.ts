declare const flutter: {
    physics: {
        tolerance: (
            this: void,
            tolerance: ITolerance,
            props: { distance: number; time: number; velocity: number }
        ) => ITolerance;
    };
};
export interface ITolerance {
    distance: number;
    time: number;
    velocity: number;
    toString: () => string;
}
export class Tolerance {
    public static _epsilonDefault = 1e-3;
    public static defaultTolerance = new Tolerance();
    public readonly distance: number = undefined as any;
    public readonly time: number = undefined as any;
    public readonly velocity: number = undefined as any;
    public constructor(props: {
        distance?: number;
        time?: number;
        velocity?: number;
    }) {
        flutter.physics.tolerance(this, {
            ...toleranceDefaultProps,
            ...props,
        });
    }
    private readonly _dart_toString: () => string = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
}
const toleranceDefaultProps = {
    distance: Tolerance._epsilonDefault,
    time: Tolerance._epsilonDefault,
    velocity: Tolerance._epsilonDefault,
};
