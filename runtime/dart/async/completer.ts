import { IStackTrace } from "../core/stackTrace";
import { IFuture } from "./future";
import { IFutureOr } from "./futureOr";
declare const dart: {
    async: {
        completer: <T>(this: void, completer: ICompleter<T>) => ICompleter<T>;
        completerSync: <T>() => ICompleter<T>;
    };
};
export interface ICompleter<T> {
    getFuture: () => IFuture<T>;
    complete: (value?: IFutureOr<T> | undefined) => void;
    completeError: (
        error: Object,
        stackTrace?: IStackTrace | undefined
    ) => void;
    getIsCompleted: () => boolean;
}
export class Completer<T> {
    public constructor() {
        dart.async.completer(this);
    }
    public static sync<T>(): ICompleter<T> {
        return dart.async.completerSync();
    }
    private readonly _dart_getFuture: () => IFuture<T> = undefined as any;
    private readonly _dart_complete: (
        value?: IFutureOr<T> | undefined
    ) => void = undefined as any;
    private readonly _dart_completeError: (
        error: Object,
        stackTrace?: IStackTrace | undefined
    ) => void = undefined as any;
    private readonly _dart_getIsCompleted: () => boolean = undefined as any;
    public getFuture(): IFuture<T> {
        return this._dart_getFuture();
    }
    public complete(value?: IFutureOr<T> | undefined): void {
        return this._dart_complete(value);
    }
    public completeError(
        error: Object,
        stackTrace?: IStackTrace | undefined
    ): void {
        return this._dart_completeError(error, stackTrace);
    }
    public getIsCompleted(): boolean {
        return this._dart_getIsCompleted();
    }
}
