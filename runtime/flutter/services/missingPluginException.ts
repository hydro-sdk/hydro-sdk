import { IException } from "../../dart/core/exception";
declare const flutter: {
    services: {
        missingPluginException: (
            this: void,
            missingPluginException: IMissingPluginException,
            message?: string | undefined
        ) => IMissingPluginException;
    };
};
export interface IMissingPluginException {
    message: string | undefined;
    toString: () => string;
}
export class MissingPluginException implements IException {
    public readonly message: string | undefined = undefined as any;
    public constructor(message?: string | undefined) {
        flutter.services.missingPluginException(this, message);
    }
    private readonly _dart_toString: () => string = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
}
