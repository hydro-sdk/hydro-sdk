import { IEventSink } from "./eventSink";
import { IFuture } from "./future";
import { IStreamConsumer } from "./streamConsumer";
export interface IStreamSink<S> extends IEventSink<S>, IStreamConsumer<S> {
    close: () => IFuture<any>;
    getDone: () => IFuture<any>;
}
