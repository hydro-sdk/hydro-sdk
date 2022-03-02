declare const flutter: {
    services: {
        androidPointerProperties: (
            this: void,
            androidPointerProperties: IAndroidPointerProperties,
            props: { id: number; toolType: number }
        ) => IAndroidPointerProperties;
    };
};
export interface IAndroidPointerProperties {
    id: number;
    toolType: number;
    toString: () => string;
}
export class AndroidPointerProperties {
    public static kToolTypeUnknown = 0;
    public static kToolTypeFinger = 1;
    public static kToolTypeStylus = 2;
    public static kToolTypeMouse = 3;
    public static kToolTypeEraser = 4;
    public readonly id: number = undefined as any;
    public readonly toolType: number = undefined as any;
    public constructor(props: { id: number; toolType: number }) {
        flutter.services.androidPointerProperties(this, props);
    }
    private readonly _dart_toString: () => string = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
}
