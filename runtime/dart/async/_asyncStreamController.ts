import { IStackTrace } from "../core/stackTrace";
import { I_AsyncStreamControllerDispatch } from "./_asyncStreamControllerDispatch";
import { I_StreamController } from "./_streamController";
import { I_StreamControllerBase } from "./_streamControllerBase";
import { IFuture } from "./future";
import { IFutureOr } from "./futureOr";
import { IStream } from "./stream";
import { IStreamSink } from "./streamSink";
export interface I_AsyncStreamController<T>
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
        I_AsyncStreamControllerDispatch<T> {}
