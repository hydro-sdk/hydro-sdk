import { IByteData } from "../../dart/typed_data/byteData";
export interface IMessageCodec<T> {
    encodeMessage: (message: T) => IByteData | undefined;
    decodeMessage: (message?: IByteData | undefined) => T | undefined;
}
