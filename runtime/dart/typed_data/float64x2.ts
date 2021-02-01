import { IFloat32x4 } from "./float32x4";
declare const dart: {
    typed_data: {
        float64x2: (
            this: void,
            float64x2: IFloat64x2,
            x: number,
            y: number
        ) => IFloat64x2;
        float64x2Splat: (v: number) => IFloat64x2;
        float64x2Zero: () => IFloat64x2;
        float64x2FromFloat32x4: (v: IFloat32x4) => IFloat64x2;
    };
};
export interface IFloat64x2 {
    scale: (s: number) => IFloat64x2;
    abs: () => IFloat64x2;
    clamp: (lowerLimit: IFloat64x2, upperLimit: IFloat64x2) => IFloat64x2;
    getX: () => number;
    getY: () => number;
    getSignMask: () => number;
    withX: (x: number) => IFloat64x2;
    withY: (y: number) => IFloat64x2;
    min: (other: IFloat64x2) => IFloat64x2;
    max: (other: IFloat64x2) => IFloat64x2;
    sqrt: () => IFloat64x2;
}
export class Float64x2 {
    public constructor(x: number, y: number) {
        dart.typed_data.float64x2(this, x, y);
    }
    public static splat(v: number): IFloat64x2 {
        return dart.typed_data.float64x2Splat(v);
    }
    public static zero(): IFloat64x2 {
        return dart.typed_data.float64x2Zero();
    }
    public static fromFloat32x4(v: IFloat32x4): IFloat64x2 {
        return dart.typed_data.float64x2FromFloat32x4(v);
    }
    private readonly _dart_scale: (s: number) => IFloat64x2 = undefined as any;
    private readonly _dart_abs: () => IFloat64x2 = undefined as any;
    private readonly _dart_clamp: (
        lowerLimit: IFloat64x2,
        upperLimit: IFloat64x2
    ) => IFloat64x2 = undefined as any;
    private readonly _dart_getX: () => number = undefined as any;
    private readonly _dart_getY: () => number = undefined as any;
    private readonly _dart_getSignMask: () => number = undefined as any;
    private readonly _dart_withX: (x: number) => IFloat64x2 = undefined as any;
    private readonly _dart_withY: (y: number) => IFloat64x2 = undefined as any;
    private readonly _dart_min: (
        other: IFloat64x2
    ) => IFloat64x2 = undefined as any;
    private readonly _dart_max: (
        other: IFloat64x2
    ) => IFloat64x2 = undefined as any;
    private readonly _dart_sqrt: () => IFloat64x2 = undefined as any;
    public scale(s: number): IFloat64x2 {
        return this._dart_scale(s);
    }
    public abs(): IFloat64x2 {
        return this._dart_abs();
    }
    public clamp(lowerLimit: IFloat64x2, upperLimit: IFloat64x2): IFloat64x2 {
        return this._dart_clamp(lowerLimit, upperLimit);
    }
    public getX(): number {
        return this._dart_getX();
    }
    public getY(): number {
        return this._dart_getY();
    }
    public getSignMask(): number {
        return this._dart_getSignMask();
    }
    public withX(x: number): IFloat64x2 {
        return this._dart_withX(x);
    }
    public withY(y: number): IFloat64x2 {
        return this._dart_withY(y);
    }
    public min(other: IFloat64x2): IFloat64x2 {
        return this._dart_min(other);
    }
    public max(other: IFloat64x2): IFloat64x2 {
        return this._dart_max(other);
    }
    public sqrt(): IFloat64x2 {
        return this._dart_sqrt();
    }
}
