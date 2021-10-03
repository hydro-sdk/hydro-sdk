import { IException } from "../core/exception";
declare const dart: {
    async: {
        deferredLoadException: (
            this: void,
            deferredLoadException: IDeferredLoadException,
            message: string
        ) => IDeferredLoadException;
    };
};
export interface IDeferredLoadException {
    toString: () => string;
    getHashCode: () => number;
}
export class DeferredLoadException implements IException {
    public constructor(message: string) {
        dart.async.deferredLoadException(this, message);
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
