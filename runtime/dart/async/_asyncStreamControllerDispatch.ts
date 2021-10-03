import { I_StreamController } from "./_streamController";
export interface I_AsyncStreamControllerDispatch<T>
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
    > {}
