declare const flutter: {
    animation: {
        parametricCurve: <T>(
            this: void,
            parametricCurve: IParametricCurve<T>
        ) => IParametricCurve<T>;
    };
};
export interface IParametricCurve<T> {
    transform: (t: number) => T;
    transformInternal: (t: number) => T;
    toString: () => string;
}
export class ParametricCurve<T> {
    public constructor() {
        flutter.animation.parametricCurve(this);
    }
    private readonly _dart_transform: (t: number) => T = undefined as any;
    private readonly _dart_transformInternal: (t: number) => T =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public transform(t: number): T {
        return this._dart_transform(t);
    }
    public transformInternal(t: number): T {
        return this._dart_transformInternal(t);
    }
    public toString(): string {
        return this._dart_toString();
    }
}
