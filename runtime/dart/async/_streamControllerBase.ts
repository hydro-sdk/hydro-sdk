import { I_EventDispatch } from "./_eventDispatch";
import { I_EventSink } from "./_eventSink";
import { I_StreamControllerLifecycle } from "./_streamControllerLifecycle";
import { IStreamController } from "./streamController";
export interface I_StreamControllerBase<T>
    extends Omit<
            IStreamController<T>,
            | "onListen"
            | "onListen="
            | "onPause"
            | "onPause="
            | "onResume"
            | "onResume="
            | "onCancel"
            | "onCancel="
        >,
        I_StreamControllerLifecycle<T>,
        I_EventSink<T>,
        I_EventDispatch<T> {}
