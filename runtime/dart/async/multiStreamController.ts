import { IStackTrace } from "../core/stackTrace";
import { IStreamController } from "./streamController";
export interface IMultiStreamController<T>
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
    > {
    addSync: (value: T) => void;
    addErrorSync: (error: Object, stackTrace?: IStackTrace | undefined) => void;
    closeSync: () => void;
}
