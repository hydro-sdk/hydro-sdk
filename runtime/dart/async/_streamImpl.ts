import { IDuration } from "../core/duration";
import { IFunction } from "../core/function";
import { IIterable } from "../core/iterable";
import { IList } from "../core/list";
import { ISet } from "../core/set";
import { IEventSink } from "./eventSink";
import { IFuture } from "./future";
import { IFutureOr } from "./futureOr";
import { IStream } from "./stream";
import { IStreamConsumer } from "./streamConsumer";
import { IStreamSubscription } from "./streamSubscription";
import { IStreamTransformer } from "./streamTransformer";
export interface I_StreamImpl<T> extends IStream<T> {
    listen: (
        onData?: (data: T) => void,
        props?: {
            cancelOnError?: boolean | undefined;
            onDone?: () => void | undefined;
            onError?: IFunction | undefined;
        }
    ) => IStreamSubscription<T>;
}
