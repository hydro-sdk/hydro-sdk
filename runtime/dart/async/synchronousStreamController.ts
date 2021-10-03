import { IStackTrace } from "../core/stackTrace";
import { IFuture } from "./future";
import { IStreamController } from "./streamController";
export interface ISynchronousStreamController<T>
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
    add: (data: T) => void;
    addError: (error: Object, stackTrace?: IStackTrace | undefined) => void;
    close: () => IFuture<any>;
}
