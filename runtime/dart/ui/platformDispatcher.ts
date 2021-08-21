import { IDuration } from "../core/duration";
import { IIterable } from "../core/iterable";
import { IList } from "../core/list";
import { IByteData } from "../typed_data/byteData";
import { IAccessibilityFeatures } from "./accessibilityFeatures";
import { Brightness } from "./brightness";
import { IFlutterView } from "./flutterView";
import { IFrameTiming } from "./frameTiming";
import { ILocale } from "./locale";
import { IPlatformConfiguration } from "./platformConfiguration";
import { IPointerDataPacket } from "./pointerDataPacket";
import { ISemanticsAction } from "./semanticsAction";
import { ISemanticsUpdate } from "./semanticsUpdate";
declare const dart: {
    ui: {
        platformDispatcherInstance: () => IPlatformDispatcher;
    };
};
export interface IPlatformDispatcher {
    getConfiguration: () => IPlatformConfiguration;
    getOnPlatformConfigurationChanged: () => () => void | undefined;
    setOnPlatformConfigurationChanged: (callback?: () => void) => void;
    getViews: () => IIterable<IFlutterView>;
    getOnMetricsChanged: () => () => void | undefined;
    setOnMetricsChanged: (callback?: () => void) => void;
    getOnBeginFrame: () => (duration: IDuration) => void | undefined;
    setOnBeginFrame: (callback?: (duration: IDuration) => void) => void;
    getOnDrawFrame: () => () => void | undefined;
    setOnDrawFrame: (callback?: () => void) => void;
    getOnPointerDataPacket: () => (
        packet: IPointerDataPacket
    ) => void | undefined;
    setOnPointerDataPacket: (
        callback?: (packet: IPointerDataPacket) => void
    ) => void;
    getOnReportTimings: () => (
        timings: IList<IFrameTiming>
    ) => void | undefined;
    setOnReportTimings: (
        callback?: (timings: IList<IFrameTiming>) => void
    ) => void;
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
    getPersistentIsolateData: () => IByteData | undefined;
    scheduleFrame: () => void;
    getAccessibilityFeatures: () => IAccessibilityFeatures;
    getOnAccessibilityFeaturesChanged: () => () => void | undefined;
    setOnAccessibilityFeaturesChanged: (callback?: () => void) => void;
    updateSemantics: (update: ISemanticsUpdate) => void;
    getLocale: () => ILocale;
    getLocales: () => IList<ILocale>;
    computePlatformResolvedLocale: (
        supportedLocales: IList<ILocale>
    ) => ILocale | undefined;
    getOnLocaleChanged: () => () => void | undefined;
    setOnLocaleChanged: (callback?: () => void) => void;
    getInitialLifecycleState: () => string;
    getAlwaysUse24HourFormat: () => boolean;
    getTextScaleFactor: () => number;
    getOnTextScaleFactorChanged: () => () => void | undefined;
    setOnTextScaleFactorChanged: (callback?: () => void) => void;
    getPlatformBrightness: () => Brightness;
    getOnPlatformBrightnessChanged: () => () => void | undefined;
    setOnPlatformBrightnessChanged: (callback?: () => void) => void;
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
    getDefaultRouteName: () => string;
}
export class PlatformDispatcher {
    public static _kPointerDataFieldCount = 29;
    public static instance(): IPlatformDispatcher {
        return dart.ui.platformDispatcherInstance();
    }
    private readonly _dart_getConfiguration: () => IPlatformConfiguration =
        undefined as any;
    private readonly _dart_getOnPlatformConfigurationChanged: () => () =>
        | void
        | undefined = undefined as any;
    private readonly _dart_setOnPlatformConfigurationChanged: (
        callback?: () => void
    ) => void = undefined as any;
    private readonly _dart_getViews: () => IIterable<IFlutterView> =
        undefined as any;
    private readonly _dart_getOnMetricsChanged: () => () => void | undefined =
        undefined as any;
    private readonly _dart_setOnMetricsChanged: (
        callback?: () => void
    ) => void = undefined as any;
    private readonly _dart_getOnBeginFrame: () => (
        duration: IDuration
    ) => void | undefined = undefined as any;
    private readonly _dart_setOnBeginFrame: (
        callback?: (duration: IDuration) => void
    ) => void = undefined as any;
    private readonly _dart_getOnDrawFrame: () => () => void | undefined =
        undefined as any;
    private readonly _dart_setOnDrawFrame: (callback?: () => void) => void =
        undefined as any;
    private readonly _dart_getOnPointerDataPacket: () => (
        packet: IPointerDataPacket
    ) => void | undefined = undefined as any;
    private readonly _dart_setOnPointerDataPacket: (
        callback?: (packet: IPointerDataPacket) => void
    ) => void = undefined as any;
    private readonly _dart_getOnReportTimings: () => (
        timings: IList<IFrameTiming>
    ) => void | undefined = undefined as any;
    private readonly _dart_setOnReportTimings: (
        callback?: (timings: IList<IFrameTiming>) => void
    ) => void = undefined as any;
    private readonly _dart_sendPlatformMessage: (
        name: string,
        data?: IByteData | undefined,
        callback?: (data?: IByteData | undefined) => void
    ) => void = undefined as any;
    private readonly _dart_getOnPlatformMessage: () => (
        name: string,
        data?: IByteData | undefined,
        callback?: (data?: IByteData | undefined) => void
    ) => void | undefined = undefined as any;
    private readonly _dart_setOnPlatformMessage: (
        callback?: (
            name: string,
            data?: IByteData | undefined,
            callback?: (data?: IByteData | undefined) => void
        ) => void
    ) => void = undefined as any;
    private readonly _dart_setIsolateDebugName: (name: string) => void =
        undefined as any;
    private readonly _dart_getPersistentIsolateData: () =>
        | IByteData
        | undefined = undefined as any;
    private readonly _dart_scheduleFrame: () => void = undefined as any;
    private readonly _dart_getAccessibilityFeatures: () => IAccessibilityFeatures =
        undefined as any;
    private readonly _dart_getOnAccessibilityFeaturesChanged: () => () =>
        | void
        | undefined = undefined as any;
    private readonly _dart_setOnAccessibilityFeaturesChanged: (
        callback?: () => void
    ) => void = undefined as any;
    private readonly _dart_updateSemantics: (update: ISemanticsUpdate) => void =
        undefined as any;
    private readonly _dart_getLocale: () => ILocale = undefined as any;
    private readonly _dart_getLocales: () => IList<ILocale> = undefined as any;
    private readonly _dart_computePlatformResolvedLocale: (
        supportedLocales: IList<ILocale>
    ) => ILocale | undefined = undefined as any;
    private readonly _dart_getOnLocaleChanged: () => () => void | undefined =
        undefined as any;
    private readonly _dart_setOnLocaleChanged: (callback?: () => void) => void =
        undefined as any;
    private readonly _dart_getInitialLifecycleState: () => string =
        undefined as any;
    private readonly _dart_getAlwaysUse24HourFormat: () => boolean =
        undefined as any;
    private readonly _dart_getTextScaleFactor: () => number = undefined as any;
    private readonly _dart_getOnTextScaleFactorChanged: () => () =>
        | void
        | undefined = undefined as any;
    private readonly _dart_setOnTextScaleFactorChanged: (
        callback?: () => void
    ) => void = undefined as any;
    private readonly _dart_getPlatformBrightness: () => Brightness =
        undefined as any;
    private readonly _dart_getOnPlatformBrightnessChanged: () => () =>
        | void
        | undefined = undefined as any;
    private readonly _dart_setOnPlatformBrightnessChanged: (
        callback?: () => void
    ) => void = undefined as any;
    private readonly _dart_getSemanticsEnabled: () => boolean =
        undefined as any;
    private readonly _dart_getOnSemanticsEnabledChanged: () => () =>
        | void
        | undefined = undefined as any;
    private readonly _dart_setOnSemanticsEnabledChanged: (
        callback?: () => void
    ) => void = undefined as any;
    private readonly _dart_getOnSemanticsAction: () => (
        id: number,
        action: ISemanticsAction,
        args?: IByteData | undefined
    ) => void | undefined = undefined as any;
    private readonly _dart_setOnSemanticsAction: (
        callback?: (
            id: number,
            action: ISemanticsAction,
            args?: IByteData | undefined
        ) => void
    ) => void = undefined as any;
    private readonly _dart_getDefaultRouteName: () => string = undefined as any;
    public getConfiguration(): IPlatformConfiguration {
        return this._dart_getConfiguration();
    }
    public getOnPlatformConfigurationChanged(): () => void | undefined {
        return this._dart_getOnPlatformConfigurationChanged();
    }
    public setOnPlatformConfigurationChanged(callback?: () => void): void {
        return this._dart_setOnPlatformConfigurationChanged(callback);
    }
    public getViews(): IIterable<IFlutterView> {
        return this._dart_getViews();
    }
    public getOnMetricsChanged(): () => void | undefined {
        return this._dart_getOnMetricsChanged();
    }
    public setOnMetricsChanged(callback?: () => void): void {
        return this._dart_setOnMetricsChanged(callback);
    }
    public getOnBeginFrame(): (duration: IDuration) => void | undefined {
        return this._dart_getOnBeginFrame();
    }
    public setOnBeginFrame(callback?: (duration: IDuration) => void): void {
        return this._dart_setOnBeginFrame(callback);
    }
    public getOnDrawFrame(): () => void | undefined {
        return this._dart_getOnDrawFrame();
    }
    public setOnDrawFrame(callback?: () => void): void {
        return this._dart_setOnDrawFrame(callback);
    }
    public getOnPointerDataPacket(): (
        packet: IPointerDataPacket
    ) => void | undefined {
        return this._dart_getOnPointerDataPacket();
    }
    public setOnPointerDataPacket(
        callback?: (packet: IPointerDataPacket) => void
    ): void {
        return this._dart_setOnPointerDataPacket(callback);
    }
    public getOnReportTimings(): (
        timings: IList<IFrameTiming>
    ) => void | undefined {
        return this._dart_getOnReportTimings();
    }
    public setOnReportTimings(
        callback?: (timings: IList<IFrameTiming>) => void
    ): void {
        return this._dart_setOnReportTimings(callback);
    }
    public sendPlatformMessage(
        name: string,
        data?: IByteData | undefined,
        callback?: (data?: IByteData | undefined) => void
    ): void {
        return this._dart_sendPlatformMessage(name, data, callback);
    }
    public getOnPlatformMessage(): (
        name: string,
        data?: IByteData | undefined,
        callback?: (data?: IByteData | undefined) => void
    ) => void | undefined {
        return this._dart_getOnPlatformMessage();
    }
    public setOnPlatformMessage(
        callback?: (
            name: string,
            data?: IByteData | undefined,
            callback?: (data?: IByteData | undefined) => void
        ) => void
    ): void {
        return this._dart_setOnPlatformMessage(callback);
    }
    public setIsolateDebugName(name: string): void {
        return this._dart_setIsolateDebugName(name);
    }
    public getPersistentIsolateData(): IByteData | undefined {
        return this._dart_getPersistentIsolateData();
    }
    public scheduleFrame(): void {
        return this._dart_scheduleFrame();
    }
    public getAccessibilityFeatures(): IAccessibilityFeatures {
        return this._dart_getAccessibilityFeatures();
    }
    public getOnAccessibilityFeaturesChanged(): () => void | undefined {
        return this._dart_getOnAccessibilityFeaturesChanged();
    }
    public setOnAccessibilityFeaturesChanged(callback?: () => void): void {
        return this._dart_setOnAccessibilityFeaturesChanged(callback);
    }
    public updateSemantics(update: ISemanticsUpdate): void {
        return this._dart_updateSemantics(update);
    }
    public getLocale(): ILocale {
        return this._dart_getLocale();
    }
    public getLocales(): IList<ILocale> {
        return this._dart_getLocales();
    }
    public computePlatformResolvedLocale(
        supportedLocales: IList<ILocale>
    ): ILocale | undefined {
        return this._dart_computePlatformResolvedLocale(supportedLocales);
    }
    public getOnLocaleChanged(): () => void | undefined {
        return this._dart_getOnLocaleChanged();
    }
    public setOnLocaleChanged(callback?: () => void): void {
        return this._dart_setOnLocaleChanged(callback);
    }
    public getInitialLifecycleState(): string {
        return this._dart_getInitialLifecycleState();
    }
    public getAlwaysUse24HourFormat(): boolean {
        return this._dart_getAlwaysUse24HourFormat();
    }
    public getTextScaleFactor(): number {
        return this._dart_getTextScaleFactor();
    }
    public getOnTextScaleFactorChanged(): () => void | undefined {
        return this._dart_getOnTextScaleFactorChanged();
    }
    public setOnTextScaleFactorChanged(callback?: () => void): void {
        return this._dart_setOnTextScaleFactorChanged(callback);
    }
    public getPlatformBrightness(): Brightness {
        return this._dart_getPlatformBrightness();
    }
    public getOnPlatformBrightnessChanged(): () => void | undefined {
        return this._dart_getOnPlatformBrightnessChanged();
    }
    public setOnPlatformBrightnessChanged(callback?: () => void): void {
        return this._dart_setOnPlatformBrightnessChanged(callback);
    }
    public getSemanticsEnabled(): boolean {
        return this._dart_getSemanticsEnabled();
    }
    public getOnSemanticsEnabledChanged(): () => void | undefined {
        return this._dart_getOnSemanticsEnabledChanged();
    }
    public setOnSemanticsEnabledChanged(callback?: () => void): void {
        return this._dart_setOnSemanticsEnabledChanged(callback);
    }
    public getOnSemanticsAction(): (
        id: number,
        action: ISemanticsAction,
        args?: IByteData | undefined
    ) => void | undefined {
        return this._dart_getOnSemanticsAction();
    }
    public setOnSemanticsAction(
        callback?: (
            id: number,
            action: ISemanticsAction,
            args?: IByteData | undefined
        ) => void
    ): void {
        return this._dart_setOnSemanticsAction(callback);
    }
    public getDefaultRouteName(): string {
        return this._dart_getDefaultRouteName();
    }
}
