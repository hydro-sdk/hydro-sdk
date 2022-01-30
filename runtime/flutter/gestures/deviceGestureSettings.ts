import { ISingletonFlutterWindow } from "../../dart/ui/singletonFlutterWindow";
declare const flutter: {
    gestures: {
        deviceGestureSettings: (
            this: void,
            deviceGestureSettings: IDeviceGestureSettings,
            props?: { touchSlop?: number | undefined }
        ) => IDeviceGestureSettings;
        deviceGestureSettingsFromWindow: (
            window: ISingletonFlutterWindow
        ) => IDeviceGestureSettings;
    };
};
export interface IDeviceGestureSettings {
    touchSlop: number | undefined;
    getPanSlop: () => number | undefined;
    getHashCode: () => number;
    toString: () => string;
}
export class DeviceGestureSettings {
    public readonly touchSlop: number | undefined = undefined as any;
    public constructor(props?: { touchSlop?: number | undefined }) {
        flutter.gestures.deviceGestureSettings(this, props);
    }
    public static fromWindow(
        window: ISingletonFlutterWindow
    ): IDeviceGestureSettings {
        return flutter.gestures.deviceGestureSettingsFromWindow(window);
    }
    private readonly _dart_getPanSlop: () => number | undefined =
        undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getPanSlop(): number | undefined {
        return this._dart_getPanSlop();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
