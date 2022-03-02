import { IException } from "../../dart/core/exception";
import { IUri } from "../../dart/core/uri";
declare const flutter: {
    painting: {
        networkImageLoadException: (
            this: void,
            networkImageLoadException: INetworkImageLoadException,
            props: { statusCode: number; uri: IUri }
        ) => INetworkImageLoadException;
    };
};
export interface INetworkImageLoadException {
    statusCode: number;
    uri: IUri;
    toString: () => string;
}
export class NetworkImageLoadException implements IException {
    public readonly statusCode: number = undefined as any;
    public readonly uri: IUri = undefined as any;
    public constructor(props: { statusCode: number; uri: IUri }) {
        flutter.painting.networkImageLoadException(this, props);
    }
    private readonly _dart_toString: () => string = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
}
