import { IByteData } from "../../dart/typed_data/byteData";
import { IMessageCodec } from "./messageCodec";
declare const flutter: {
    services: {
        stringCodec: (this: void, stringCodec: IStringCodec) => IStringCodec;
    };
};
export interface IStringCodec {
    decodeMessage: (message?: IByteData | undefined) => string | undefined;
    encodeMessage: (message?: string | undefined) => IByteData | undefined;
}
export class StringCodec implements IMessageCodec<string> {
    public constructor() {
        flutter.services.stringCodec(this);
    }
    private readonly _dart_decodeMessage: (
        message?: IByteData | undefined
    ) => string | undefined = undefined as any;
    private readonly _dart_encodeMessage: (
        message?: string | undefined
    ) => IByteData | undefined = undefined as any;
    public decodeMessage(message?: IByteData | undefined): string | undefined {
        return this._dart_decodeMessage(message);
    }
    public encodeMessage(message?: string | undefined): IByteData | undefined {
        return this._dart_encodeMessage(message);
    }
}
