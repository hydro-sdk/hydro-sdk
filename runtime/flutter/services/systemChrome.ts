import { IFuture } from "../../dart/async/future";
import { IList } from "../../dart/core/list";
import { IApplicationSwitcherDescription } from "./applicationSwitcherDescription";
import { DeviceOrientation } from "./deviceOrientation";
import { SystemUiMode } from "./systemUiMode";
import { SystemUiOverlay } from "./systemUiOverlay";
import { ISystemUiOverlayStyle } from "./systemUiOverlayStyle";
declare const flutter: {
    services: {
        systemChromeSetPreferredOrientations: (
            orientations: IList<DeviceOrientation>
        ) => IFuture<void>;
        systemChromeSetApplicationSwitcherDescription: (
            description: IApplicationSwitcherDescription
        ) => IFuture<void>;
        systemChromeSetEnabledSystemUIOverlays: (
            overlays: IList<SystemUiOverlay>
        ) => IFuture<void>;
        systemChromeSetEnabledSystemUIMode: (
            mode: SystemUiMode,
            props?: { overlays?: IList<SystemUiOverlay> | undefined }
        ) => IFuture<void>;
        systemChromeSetSystemUIChangeCallback: (
            callback?: (systemOverlaysAreVisible: boolean) => IFuture<void>
        ) => IFuture<void>;
        systemChromeRestoreSystemUIOverlays: () => IFuture<void>;
        systemChromeSetSystemUIOverlayStyle: (
            style: ISystemUiOverlayStyle
        ) => void;
        systemChromeLatestStyle: () => ISystemUiOverlayStyle | undefined;
    };
};
export interface ISystemChrome {}
export class SystemChrome {
    public static setPreferredOrientations(
        orientations: IList<DeviceOrientation>
    ): IFuture<void> {
        return flutter.services.systemChromeSetPreferredOrientations(
            orientations
        );
    }
    public static setApplicationSwitcherDescription(
        description: IApplicationSwitcherDescription
    ): IFuture<void> {
        return flutter.services.systemChromeSetApplicationSwitcherDescription(
            description
        );
    }
    public static setEnabledSystemUIOverlays(
        overlays: IList<SystemUiOverlay>
    ): IFuture<void> {
        return flutter.services.systemChromeSetEnabledSystemUIOverlays(
            overlays
        );
    }
    public static setEnabledSystemUIMode(
        mode: SystemUiMode,
        props?: { overlays?: IList<SystemUiOverlay> | undefined }
    ): IFuture<void> {
        return flutter.services.systemChromeSetEnabledSystemUIMode(mode, props);
    }
    public static setSystemUIChangeCallback(
        callback?: (systemOverlaysAreVisible: boolean) => IFuture<void>
    ): IFuture<void> {
        return flutter.services.systemChromeSetSystemUIChangeCallback(callback);
    }
    public static restoreSystemUIOverlays(): IFuture<void> {
        return flutter.services.systemChromeRestoreSystemUIOverlays();
    }
    public static setSystemUIOverlayStyle(style: ISystemUiOverlayStyle): void {
        return flutter.services.systemChromeSetSystemUIOverlayStyle(style);
    }
    public static latestStyle(): ISystemUiOverlayStyle | undefined {
        return flutter.services.systemChromeLatestStyle();
    }
}
