
import { IBindingBase } from "../foundation/bindingBase";
import { IFuture } from "../../dart/async/future";
import { ISingletonFlutterWindow } from "../../dart/ui/singletonFlutterWindow";
import { IPlatformDispatcher } from "../../dart/ui/platformDispatcher";
import { IHitTestable } from "../gestures/hitTestable";
import { IHitTestDispatcher } from "../gestures/hitTestDispatcher";
import { IHitTestTarget } from "../gestures/hitTestTarget";
import { IGestureBinding } from "../gestures/gestureBinding";
import { ISchedulerBinding } from "../scheduler/schedulerBinding";
import { IServicesBinding } from "../services/servicesBinding";
import { IPaintingBinding } from "../painting/paintingBinding";
import { ISemanticsBinding } from "../semantics/semanticsBinding";
import { IRendererBinding } from "../rendering/rendererBinding";
import { IWidgetsBinding } from "./widgetsBinding";
import { IPointerEvent } from "../gestures/pointerEvent";
import { IHitTestResult } from "../gestures/hitTestResult";
import { IOffset } from "../../dart/ui/offset";
import { IHitTestEntry } from "../gestures/hitTestEntry";
import { ISamplingClock } from "../gestures/samplingClock";
import { IList } from "../../dart/core/list";
import { IFrameTiming } from "../../dart/ui/frameTiming";
import { AppLifecycleState } from "../../dart/ui/appLifecycleState";
import { IFlow } from "../../dart/developer/flow";
import { IPriority } from "../scheduler/priority";
import { IDuration } from "../../dart/core/duration";
import { SchedulerPhase } from "../scheduler/schedulerPhase";
import { IBinaryMessenger } from "../services/binaryMessenger";
import { IRestorationManager } from "../services/restorationManager";
import { IHardwareKeyboard } from "../services/hardwareKeyboard";
import { IKeyEventManager } from "../services/keyEventManager";
import { IChannelBuffers } from "../../dart/ui/channelBuffers";
import { IImageCache } from "../painting/imageCache";
import { IUint8List } from "../../dart/typed_data/uint8List";
import { ICodec } from "../../dart/ui/codec";
import { IListenable } from "../foundation/listenable";
import { ISemanticsUpdateBuilder } from "../../dart/ui/semanticsUpdateBuilder";
import { IAccessibilityFeatures } from "../../dart/ui/accessibilityFeatures";
import { IViewConfiguration } from "../rendering/viewConfiguration";
import { IMouseTracker } from "../rendering/mouseTracker";
import { IPipelineOwner } from "../rendering/pipelineOwner";
import { IRenderView } from "../rendering/renderView";
import { IWidgetsBindingObserver } from "./widgetsBindingObserver";
import { ILocale } from "../../dart/ui/locale";
import { IWidget } from "./widget";
import { IBuildOwner } from "./buildOwner";
import { IFocusManager } from "./focusManager";
import { IElement } from "./element";
import { IPointerRouter } from "../gestures/pointerRouter";
import { IGestureArenaManager } from "../gestures/gestureArenaManager";
import { IPointerSignalResolver } from "../gestures/pointerSignalResolver";
declare const flutter: {
widgets: {
widgetsFlutterBinding: (this: void, widgetsFlutterBinding: IWidgetsFlutterBinding) => IWidgetsFlutterBinding;
widgetsFlutterBindingEnsureInitialized: () => IWidgetsBinding
}
};
export interface IWidgetsFlutterBinding


