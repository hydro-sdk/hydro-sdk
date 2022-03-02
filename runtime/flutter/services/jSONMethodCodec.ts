import { IByteData } from "../../dart/typed_data/byteData";
import { IMethodCall } from "./methodCall";
import { IMethodCodec } from "./methodCodec";
declare const flutter: {
    services: {
        jSONMethodCodec: (
            this: void,
            jSONMethodCodec: IJSONMethodCodec
        ) => IJSONMethodCodec;
    };
};
export interface IJSONMethodCodec {
    encodeMethodCall: (methodCall: IMethodCall) => IByteData;
    decodeMethodCall: (methodCall?: IByteData | undefined) => IMethodCall;
    decodeEnvelope: (envelope: IByteData) => any;
    encodeSuccessEnvelope: (result?: Object | undefined) => IByteData;
    encodeErrorEnvelope: (props: {
        details?: Object | undefined;
        message?: string | undefined;
        code: string;
    }) => IByteData;
}
export class JSONMethodCodec implements IMethodCodec {
    public constructor() {
        flutter.services.jSONMethodCodec(this);
    }
    private readonly _dart_encodeMethodCall: (
        methodCall: IMethodCall
    ) => IByteData = undefined as any;
    private readonly _dart_decodeMethodCall: (
        methodCall?: IByteData | undefined
    ) => IMethodCall = undefined as any;
    private readonly _dart_decodeEnvelope: (envelope: IByteData) => any =
        undefined as any;
    private readonly _dart_encodeSuccessEnvelope: (
        result?: Object | undefined
    ) => IByteData = undefined as any;
    private readonly _dart_encodeErrorEnvelope: (props: {
        details?: Object | undefined;
        message?: string | undefined;
        code: string;
    }) => IByteData = undefined as any;
    public encodeMethodCall(methodCall: IMethodCall): IByteData {
        return this._dart_encodeMethodCall(methodCall);
    }
    public decodeMethodCall(methodCall?: IByteData | undefined): IMethodCall {
        return this._dart_decodeMethodCall(methodCall);
    }
    public decodeEnvelope(envelope: IByteData): any {
        return this._dart_decodeEnvelope(envelope);
    }
    public encodeSuccessEnvelope(result?: Object | undefined): IByteData {
        return this._dart_encodeSuccessEnvelope(result);
    }
    public encodeErrorEnvelope(props: {
        details?: Object | undefined;
        message?: string | undefined;
        code: string;
    }): IByteData {
        return this._dart_encodeErrorEnvelope(props);
    }
}
