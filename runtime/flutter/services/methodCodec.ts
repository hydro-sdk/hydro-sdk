import { IByteData } from "../../dart/typed_data/byteData";
import { IMethodCall } from "./methodCall";
export interface IMethodCodec {
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