{
pointerRouter: IPointerRouter;
gestureArena: IGestureArenaManager;
pointerSignalResolver: IPointerSignalResolver;
resamplingEnabled: boolean;
samplingOffset: IDuration;
schedulingStrategy: ( props : {  priority : number, scheduler : ISchedulerBinding,}) => boolean;
debugBuildingDirtyElements: boolean;
initInstances: () => void;
unlocked: () => void;
cancelPointer: (pointer: number) => void;
handlePointerEvent: (event: IPointerEvent) => void;
hitTest: (result: IHitTestResult, position: IOffset) => void;
dispatchEvent: (event: IPointerEvent, hitTestResult?: IHitTestResult | undefined) => void;
handleEvent: (event: IPointerEvent, entry: IHitTestEntry) => void;
resetGestureBinding: () => void;
getDebugSamplingClock: () => ISamplingClock | undefined;
addTimingsCallback: (callback : (timings: IList<IFrameTiming>) => void) => void;
removeTimingsCallback: (callback : (timings: IList<IFrameTiming>) => void) => void;
initServiceExtensions: () => void;
handleAppLifecycleStateChanged: (state: AppLifecycleState) => void;
scheduleTask: <T>(task : () => T, priority: IPriority, props? : {  debugLabel? : string | undefined, flow? : IFlow | undefined,}) => IFuture<T>;
scheduleFrameCallback: (callback : (timeStamp: IDuration) => void, props : {  rescheduling : boolean,}) => number;
cancelFrameCallbackWithId: (id: number) => void;
debugAssertNoTransientCallbacks: (reason: string) => boolean;
addPersistentFrameCallback: (callback : (timeStamp: IDuration) => void) => void;
addPostFrameCallback: (callback : (timeStamp: IDuration) => void) => void;
ensureFrameCallbacksRegistered: () => void;
ensureVisualUpdate: () => void;
scheduleFrame: () => void;
scheduleForcedFrame: () => void;
scheduleWarmUpFrame: () => void;
resetEpoch: () => void;
handleBeginFrame: (rawTimeStamp?: IDuration | undefined) => void;
handleDrawFrame: () => void;
getLifecycleState: () => AppLifecycleState | undefined;
getTransientCallbackCount: () => number;
getEndOfFrame: () => IFuture<void>;
getHasScheduledFrame: () => boolean;
getSchedulerPhase: () => SchedulerPhase;
getFramesEnabled: () => boolean;
getCurrentFrameTimeStamp: () => IDuration;
getCurrentSystemFrameTimeStamp: () => IDuration;
createBinaryMessenger: () => IBinaryMessenger;
handleMemoryPressure: () => void;
handleSystemMessage: (systemMessage: Object) => IFuture<void>;
initLicenses: () => void;
evict: (asset: string) => void;
readInitialLifecycleStateFromNativeWindow: () => void;
createRestorationManager: () => IRestorationManager;
setSystemUiChangeCallback: (callback? : (systemOverlaysAreVisible: boolean) => IFuture<void>) => void;
getKeyboard: () => IHardwareKeyboard;
getKeyEventManager: () => IKeyEventManager;
getDefaultBinaryMessenger: () => IBinaryMessenger;
getChannelBuffers: () => IChannelBuffers;
getRestorationManager: () => IRestorationManager;
createImageCache: () => IImageCache;
instantiateImageCodec: (bytes: IUint8List, props : {  allowUpscaling : boolean, cacheHeight? : number | undefined, cacheWidth? : number | undefined,}) => IFuture<ICodec>;
getImageCache: () => IImageCache | undefined;
getSystemFonts: () => IListenable;
handleAccessibilityFeaturesChanged: () => void;
createSemanticsUpdateBuilder: () => ISemanticsUpdateBuilder;
getAccessibilityFeatures: () => IAccessibilityFeatures;
getDisableAnimations: () => boolean;
initRenderView: () => void;
handleMetricsChanged: () => void;
handleTextScaleFactorChanged: () => void;
handlePlatformBrightnessChanged: () => void;
createViewConfiguration: () => IViewConfiguration;
setSemanticsEnabled: (enabled: boolean) => void;
deferFirstFrame: () => void;
allowFirstFrame: () => void;
resetFirstFrameSent: () => void;
drawFrame: () => void;
performReassemble: () => IFuture<void>;
getMouseTracker: () => IMouseTracker;
getPipelineOwner: () => IPipelineOwner;
getRenderView: () => IRenderView;
setRenderView: (value: IRenderView) => void;
getSendFramesToEngine: () => boolean;
addObserver: (observer: IWidgetsBindingObserver) => void;
removeObserver: (observer: IWidgetsBindingObserver) => boolean;
handleLocaleChanged: () => void;
dispatchLocalesChanged: (locales?: IList<ILocale> | undefined) => void;
dispatchAccessibilityFeaturesChanged: () => void;
handlePopRoute: () => IFuture<void>;
handlePushRoute: (route: string) => IFuture<void>;
scheduleAttachRootWidget: (rootWidget: IWidget) => void;
attachRootWidget: (rootWidget: IWidget) => void;
computePlatformResolvedLocale: (supportedLocales: IList<ILocale>) => ILocale | undefined;
getBuildOwner: () => IBuildOwner | undefined;
getFocusManager: () => IFocusManager;
getFirstFrameRasterized: () => boolean;
getWaitUntilFirstFrameRasterized: () => IFuture<void>;
getDebugDidSendFirstFrameEvent: () => boolean;
getRenderViewElement: () => IElement | undefined;
getIsRootWidgetAttached: () => boolean;
lockEvents: (callback : () => IFuture<void>) => IFuture<void>;
reassembleApplication: () => IFuture<void>;
registerSignalServiceExtension: ( props : {  callback : () => IFuture<void>, name : string,}) => void;
registerBoolServiceExtension: ( props : {  getter : () => IFuture<boolean>, name : string, setter : (value: boolean) => IFuture<void>,}) => void;
registerNumericServiceExtension: ( props : {  getter : () => IFuture<number>, name : string, setter : (value: number) => IFuture<void>,}) => void;
postEvent: (eventKind: string, eventData: {[index: string]: any}) => void;
registerStringServiceExtension: ( props : {  getter : () => IFuture<string>, name : string, setter : (value: string) => IFuture<void>,}) => void;
registerServiceExtension: ( props : {  callback : (parameters: {[index: string]: string}) => IFuture<{[index: string]: any}>, name : string,}) => void;
toString: () => string;
getWindow: () => ISingletonFlutterWindow;
getPlatformDispatcher: () => IPlatformDispatcher;
getLocked: () => boolean;
getHashCode: () => number;
}export class WidgetsFlutterBinding

 implements IBindingBase, IGestureBinding, ISchedulerBinding, IServicesBinding, IPaintingBinding, ISemanticsBinding, IRendererBinding, IWidgetsBinding, IHitTestable, IHitTestDispatcher, IHitTestTarget
{    public readonly pointerRouter: IPointerRouter = undefined as any;
    public readonly gestureArena: IGestureArenaManager = undefined as any;
    public readonly pointerSignalResolver: IPointerSignalResolver = undefined as any;
    public readonly resamplingEnabled: boolean = undefined as any;
    public readonly samplingOffset: IDuration = undefined as any;
    public readonly schedulingStrategy: ( props : {  priority : number, scheduler : ISchedulerBinding,}) => boolean = undefined as any;
    public readonly debugBuildingDirtyElements: boolean = undefined as any;
public constructor(){
flutter.widgets.widgetsFlutterBinding(this);}
public static ensureInitialized() : IWidgetsBinding{
return flutter.widgets.widgetsFlutterBindingEnsureInitialized();
}    private readonly _dart_initInstances: () => void = undefined as any;
    private readonly _dart_unlocked: () => void = undefined as any;
    private readonly _dart_cancelPointer: (pointer: number) => void = undefined as any;
    private readonly _dart_handlePointerEvent: (event: IPointerEvent) => void = undefined as any;
    private readonly _dart_hitTest: (result: IHitTestResult, position: IOffset) => void = undefined as any;
    private readonly _dart_dispatchEvent: (event: IPointerEvent, hitTestResult?: IHitTestResult | undefined) => void = undefined as any;
    private readonly _dart_handleEvent: (event: IPointerEvent, entry: IHitTestEntry) => void = undefined as any;
    private readonly _dart_resetGestureBinding: () => void = undefined as any;
    private readonly _dart_getDebugSamplingClock: () => ISamplingClock | undefined = undefined as any;
    private readonly _dart_addTimingsCallback: (callback : (timings: IList<IFrameTiming>) => void) => void = undefined as any;
    private readonly _dart_removeTimingsCallback: (callback : (timings: IList<IFrameTiming>) => void) => void = undefined as any;
    private readonly _dart_initServiceExtensions: () => void = undefined as any;
    private readonly _dart_handleAppLifecycleStateChanged: (state: AppLifecycleState) => void = undefined as any;
    private readonly _dart_scheduleTask: <T>(task : () => T, priority: IPriority, props? : {  debugLabel? : string | undefined, flow? : IFlow | undefined,}) => IFuture<T> = undefined as any;
    private readonly _dart_scheduleFrameCallback: (callback : (timeStamp: IDuration) => void, props : {  rescheduling : boolean,}) => number = undefined as any;
    private readonly _dart_cancelFrameCallbackWithId: (id: number) => void = undefined as any;
    private readonly _dart_debugAssertNoTransientCallbacks: (reason: string) => boolean = undefined as any;
    private readonly _dart_addPersistentFrameCallback: (callback : (timeStamp: IDuration) => void) => void = undefined as any;
    private readonly _dart_addPostFrameCallback: (callback : (timeStamp: IDuration) => void) => void = undefined as any;
    private readonly _dart_ensureFrameCallbacksRegistered: () => void = undefined as any;
    private readonly _dart_ensureVisualUpdate: () => void = undefined as any;
    private readonly _dart_scheduleFrame: () => void = undefined as any;
    private readonly _dart_scheduleForcedFrame: () => void = undefined as any;
    private readonly _dart_scheduleWarmUpFrame: () => void = undefined as any;
    private readonly _dart_resetEpoch: () => void = undefined as any;
    private readonly _dart_handleBeginFrame: (rawTimeStamp?: IDuration | undefined) => void = undefined as any;
    private readonly _dart_handleDrawFrame: () => void = undefined as any;
    private readonly _dart_getLifecycleState: () => AppLifecycleState | undefined = undefined as any;
    private readonly _dart_getTransientCallbackCount: () => number = undefined as any;
    private readonly _dart_getEndOfFrame: () => IFuture<void> = undefined as any;
    private readonly _dart_getHasScheduledFrame: () => boolean = undefined as any;
    private readonly _dart_getSchedulerPhase: () => SchedulerPhase = undefined as any;
    private readonly _dart_getFramesEnabled: () => boolean = undefined as any;
    private readonly _dart_getCurrentFrameTimeStamp: () => IDuration = undefined as any;
    private readonly _dart_getCurrentSystemFrameTimeStamp: () => IDuration = undefined as any;
    private readonly _dart_createBinaryMessenger: () => IBinaryMessenger = undefined as any;
    private readonly _dart_handleMemoryPressure: () => void = undefined as any;
    private readonly _dart_handleSystemMessage: (systemMessage: Object) => IFuture<void> = undefined as any;
    private readonly _dart_initLicenses: () => void = undefined as any;
    private readonly _dart_evict: (asset: string) => void = undefined as any;
    private readonly _dart_readInitialLifecycleStateFromNativeWindow: () => void = undefined as any;
    private readonly _dart_createRestorationManager: () => IRestorationManager = undefined as any;
    private readonly _dart_setSystemUiChangeCallback: (callback? : (systemOverlaysAreVisible: boolean) => IFuture<void>) => void = undefined as any;
    private readonly _dart_getKeyboard: () => IHardwareKeyboard = undefined as any;
    private readonly _dart_getKeyEventManager: () => IKeyEventManager = undefined as any;
    private readonly _dart_getDefaultBinaryMessenger: () => IBinaryMessenger = undefined as any;
    private readonly _dart_getChannelBuffers: () => IChannelBuffers = undefined as any;
    private readonly _dart_getRestorationManager: () => IRestorationManager = undefined as any;
    private readonly _dart_createImageCache: () => IImageCache = undefined as any;
    private readonly _dart_instantiateImageCodec: (bytes: IUint8List, props : {  allowUpscaling : boolean, cacheHeight? : number | undefined, cacheWidth? : number | undefined,}) => IFuture<ICodec> = undefined as any;
    private readonly _dart_getImageCache: () => IImageCache | undefined = undefined as any;
    private readonly _dart_getSystemFonts: () => IListenable = undefined as any;
    private readonly _dart_handleAccessibilityFeaturesChanged: () => void = undefined as any;
    private readonly _dart_createSemanticsUpdateBuilder: () => ISemanticsUpdateBuilder = undefined as any;
    private readonly _dart_getAccessibilityFeatures: () => IAccessibilityFeatures = undefined as any;
    private readonly _dart_getDisableAnimations: () => boolean = undefined as any;
    private readonly _dart_initRenderView: () => void = undefined as any;
    private readonly _dart_handleMetricsChanged: () => void = undefined as any;
    private readonly _dart_handleTextScaleFactorChanged: () => void = undefined as any;
    private readonly _dart_handlePlatformBrightnessChanged: () => void = undefined as any;
    private readonly _dart_createViewConfiguration: () => IViewConfiguration = undefined as any;
    private readonly _dart_setSemanticsEnabled: (enabled: boolean) => void = undefined as any;
    private readonly _dart_deferFirstFrame: () => void = undefined as any;
    private readonly _dart_allowFirstFrame: () => void = undefined as any;
    private readonly _dart_resetFirstFrameSent: () => void = undefined as any;
    private readonly _dart_drawFrame: () => void = undefined as any;
    private readonly _dart_performReassemble: () => IFuture<void> = undefined as any;
    private readonly _dart_getMouseTracker: () => IMouseTracker = undefined as any;
    private readonly _dart_getPipelineOwner: () => IPipelineOwner = undefined as any;
    private readonly _dart_getRenderView: () => IRenderView = undefined as any;
    private readonly _dart_setRenderView: (value: IRenderView) => void = undefined as any;
    private readonly _dart_getSendFramesToEngine: () => boolean = undefined as any;
    private readonly _dart_addObserver: (observer: IWidgetsBindingObserver) => void = undefined as any;
    private readonly _dart_removeObserver: (observer: IWidgetsBindingObserver) => boolean = undefined as any;
    private readonly _dart_handleLocaleChanged: () => void = undefined as any;
    private readonly _dart_dispatchLocalesChanged: (locales?: IList<ILocale> | undefined) => void = undefined as any;
    private readonly _dart_dispatchAccessibilityFeaturesChanged: () => void = undefined as any;
    private readonly _dart_handlePopRoute: () => IFuture<void> = undefined as any;
    private readonly _dart_handlePushRoute: (route: string) => IFuture<void> = undefined as any;
    private readonly _dart_scheduleAttachRootWidget: (rootWidget: IWidget) => void = undefined as any;
    private readonly _dart_attachRootWidget: (rootWidget: IWidget) => void = undefined as any;
    private readonly _dart_computePlatformResolvedLocale: (supportedLocales: IList<ILocale>) => ILocale | undefined = undefined as any;
    private readonly _dart_getBuildOwner: () => IBuildOwner | undefined = undefined as any;
    private readonly _dart_getFocusManager: () => IFocusManager = undefined as any;
    private readonly _dart_getFirstFrameRasterized: () => boolean = undefined as any;
    private readonly _dart_getWaitUntilFirstFrameRasterized: () => IFuture<void> = undefined as any;
    private readonly _dart_getDebugDidSendFirstFrameEvent: () => boolean = undefined as any;
    private readonly _dart_getRenderViewElement: () => IElement | undefined = undefined as any;
    private readonly _dart_getIsRootWidgetAttached: () => boolean = undefined as any;
    private readonly _dart_lockEvents: (callback : () => IFuture<void>) => IFuture<void> = undefined as any;
    private readonly _dart_reassembleApplication: () => IFuture<void> = undefined as any;
    private readonly _dart_registerSignalServiceExtension: ( props : {  callback : () => IFuture<void>, name : string,}) => void = undefined as any;
    private readonly _dart_registerBoolServiceExtension: ( props : {  getter : () => IFuture<boolean>, name : string, setter : (value: boolean) => IFuture<void>,}) => void = undefined as any;
    private readonly _dart_registerNumericServiceExtension: ( props : {  getter : () => IFuture<number>, name : string, setter : (value: number) => IFuture<void>,}) => void = undefined as any;
    private readonly _dart_postEvent: (eventKind: string, eventData: {[index: string]: any}) => void = undefined as any;
    private readonly _dart_registerStringServiceExtension: ( props : {  getter : () => IFuture<string>, name : string, setter : (value: string) => IFuture<void>,}) => void = undefined as any;
    private readonly _dart_registerServiceExtension: ( props : {  callback : (parameters: {[index: string]: string}) => IFuture<{[index: string]: any}>, name : string,}) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getWindow: () => ISingletonFlutterWindow = undefined as any;
    private readonly _dart_getPlatformDispatcher: () => IPlatformDispatcher = undefined as any;
    private readonly _dart_getLocked: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public initInstances() : void {
    return this._dart_initInstances();
}
public unlocked() : void {
    return this._dart_unlocked();
}
public cancelPointer(pointer: number) : void {
    return this._dart_cancelPointer(pointer);
}
public handlePointerEvent(event: IPointerEvent) : void {
    return this._dart_handlePointerEvent(event);
}
public hitTest(result: IHitTestResult, position: IOffset) : void {
    return this._dart_hitTest(result, position);
}
public dispatchEvent(event: IPointerEvent, hitTestResult?: IHitTestResult | undefined) : void {
    return this._dart_dispatchEvent(event, hitTestResult);
}
public handleEvent(event: IPointerEvent, entry: IHitTestEntry) : void {
    return this._dart_handleEvent(event, entry);
}
public resetGestureBinding() : void {
    return this._dart_resetGestureBinding();
}
public getDebugSamplingClock() : ISamplingClock | undefined {
    return this._dart_getDebugSamplingClock();
}
public addTimingsCallback(callback : (timings: IList<IFrameTiming>) => void) : void {
    return this._dart_addTimingsCallback(callback);
}
public removeTimingsCallback(callback : (timings: IList<IFrameTiming>) => void) : void {
    return this._dart_removeTimingsCallback(callback);
}
public initServiceExtensions() : void {
    return this._dart_initServiceExtensions();
}
public handleAppLifecycleStateChanged(state: AppLifecycleState) : void {
    return this._dart_handleAppLifecycleStateChanged(state);
}
public scheduleTask<T>(task : () => T, priority: IPriority, props? : {  debugLabel? : string | undefined, flow? : IFlow | undefined,}) : IFuture<T> {
    return this._dart_scheduleTask(task, priority, props);
}
public scheduleFrameCallback(callback : (timeStamp: IDuration) => void, props : {  rescheduling? : boolean,}) : number {
    return this._dart_scheduleFrameCallback(callback, {
...scheduleFrameCallbackDefaultProps,
...props
});
}
public cancelFrameCallbackWithId(id: number) : void {
    return this._dart_cancelFrameCallbackWithId(id);
}
public debugAssertNoTransientCallbacks(reason: string) : boolean {
    return this._dart_debugAssertNoTransientCallbacks(reason);
}
public addPersistentFrameCallback(callback : (timeStamp: IDuration) => void) : void {
    return this._dart_addPersistentFrameCallback(callback);
}
public addPostFrameCallback(callback : (timeStamp: IDuration) => void) : void {
    return this._dart_addPostFrameCallback(callback);
}
public ensureFrameCallbacksRegistered() : void {
    return this._dart_ensureFrameCallbacksRegistered();
}
public ensureVisualUpdate() : void {
    return this._dart_ensureVisualUpdate();
}
public scheduleFrame() : void {
    return this._dart_scheduleFrame();
}
public scheduleForcedFrame() : void {
    return this._dart_scheduleForcedFrame();
}
public scheduleWarmUpFrame() : void {
    return this._dart_scheduleWarmUpFrame();
}
public resetEpoch() : void {
    return this._dart_resetEpoch();
}
public handleBeginFrame(rawTimeStamp?: IDuration | undefined) : void {
    return this._dart_handleBeginFrame(rawTimeStamp);
}
public handleDrawFrame() : void {
    return this._dart_handleDrawFrame();
}
public getLifecycleState() : AppLifecycleState | undefined {
    return this._dart_getLifecycleState();
}
public getTransientCallbackCount() : number {
    return this._dart_getTransientCallbackCount();
}
public getEndOfFrame() : IFuture<void> {
    return this._dart_getEndOfFrame();
}
public getHasScheduledFrame() : boolean {
    return this._dart_getHasScheduledFrame();
}
public getSchedulerPhase() : SchedulerPhase {
    return this._dart_getSchedulerPhase();
}
public getFramesEnabled() : boolean {
    return this._dart_getFramesEnabled();
}
public getCurrentFrameTimeStamp() : IDuration {
    return this._dart_getCurrentFrameTimeStamp();
}
public getCurrentSystemFrameTimeStamp() : IDuration {
    return this._dart_getCurrentSystemFrameTimeStamp();
}
public createBinaryMessenger() : IBinaryMessenger {
    return this._dart_createBinaryMessenger();
}
public handleMemoryPressure() : void {
    return this._dart_handleMemoryPressure();
}
public handleSystemMessage(systemMessage: Object) : IFuture<void> {
    return this._dart_handleSystemMessage(systemMessage);
}
public initLicenses() : void {
    return this._dart_initLicenses();
}
public evict(asset: string) : void {
    return this._dart_evict(asset);
}
public readInitialLifecycleStateFromNativeWindow() : void {
    return this._dart_readInitialLifecycleStateFromNativeWindow();
}
public createRestorationManager() : IRestorationManager {
    return this._dart_createRestorationManager();
}
public setSystemUiChangeCallback(callback? : (systemOverlaysAreVisible: boolean) => IFuture<void>) : void {
    return this._dart_setSystemUiChangeCallback(callback);
}
public getKeyboard() : IHardwareKeyboard {
    return this._dart_getKeyboard();
}
public getKeyEventManager() : IKeyEventManager {
    return this._dart_getKeyEventManager();
}
public getDefaultBinaryMessenger() : IBinaryMessenger {
    return this._dart_getDefaultBinaryMessenger();
}
public getChannelBuffers() : IChannelBuffers {
    return this._dart_getChannelBuffers();
}
public getRestorationManager() : IRestorationManager {
    return this._dart_getRestorationManager();
}
public createImageCache() : IImageCache {
    return this._dart_createImageCache();
}
public instantiateImageCodec(bytes: IUint8List, props : {  allowUpscaling? : boolean, cacheHeight? : number | undefined, cacheWidth? : number | undefined,}) : IFuture<ICodec> {
    return this._dart_instantiateImageCodec(bytes, {
...instantiateImageCodecDefaultProps,
...props
});
}
public getImageCache() : IImageCache | undefined {
    return this._dart_getImageCache();
}
public getSystemFonts() : IListenable {
    return this._dart_getSystemFonts();
}
public handleAccessibilityFeaturesChanged() : void {
    return this._dart_handleAccessibilityFeaturesChanged();
}
public createSemanticsUpdateBuilder() : ISemanticsUpdateBuilder {
    return this._dart_createSemanticsUpdateBuilder();
}
public getAccessibilityFeatures() : IAccessibilityFeatures {
    return this._dart_getAccessibilityFeatures();
}
public getDisableAnimations() : boolean {
    return this._dart_getDisableAnimations();
}
public initRenderView() : void {
    return this._dart_initRenderView();
}
public handleMetricsChanged() : void {
    return this._dart_handleMetricsChanged();
}
public handleTextScaleFactorChanged() : void {
    return this._dart_handleTextScaleFactorChanged();
}
public handlePlatformBrightnessChanged() : void {
    return this._dart_handlePlatformBrightnessChanged();
}
public createViewConfiguration() : IViewConfiguration {
    return this._dart_createViewConfiguration();
}
public setSemanticsEnabled(enabled: boolean) : void {
    return this._dart_setSemanticsEnabled(enabled);
}
public deferFirstFrame() : void {
    return this._dart_deferFirstFrame();
}
public allowFirstFrame() : void {
    return this._dart_allowFirstFrame();
}
public resetFirstFrameSent() : void {
    return this._dart_resetFirstFrameSent();
}
public drawFrame() : void {
    return this._dart_drawFrame();
}
public performReassemble() : IFuture<void> {
    return this._dart_performReassemble();
}
public getMouseTracker() : IMouseTracker {
    return this._dart_getMouseTracker();
}
public getPipelineOwner() : IPipelineOwner {
    return this._dart_getPipelineOwner();
}
public getRenderView() : IRenderView {
    return this._dart_getRenderView();
}
public setRenderView(value: IRenderView) : void {
    return this._dart_setRenderView(value);
}
public getSendFramesToEngine() : boolean {
    return this._dart_getSendFramesToEngine();
}
public addObserver(observer: IWidgetsBindingObserver) : void {
    return this._dart_addObserver(observer);
}
public removeObserver(observer: IWidgetsBindingObserver) : boolean {
    return this._dart_removeObserver(observer);
}
public handleLocaleChanged() : void {
    return this._dart_handleLocaleChanged();
}
public dispatchLocalesChanged(locales?: IList<ILocale> | undefined) : void {
    return this._dart_dispatchLocalesChanged(locales);
}
public dispatchAccessibilityFeaturesChanged() : void {
    return this._dart_dispatchAccessibilityFeaturesChanged();
}
public handlePopRoute() : IFuture<void> {
    return this._dart_handlePopRoute();
}
public handlePushRoute(route: string) : IFuture<void> {
    return this._dart_handlePushRoute(route);
}
public scheduleAttachRootWidget(rootWidget: IWidget) : void {
    return this._dart_scheduleAttachRootWidget(rootWidget);
}
public attachRootWidget(rootWidget: IWidget) : void {
    return this._dart_attachRootWidget(rootWidget);
}
public computePlatformResolvedLocale(supportedLocales: IList<ILocale>) : ILocale | undefined {
    return this._dart_computePlatformResolvedLocale(supportedLocales);
}
public getBuildOwner() : IBuildOwner | undefined {
    return this._dart_getBuildOwner();
}
public getFocusManager() : IFocusManager {
    return this._dart_getFocusManager();
}
public getFirstFrameRasterized() : boolean {
    return this._dart_getFirstFrameRasterized();
}
public getWaitUntilFirstFrameRasterized() : IFuture<void> {
    return this._dart_getWaitUntilFirstFrameRasterized();
}
public getDebugDidSendFirstFrameEvent() : boolean {
    return this._dart_getDebugDidSendFirstFrameEvent();
}
public getRenderViewElement() : IElement | undefined {
    return this._dart_getRenderViewElement();
}
public getIsRootWidgetAttached() : boolean {
    return this._dart_getIsRootWidgetAttached();
}
public lockEvents(callback : () => IFuture<void>) : IFuture<void> {
    return this._dart_lockEvents(callback);
}
public reassembleApplication() : IFuture<void> {
    return this._dart_reassembleApplication();
}
public registerSignalServiceExtension( props : {  callback : () => IFuture<void>, name : string,}) : void {
    return this._dart_registerSignalServiceExtension(props);
}
public registerBoolServiceExtension( props : {  getter : () => IFuture<boolean>, name : string, setter : (value: boolean) => IFuture<void>,}) : void {
    return this._dart_registerBoolServiceExtension(props);
}
public registerNumericServiceExtension( props : {  getter : () => IFuture<number>, name : string, setter : (value: number) => IFuture<void>,}) : void {
    return this._dart_registerNumericServiceExtension(props);
}
public postEvent(eventKind: string, eventData: {[index: string]: any}) : void {
    return this._dart_postEvent(eventKind, eventData);
}
public registerStringServiceExtension( props : {  getter : () => IFuture<string>, name : string, setter : (value: string) => IFuture<void>,}) : void {
    return this._dart_registerStringServiceExtension(props);
}
public registerServiceExtension( props : {  callback : (parameters: {[index: string]: string}) => IFuture<{[index: string]: any}>, name : string,}) : void {
    return this._dart_registerServiceExtension(props);
}
public toString() : string {
    return this._dart_toString();
}
public getWindow() : ISingletonFlutterWindow {
    return this._dart_getWindow();
}
public getPlatformDispatcher() : IPlatformDispatcher {
    return this._dart_getPlatformDispatcher();
}
public getLocked() : boolean {
    return this._dart_getLocked();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
const scheduleFrameCallbackDefaultProps = {
    rescheduling: false,
};
const instantiateImageCodecDefaultProps = {
    allowUpscaling: false,
};
