import { IByteData } from "../../dart/typed_data/byteData";
import { IMessageCodec } from "./messageCodec";
declare const flutter: {
    services: {
        jSONMessageCodec: (
            this: void,
            jSONMessageCodec: IJSONMessageCodec
        ) => IJSONMessageCodec;
    };
};
export interface IJSONMessageCodec {
    encodeMessage: (message?: Object | undefined) => IByteData | undefined;
    decodeMessage: (message?: IByteData | undefined) => any;
}
export class JSONMessageCodec implements IMessageCodec<?Object> {
    public constructor() {
        flutter.services.jSONMessageCodec(this);
    }
    private readonly _dart_encodeMessage: (
        message?: Object | undefined
    ) => IByteData | undefined = undefined as any;
    private readonly _dart_decodeMessage: (
        message?: IByteData | undefined
    ) => any = undefined as any;
    public encodeMessage(message?: Object | undefined): IByteData | undefined {
        return this._dart_encodeMessage(message);
    }
    public decodeMessage(message?: IByteData | undefined): any {
        return this._dart_decodeMessage(message);
    }
}
