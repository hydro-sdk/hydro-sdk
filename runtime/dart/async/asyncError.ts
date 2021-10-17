import { IError } from "../core/error";
import { IStackTrace } from "../core/stackTrace";
declare const dart: {
    async: {
        asyncError: (
            this: void,
            asyncError: IAsyncError,
            error: Object,
            stackTrace?: IStackTrace | undefined
        ) => IAsyncError;
        asyncErrorDefaultStackTrace: (error: Object) => IStackTrace;
    };
};
export interface IAsyncError {
    error: Object;
    stackTrace: IStackTrace;
    getStackTrace: () => IStackTrace;
    toString: () => string;
    getHashCode: () => number;
}
export class AsyncError implements IError {
    public readonly error: Object = undefined as any;
    public readonly stackTrace: IStackTrace = undefined as any;
    public constructor(error: Object, stackTrace?: IStackTrace | undefined) {
        dart.async.asyncError(this, error, stackTrace);
    }
    public static defaultStackTrace(error: Object): IStackTrace {
        return dart.async.asyncErrorDefaultStackTrace(error);
    }
    private readonly _dart_getStackTrace: () => IStackTrace = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getStackTrace(): IStackTrace {
        return this._dart_getStackTrace();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
