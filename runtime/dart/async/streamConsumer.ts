import { IFuture } from "./future";
import { IStream } from "./stream";
export interface IStreamConsumer<S> {
    addStream: (stream: IStream<S>) => IFuture<any>;
    close: () => IFuture<any>;
}
