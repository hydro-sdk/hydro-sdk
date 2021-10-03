import { I_AddStreamState } from "./_addStreamState";
import { I_Future } from "./_future";
import { I_StreamController } from "./_streamController";
import { IFuture } from "./future";
import { IStream } from "./stream";
import { IStreamSubscription } from "./streamSubscription";
declare const dart: {
    async: {
        _streamControllerAddStreamState: <T>(
            this: void,
            _streamControllerAddStreamState: I_StreamControllerAddStreamState<T>,
            controller: I_StreamController<T>,
            varData: any,
            source: IStream<T>,
            cancelOnError: boolean
        ) => I_StreamControllerAddStreamState<T>;
    };
};
export interface I_StreamControllerAddStreamState<T> {
    pause: () => void;
    resume: () => void;
    cancel: () => IFuture<void>;
    complete: () => void;
    getAddStreamFuture: () => I_Future<any>;
    getAddSubscription: () => IStreamSubscription<any>;
    toString: () => string;
    getHashCode: () => number;
}
export class _StreamControllerAddStreamState<T>
    implements Omit<I_AddStreamState<T>, "addStreamFuture" | "addSubscription">
{
    public constructor(
        controller: I_StreamController<T>,
        varData: any,
        source: IStream<T>,
        cancelOnError: boolean
    ) {
        dart.async._streamControllerAddStreamState(
            this,
            controller,
            varData,
            source,
            cancelOnError
        );
    }
    private readonly _dart_pause: () => void = undefined as any;
    private readonly _dart_resume: () => void = undefined as any;
    private readonly _dart_cancel: () => IFuture<void> = undefined as any;
    private readonly _dart_complete: () => void = undefined as any;
    private readonly _dart_getAddStreamFuture: () => I_Future<any> =
        undefined as any;
    private readonly _dart_getAddSubscription: () => IStreamSubscription<any> =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
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
    public getAddStreamFuture(): I_Future<any> {
        return this._dart_getAddStreamFuture();
    }
    public getAddSubscription(): IStreamSubscription<any> {
        return this._dart_getAddSubscription();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
