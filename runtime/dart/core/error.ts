import { IStackTrace } from "./stackTrace";
declare const dart: {
    core: {
        error: (this: void, error: IError) => IError;
        errorSafeToString: (object?: Object | undefined) => string;
    };
};
export interface IError {
    getStackTrace: () => IStackTrace | undefined;
}
export class Error {
    public constructor() {
        dart.core.error(this);
    }
    public static safeToString(object?: Object | undefined): string {
        return dart.core.errorSafeToString(object);
    }
    private readonly _dart_getStackTrace: () => IStackTrace | undefined =
        undefined as any;
    public getStackTrace(): IStackTrace | undefined {
        return this._dart_getStackTrace();
    }
}
