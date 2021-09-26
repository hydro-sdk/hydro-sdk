import { IDuration } from "../core/duration";
import { IList } from "../core/list";
import { IByteData } from "../typed_data/byteData";
import { IAccessibilityFeatures } from "./accessibilityFeatures";
import { Brightness } from "./brightness";
import { IFlutterWindow } from "./flutterWindow";
import { IFrameTiming } from "./frameTiming";
import { ILocale } from "./locale";
import { IPlatformDispatcher } from "./platformDispatcher";
import { IPointerDataPacket } from "./pointerDataPacket";
import { ISemanticsAction } from "./semanticsAction";
import { ISemanticsUpdate } from "./semanticsUpdate";
import { IViewConfiguration } from "./viewConfiguration";
export interface ISingletonFlutterWindow
    extends Omit<IFlutterWindow, "platformDispatcher"> {
    getOnMetricsChanged: () => () => void | undefined;
    setOnMetricsChanged: (callback?: () => void) => void;
    getLocale: () => ILocale;
    getLocales: () => IList<ILocale>;
    computePlatformResolvedLocale: (
        supportedLocales: IList<ILocale>
    ) => ILocale | undefined;
    getOnLocaleChanged: () => () => void | undefined;
    setOnLocaleChanged: (callback?: () => void) => void;
    getInitialLifecycleState: () => string;
    getTextScaleFactor: () => number;
    getAlwaysUse24HourFormat: () => boolean;
    getOnTextScaleFactorChanged: () => () => void | undefined;
    setOnTextScaleFactorChanged: (callback?: () => void) => void;
    getPlatformBrightness: () => Brightness;
    getOnPlatformBrightnessChanged: () => () => void | undefined;
    setOnPlatformBrightnessChanged: (callback?: () => void) => void;
    getOnBeginFrame: () => (duration: IDuration) => void | undefined;
    setOnBeginFrame: (callback?: (duration: IDuration) => void) => void;
    getOnDrawFrame: () => () => void | undefined;
    setOnDrawFrame: (callback?: () => void) => void;
    getOnReportTimings: () => (
        timings: IList<IFrameTiming>
    ) => void | undefined;
    setOnReportTimings: (
        callback?: (timings: IList<IFrameTiming>) => void
    ) => void;
    getOnPointerDataPacket: () => (
        packet: IPointerDataPacket
    ) => void | undefined;
    setOnPointerDataPacket: (
        callback?: (packet: IPointerDataPacket) => void
    ) => void;
    getDefaultRouteName: () => string;
    scheduleFrame: () => void;
    getSemanticsEnabled: () => boolean;
    getOnSemanticsEnabledChanged: () => () => void | undefined;
    setOnSemanticsEnabledChanged: (callback?: () => void) => void;
    getOnSemanticsAction: () => (
        id: number,
        action: ISemanticsAction,
        args?: IByteData | undefined
    ) => void | undefined;
    setOnSemanticsAction: (
        callback?: (
            id: number,
            action: ISemanticsAction,
            args?: IByteData | undefined
        ) => void
    ) => void;
    getAccessibilityFeatures: () => IAccessibilityFeatures;
    getOnAccessibilityFeaturesChanged: () => () => void | undefined;
    setOnAccessibilityFeaturesChanged: (callback?: () => void) => void;
    updateSemantics: (update: ISemanticsUpdate) => void;
    sendPlatformMessage: (
        name: string,
        data?: IByteData | undefined,
        callback?: (data?: IByteData | undefined) => void
    ) => void;
    getOnPlatformMessage: () => (
        name: string,
        data?: IByteData | undefined,
        callback?: (data?: IByteData | undefined) => void
    ) => void | undefined;
    setOnPlatformMessage: (
        callback?: (
            name: string,
            data?: IByteData | undefined,
            callback?: (data?: IByteData | undefined) => void
        ) => void
    ) => void;
    setIsolateDebugName: (name: string) => void;
}
