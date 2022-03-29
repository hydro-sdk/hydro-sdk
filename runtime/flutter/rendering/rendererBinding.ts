import { IFuture } from "../../dart/async/future";
import { IOffset } from "../../dart/ui/offset";
import { IHitTestResult } from "../gestures/hitTestResult";
import { IPointerEvent } from "../gestures/pointerEvent";
import { IMouseTracker } from "./mouseTracker";
import { IPipelineOwner } from "./pipelineOwner";
import { IRenderView } from "./renderView";
import { IViewConfiguration } from "./viewConfiguration";
export interface IRendererBinding {
    initInstances: () => void;
    initServiceExtensions: () => void;
    initRenderView: () => void;
    getMouseTracker: () => IMouseTracker;
    getPipelineOwner: () => IPipelineOwner;
    getRenderView: () => IRenderView;
    setRenderView: (value: IRenderView) => void;
    handleMetricsChanged: () => void;
    handleTextScaleFactorChanged: () => void;
    handlePlatformBrightnessChanged: () => void;
    createViewConfiguration: () => IViewConfiguration;
    dispatchEvent: (
        event: IPointerEvent,
        hitTestResult?: IHitTestResult | undefined
    ) => void;
    setSemanticsEnabled: (enabled: boolean) => void;
    getSendFramesToEngine: () => boolean;
    deferFirstFrame: () => void;
    allowFirstFrame: () => void;
    resetFirstFrameSent: () => void;
    drawFrame: () => void;
    performReassemble: () => IFuture<void>;
    hitTest: (result: IHitTestResult, position: IOffset) => void;
}
