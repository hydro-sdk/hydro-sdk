import { IError } from "../core/error";
import { IStackTrace } from "../core/stackTrace";
declare const dart: {
    isolate: {
        remoteError: (
            this: void,
            remoteError: IRemoteError,
            description: string,
            stackDescription: string
        ) => IRemoteError;
    };
};
export interface IRemoteError {
    stackTrace: IStackTrace;
    toString: () => string;
    getStackTrace: () => IStackTrace | undefined;
    getHashCode: () => number;
}
export class RemoteError implements IError {
    public readonly stackTrace: IStackTrace = undefined as any;
    public constructor(description: string, stackDescription: string) {
        dart.isolate.remoteError(this, description, stackDescription);
    }
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getStackTrace: () => IStackTrace | undefined =
        undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
    public getStackTrace(): IStackTrace | undefined {
        return this._dart_getStackTrace();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
