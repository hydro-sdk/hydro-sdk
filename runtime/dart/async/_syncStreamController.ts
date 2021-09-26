import { IStackTrace } from "../core/stackTrace";
import { I_StreamController } from "./_streamController";
import { I_StreamControllerBase } from "./_streamControllerBase";
import { I_SyncStreamControllerDispatch } from "./_syncStreamControllerDispatch";
import { IFuture } from "./future";
import { IFutureOr } from "./futureOr";
import { IStream } from "./stream";
import { IStreamSink } from "./streamSink";
export interface I_SyncStreamController<T>
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
        I_SyncStreamControllerDispatch<T> {}
