import { I_EventSink } from "./_eventSink";
import { I_Future } from "./_future";
import { IFuture } from "./future";
import { IStream } from "./stream";
import { IStreamSubscription } from "./streamSubscription";
declare const dart: {
    async: {
        _addStreamState: <T>(
            this: void,
            _addStreamState: I_AddStreamState<T>,
            controller: I_EventSink<T>,
            source: IStream<T>,
            cancelOnError: boolean
        ) => I_AddStreamState<T>;
        _addStreamStateMakeErrorHandler: (controller: I_EventSink<any>) => any;
    };
};
export interface I_AddStreamState<T> {
    addStreamFuture: I_Future<any>;
    addSubscription: IStreamSubscription<any>;
    pause: () => void;
    resume: () => void;
    cancel: () => IFuture<void>;
    complete: () => void;
}
export class _AddStreamState<T> {
    public readonly addStreamFuture: I_Future<any> = undefined as any;
    public readonly addSubscription: IStreamSubscription<any> =
        undefined as any;
    public constructor(
        controller: I_EventSink<T>,
        source: IStream<T>,
        cancelOnError: boolean
    ) {
        dart.async._addStreamState(this, controller, source, cancelOnError);
    }
    public static makeErrorHandler(controller: I_EventSink<any>): any {
        return dart.async._addStreamStateMakeErrorHandler(controller);
    }
    private readonly _dart_pause: () => void = undefined as any;
    private readonly _dart_resume: () => void = undefined as any;
    private readonly _dart_cancel: () => IFuture<void> = undefined as any;
    private readonly _dart_complete: () => void = undefined as any;
    public pause(): void {
        return this._dart_pause();
    }
    public resume(): void {
        return this._dart_resume();
    }
    public cancel(): IFuture<void> {
        return this._dart_cancel();
    }
    public complete(): void {
        return this._dart_complete();
    }
}
