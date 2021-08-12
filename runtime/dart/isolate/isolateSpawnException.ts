import { IException } from "../core/exception";
declare const dart: {
    isolate: {
        isolateSpawnException: (
            this: void,
            isolateSpawnException: IIsolateSpawnException,
            message: string
        ) => IIsolateSpawnException;
    };
};
export interface IIsolateSpawnException {
    message: string;
    toString: () => string;
    getHashCode: () => number;
}
export class IsolateSpawnException implements IException {
    public readonly message: string = undefined as any;
    public constructor(message: string) {
        dart.isolate.isolateSpawnException(this, message);
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
