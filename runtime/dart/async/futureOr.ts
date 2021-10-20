import { IFuture } from "./future";
export type IFutureOr<T> = IFuture<T> | T;
