import { ICurve } from "./curve";
declare const flutter: {
    animation: {
        cubic: (
            this: void,
            cubic: ICubic,
            a: number,
            b: number,
            c: number,
            d: number
        ) => ICubic;
    };
};
export interface ICubic {
    a: number;
    b: number;
    c: number;
    d: number;
    transformInternal: (t: number) => number;
    toString: () => string;
    transform: (t: number) => number;
    getFlipped: () => ICurve;
    getHashCode: () => number;
}
export class Cubic implements ICurve {
    public static _cubicErrorBound = 0.001;
    public readonly a: number = undefined as any;
    public readonly b: number = undefined as any;
    public readonly c: number = undefined as any;
    public readonly d: number = undefined as any;
    public constructor(a: number, b: number, c: number, d: number) {
        flutter.animation.cubic(this, a, b, c, d);
    }
    private readonly _dart_transformInternal: (t: number) => number =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_transform: (t: number) => number = undefined as any;
    private readonly _dart_getFlipped: () => ICurve = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public transformInternal(t: number): number {
        return this._dart_transformInternal(t);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public transform(t: number): number {
        return this._dart_transform(t);
    }
    public getFlipped(): ICurve {
        return this._dart_getFlipped();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
