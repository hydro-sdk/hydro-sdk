import { IByteData } from "../../dart/typed_data/byteData";
import { IMethodCall } from "./methodCall";
import { IMethodCodec } from "./methodCodec";
import {
    IStandardMessageCodec,
    StandardMessageCodec,
} from "./standardMessageCodec";
declare const flutter: {
    services: {
        standardMethodCodec: (
            this: void,
            standardMethodCodec: IStandardMethodCodec,
            messageCodec: IStandardMessageCodec
        ) => IStandardMethodCodec;
    };
};
export interface IStandardMethodCodec {
    messageCodec: IStandardMessageCodec;
    encodeMethodCall: (methodCall: IMethodCall) => IByteData;
    decodeMethodCall: (methodCall?: IByteData | undefined) => IMethodCall;
    encodeSuccessEnvelope: (result?: Object | undefined) => IByteData;
    encodeErrorEnvelope: (props: {
        details?: Object | undefined;
        message?: string | undefined;
        code: string;
    }) => IByteData;
    decodeEnvelope: (envelope: IByteData) => any;
}
export class StandardMethodCodec implements IMethodCodec {
    public readonly messageCodec: IStandardMessageCodec = undefined as any;
    public constructor(
        messageCodec: IStandardMessageCodec = new StandardMessageCodec()
    ) {
        flutter.services.standardMethodCodec(this, messageCodec);
    }
    private readonly _dart_encodeMethodCall: (
        methodCall: IMethodCall
    ) => IByteData = undefined as any;
    private readonly _dart_decodeMethodCall: (
        methodCall?: IByteData | undefined
    ) => IMethodCall = undefined as any;
    private readonly _dart_encodeSuccessEnvelope: (
        result?: Object | undefined
    ) => IByteData = undefined as any;
    private readonly _dart_encodeErrorEnvelope: (props: {
        details?: Object | undefined;
        message?: string | undefined;
        code: string;
    }) => IByteData = undefined as any;
    private readonly _dart_decodeEnvelope: (envelope: IByteData) => any =
        undefined as any;
    public encodeMethodCall(methodCall: IMethodCall): IByteData {
        return this._dart_encodeMethodCall(methodCall);
    }
    public decodeMethodCall(methodCall?: IByteData | undefined): IMethodCall {
        return this._dart_decodeMethodCall(methodCall);
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
    public decodeEnvelope(envelope: IByteData): any {
        return this._dart_decodeEnvelope(envelope);
    }
}
