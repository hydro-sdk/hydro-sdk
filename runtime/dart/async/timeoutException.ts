import { IDuration } from "../core/duration";
import { IException } from "../core/exception";
declare const dart: {
    async: {
        timeoutException: (
            this: void,
            timeoutException: ITimeoutException,
            message?: string | undefined,
            duration?: IDuration | undefined
        ) => ITimeoutException;
    };
};
export interface ITimeoutException {
    message: string | undefined;
    duration: IDuration | undefined;
    toString: () => string;
    getHashCode: () => number;
}
export class TimeoutException implements IException {
    public readonly message: string | undefined = undefined as any;
    public readonly duration: IDuration | undefined = undefined as any;
    public constructor(
        message?: string | undefined,
        duration?: IDuration | undefined
    ) {
        dart.async.timeoutException(this, message, duration);
    }
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
