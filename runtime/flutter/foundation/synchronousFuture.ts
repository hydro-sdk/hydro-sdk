
import { IFuture } from "../../dart/async/future";
import { IStream } from "../../dart/async/stream";
import { IFunction } from "../../dart/core/function";
import { IFutureOr } from "../../dart/async/futureOr";
import { IDuration } from "../../dart/core/duration";
declare const flutter: {
foundation: {
synchronousFuture: <T>(this: void, synchronousFuture: ISynchronousFuture<T>, _value: T) => ISynchronousFuture<T>
}
};
export interface ISynchronousFuture
<T>

{
asStream: () => IStream<T>;
catchError: (onError: IFunction, props? : {  test? : (error: Object) => boolean | undefined,}) => IFuture<T>;
then: <R>(onValue : (value: T) => IFutureOr<R>, props? : {  onError? : IFunction | undefined,}) => IFuture<R>;
timeout: (timeLimit: IDuration, props? : {  onTimeout? : () => IFutureOr<T> | undefined,}) => IFuture<T>;
whenComplete: (action : () => IFutureOr<any>) => IFuture<T>;
}export class SynchronousFuture
<T>
 implements IFuture<T>
{public constructor(_value: T){
flutter.foundation.synchronousFuture(this, _value);}
    private readonly _dart_asStream: () => IStream<T> = undefined as any;
    private readonly _dart_catchError: (onError: IFunction, props? : {  test? : (error: Object) => boolean | undefined,}) => IFuture<T> = undefined as any;
    private readonly _dart_then: <R>(onValue : (value: T) => IFutureOr<R>, props? : {  onError? : IFunction | undefined,}) => IFuture<R> = undefined as any;
    private readonly _dart_timeout: (timeLimit: IDuration, props? : {  onTimeout? : () => IFutureOr<T> | undefined,}) => IFuture<T> = undefined as any;
    private readonly _dart_whenComplete: (action : () => IFutureOr<any>) => IFuture<T> = undefined as any;
public asStream() : IStream<T> {
    return this._dart_asStream();
}
public catchError(onError: IFunction, props? : {  test? : (error: Object) => boolean | undefined,}) : IFuture<T> {
    return this._dart_catchError(onError, props);
}
public then<R>(onValue : (value: T) => IFutureOr<R>, props? : {  onError? : IFunction | undefined,}) : IFuture<R> {
    return this._dart_then(onValue, props);
}
public timeout(timeLimit: IDuration, props? : {  onTimeout? : () => IFutureOr<T> | undefined,}) : IFuture<T> {
    return this._dart_timeout(timeLimit, props);
}
public whenComplete(action : () => IFutureOr<any>) : IFuture<T> {
    return this._dart_whenComplete(action);
}
}
