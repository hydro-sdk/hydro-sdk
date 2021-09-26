import { I_StreamController } from "./_streamController";
import { ISynchronousStreamController } from "./synchronousStreamController";
export interface I_SyncStreamControllerDispatch<T>
    extends Omit<
            I_StreamController<T>,
            | "onListen"
            | "onListen="
            | "onPause"
            | "onPause="
            | "onResume"
            | "onResume="
            | "onCancel"
            | "onCancel="
        >,
        ISynchronousStreamController<T> {}
