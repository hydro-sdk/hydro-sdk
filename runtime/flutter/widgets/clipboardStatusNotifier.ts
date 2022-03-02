import { IFuture } from "../../dart/async/future";
import { IList } from "../../dart/core/list";
import { AppLifecycleState } from "../../dart/ui/appLifecycleState";
import { ILocale } from "../../dart/ui/locale";
import { IListenable } from "../foundation/listenable";
import { IValueListenable } from "../foundation/valueListenable";
import { IValueNotifier } from "../foundation/valueNotifier";
import { ClipboardStatus } from "./clipboardStatus";
import { IRouteInformation } from "./routeInformation";
import { IWidgetsBindingObserver } from "./widgetsBindingObserver";
declare const flutter: {
    widgets: {
        clipboardStatusNotifier: (
            this: void,
            clipboardStatusNotifier: IClipboardStatusNotifier,
            props: { value: ClipboardStatus }
        ) => IClipboardStatusNotifier;
    };
};
export interface IClipboardStatusNotifier {
    getDisposed: () => boolean;
    update: () => IFuture<void>;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    didChangeAppLifecycleState: (state: AppLifecycleState) => void;
    dispose: () => void;
    didPopRoute: () => IFuture<boolean>;
    didPushRoute: (route: string) => IFuture<boolean>;
    didPushRouteInformation: (
        routeInformation: IRouteInformation
    ) => IFuture<boolean>;
    didChangeMetrics: () => void;
    didChangeTextScaleFactor: () => void;
    didChangePlatformBrightness: () => void;
    didChangeLocales: (locales?: IList<ILocale> | undefined) => void;
    didHaveMemoryPressure: () => void;
    didChangeAccessibilityFeatures: () => void;
    toString: () => string;
    getValue: () => ClipboardStatus;
    setValue: (newValue: ClipboardStatus) => void;
    getHasListeners: () => boolean;
    getHashCode: () => number;
}
export class ClipboardStatusNotifier
    implements
        IValueNotifier<IClipboardStatus>,
        IWidgetsBindingObserver,
        IValueListenable<IClipboardStatus>,
        IListenable
{
    public constructor(props: { value?: ClipboardStatus }) {
        flutter.widgets.clipboardStatusNotifier(this, {
            ...clipboardStatusNotifierDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getDisposed: () => boolean = undefined as any;
    private readonly _dart_update: () => IFuture<void> = undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_didChangeAppLifecycleState: (
        state: AppLifecycleState
    ) => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_didPopRoute: () => IFuture<boolean> =
        undefined as any;
    private readonly _dart_didPushRoute: (route: string) => IFuture<boolean> =
        undefined as any;
    private readonly _dart_didPushRouteInformation: (
        routeInformation: IRouteInformation
    ) => IFuture<boolean> = undefined as any;
    private readonly _dart_didChangeMetrics: () => void = undefined as any;
    private readonly _dart_didChangeTextScaleFactor: () => void =
        undefined as any;
    private readonly _dart_didChangePlatformBrightness: () => void =
        undefined as any;
    private readonly _dart_didChangeLocales: (
        locales?: IList<ILocale> | undefined
    ) => void = undefined as any;
    private readonly _dart_didHaveMemoryPressure: () => void = undefined as any;
    private readonly _dart_didChangeAccessibilityFeatures: () => void =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getValue: () => ClipboardStatus = undefined as any;
    private readonly _dart_setValue: (newValue: ClipboardStatus) => void =
        undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getDisposed(): boolean {
        return this._dart_getDisposed();
    }
    public update(): IFuture<void> {
        return this._dart_update();
    }
    public addListener(listener: () => void): void {
        return this._dart_addListener(listener);
    }
    public removeListener(listener: () => void): void {
        return this._dart_removeListener(listener);
    }
    public didChangeAppLifecycleState(state: AppLifecycleState): void {
        return this._dart_didChangeAppLifecycleState(state);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public didPopRoute(): IFuture<boolean> {
        return this._dart_didPopRoute();
    }
    public didPushRoute(route: string): IFuture<boolean> {
        return this._dart_didPushRoute(route);
    }
    public didPushRouteInformation(
        routeInformation: IRouteInformation
    ): IFuture<boolean> {
        return this._dart_didPushRouteInformation(routeInformation);
    }
    public didChangeMetrics(): void {
        return this._dart_didChangeMetrics();
    }
    public didChangeTextScaleFactor(): void {
        return this._dart_didChangeTextScaleFactor();
    }
    public didChangePlatformBrightness(): void {
        return this._dart_didChangePlatformBrightness();
    }
    public didChangeLocales(locales?: IList<ILocale> | undefined): void {
        return this._dart_didChangeLocales(locales);
    }
    public didHaveMemoryPressure(): void {
        return this._dart_didHaveMemoryPressure();
    }
    public didChangeAccessibilityFeatures(): void {
        return this._dart_didChangeAccessibilityFeatures();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getValue(): ClipboardStatus {
        return this._dart_getValue();
    }
    public setValue(newValue: ClipboardStatus): void {
        return this._dart_setValue(newValue);
    }
    public notifyListeners(): void {
        return this._dart_notifyListeners();
    }
    public getHasListeners(): boolean {
        return this._dart_getHasListeners();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const clipboardStatusNotifierDefaultProps = {
    value: ClipboardStatus.unknown,
};
