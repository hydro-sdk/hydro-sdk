import { IFuture } from "../../dart/async/future";
import { IList } from "../../dart/core/list";
import { AppLifecycleState } from "../../dart/ui/appLifecycleState";
import { ILocale } from "../../dart/ui/locale";
import { IBuildOwner } from "./buildOwner";
import { IElement } from "./element";
import { IFocusManager } from "./focusManager";
import { IWidget } from "./widget";
import { IWidgetsBindingObserver } from "./widgetsBindingObserver";
export interface IWidgetsBinding {
    debugBuildingDirtyElements: boolean;
    initInstances: () => void;
    initServiceExtensions: () => void;
    getBuildOwner: () => IBuildOwner | undefined;
    getFocusManager: () => IFocusManager;
    addObserver: (observer: IWidgetsBindingObserver) => void;
    removeObserver: (observer: IWidgetsBindingObserver) => boolean;
    handleMetricsChanged: () => void;
    handleTextScaleFactorChanged: () => void;
    handlePlatformBrightnessChanged: () => void;
    handleAccessibilityFeaturesChanged: () => void;
    handleLocaleChanged: () => void;
    dispatchLocalesChanged: (locales?: IList<ILocale> | undefined) => void;
    dispatchAccessibilityFeaturesChanged: () => void;
    handlePopRoute: () => IFuture<void>;
    handlePushRoute: (route: string) => IFuture<void>;
    handleAppLifecycleStateChanged: (state: AppLifecycleState) => void;
    handleMemoryPressure: () => void;
    getFirstFrameRasterized: () => boolean;
    getWaitUntilFirstFrameRasterized: () => IFuture<void>;
    getDebugDidSendFirstFrameEvent: () => boolean;
    drawFrame: () => void;
    getRenderViewElement: () => IElement | undefined;
    getFramesEnabled: () => boolean;
    scheduleAttachRootWidget: (rootWidget: IWidget) => void;
    attachRootWidget: (rootWidget: IWidget) => void;
    getIsRootWidgetAttached: () => boolean;
    performReassemble: () => IFuture<void>;
    computePlatformResolvedLocale: (
        supportedLocales: IList<ILocale>
    ) => ILocale | undefined;
}
