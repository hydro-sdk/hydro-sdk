import { IStackTrace } from "../../dart/core/stackTrace";
import { ConnectionState } from "./connectionState";
export interface IAsyncSnapshot<T> {
    connectionState: ConnectionState;
    error: Object | undefined;
    stackTrace: IStackTrace | undefined;
    getRequireData: () => T;
    inState: (state: ConnectionState) => IAsyncSnapshot<T>;
    getHasData: () => boolean;
    getHasError: () => boolean;
    toString: () => string;
    getHashCode: () => number;
}
