import { IException } from "../../dart/core/exception";
declare const flutter: {
    services: {
        platformException: (
            this: void,
            platformException: IPlatformException,
            props: {
                details: any;
                message?: string | undefined;
                stacktrace?: string | undefined;
                code: string;
            }
        ) => IPlatformException;
    };
};
export interface IPlatformException {
    code: string;
    message: string | undefined;
    stacktrace: string | undefined;
    toString: () => string;
}
export class PlatformException implements IException {
    public readonly code: string = undefined as any;
    public readonly message: string | undefined = undefined as any;
    public readonly stacktrace: string | undefined = undefined as any;
    public constructor(props: {
        details: any;
        message?: string | undefined;
        stacktrace?: string | undefined;
        code: string;
    }) {
        flutter.services.platformException(this, props);
    }
    private readonly _dart_toString: () => string = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
}
