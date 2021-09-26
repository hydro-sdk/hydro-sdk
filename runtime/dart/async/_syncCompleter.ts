import { IStackTrace } from "../core/stackTrace";
import { I_Completer } from "./_completer";
import { I_Future } from "./_future";
import { ICompleter } from "./completer";
import { IFutureOr } from "./futureOr";
export interface I_SyncCompleter<T> extends Omit<I_Completer<T>, "future"> {
    complete: (value?: IFutureOr<T> | undefined) => void;
}
