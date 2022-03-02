import { IByteData } from "../../dart/typed_data/byteData";
import { IMessageCodec } from "./messageCodec";
declare const flutter: {
    services: {
        binaryCodec: (this: void, binaryCodec: IBinaryCodec) => IBinaryCodec;
    };
};
export interface IBinaryCodec {
    decodeMessage: (message?: IByteData | undefined) => IByteData | undefined;
    encodeMessage: (message?: IByteData | undefined) => IByteData | undefined;
}
export class BinaryCodec implements IMessageCodec<IByteData> {
    public constructor() {
        flutter.services.binaryCodec(this);
    }
    private readonly _dart_decodeMessage: (
        message?: IByteData | undefined
    ) => IByteData | undefined = undefined as any;
    private readonly _dart_encodeMessage: (
        message?: IByteData | undefined
    ) => IByteData | undefined = undefined as any;
    public decodeMessage(
        message?: IByteData | undefined
    ): IByteData | undefined {
        return this._dart_decodeMessage(message);
    }
    public encodeMessage(
        message?: IByteData | undefined
    ): IByteData | undefined {
        return this._dart_encodeMessage(message);
    }
}
