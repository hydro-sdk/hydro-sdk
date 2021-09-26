import { IStackTrace } from "../core/stackTrace";
import { I_Future } from "./_future";
import { ICompleter } from "./completer";
import { IFutureOr } from "./futureOr";
export interface I_Completer<T> extends ICompleter<T> {
    future: I_Future<T>;
    complete: (value?: IFutureOr<T> | undefined) => void;
    completeError: (
        error: Object,
        stackTrace?: IStackTrace | undefined
    ) => void;
    getIsCompleted: () => boolean;
}
