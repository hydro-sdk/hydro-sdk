declare const flutter: {
    services: {
        androidPointerCoords: (
            this: void,
            androidPointerCoords: IAndroidPointerCoords,
            props: {
                orientation: number;
                pressure: number;
                size: number;
                toolMajor: number;
                toolMinor: number;
                touchMajor: number;
                touchMinor: number;
                x: number;
                y: number;
            }
        ) => IAndroidPointerCoords;
    };
};
export interface IAndroidPointerCoords {
    orientation: number;
    pressure: number;
    size: number;
    toolMajor: number;
    toolMinor: number;
    touchMajor: number;
    touchMinor: number;
    x: number;
    y: number;
    toString: () => string;
}
export class AndroidPointerCoords {
    public readonly orientation: number = undefined as any;
    public readonly pressure: number = undefined as any;
    public readonly size: number = undefined as any;
    public readonly toolMajor: number = undefined as any;
    public readonly toolMinor: number = undefined as any;
    public readonly touchMajor: number = undefined as any;
    public readonly touchMinor: number = undefined as any;
    public readonly x: number = undefined as any;
    public readonly y: number = undefined as any;
    public constructor(props: {
        orientation: number;
        pressure: number;
        size: number;
        toolMajor: number;
        toolMinor: number;
        touchMajor: number;
        touchMinor: number;
        x: number;
        y: number;
    }) {
        flutter.services.androidPointerCoords(this, props);
    }
    private readonly _dart_toString: () => string = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
}
