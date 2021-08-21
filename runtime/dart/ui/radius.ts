declare const dart: {
    ui: {
        radiusCircular: (radius: number) => IRadius;
        radiusElliptical: (x: number, y: number) => IRadius;
        radiusLerp: (
            a: IRadius | undefined,
            b: IRadius | undefined,
            t: number
        ) => IRadius | undefined;
    };
};
export interface IRadius {
    x: number;
    y: number;
    getHashCode: () => number;
    toString: () => string;
}
export class Radius {
    public static zero = Radius.circular(0.0);
    public readonly x: number = undefined as any;
    public readonly y: number = undefined as any;
    public static circular(radius: number): IRadius {
        return dart.ui.radiusCircular(radius);
    }
    public static elliptical(x: number, y: number): IRadius {
        return dart.ui.radiusElliptical(x, y);
    }
    public static lerp(
        a: IRadius | undefined,
        b: IRadius | undefined,
        t: number
    ): IRadius | undefined {
        return dart.ui.radiusLerp(a, b, t);
    }
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
