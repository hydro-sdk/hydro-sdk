import { IOffset } from "../../dart/ui/offset";
declare const flutter: {
    gestures: {
        velocity: (
            this: void,
            velocity: IVelocity,
            props: { pixelsPerSecond: IOffset }
        ) => IVelocity;
    };
};
export interface IVelocity {
    pixelsPerSecond: IOffset;
    clampMagnitude: (minValue: number, maxValue: number) => IVelocity;
    getHashCode: () => number;
    toString: () => string;
}
export class Velocity {
    public static zero = new Velocity();
    public readonly pixelsPerSecond: IOffset = undefined as any;
    public constructor(props: { pixelsPerSecond: IOffset }) {
        flutter.gestures.velocity(this, props);
    }
    private readonly _dart_clampMagnitude: (
        minValue: number,
        maxValue: number
    ) => IVelocity = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public clampMagnitude(minValue: number, maxValue: number): IVelocity {
        return this._dart_clampMagnitude(minValue, maxValue);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
