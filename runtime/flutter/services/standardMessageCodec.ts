import { IByteData } from "../../dart/typed_data/byteData";
import { IReadBuffer } from "../foundation/readBuffer";
import { IWriteBuffer } from "../foundation/writeBuffer";
import { IMessageCodec } from "./messageCodec";
declare const flutter: {
    services: {
        standardMessageCodec: (
            this: void,
            standardMessageCodec: IStandardMessageCodec
        ) => IStandardMessageCodec;
    };
};
export interface IStandardMessageCodec {
    encodeMessage: (message?: Object | undefined) => IByteData | undefined;
    decodeMessage: (message?: IByteData | undefined) => any;
    writeValue: (buffer: IWriteBuffer, value?: Object | undefined) => void;
    readValue: (buffer: IReadBuffer) => Object | undefined;
    readValueOfType: (type: number, buffer: IReadBuffer) => Object | undefined;
    writeSize: (buffer: IWriteBuffer, value: number) => void;
    readSize: (buffer: IReadBuffer) => number;
}
export class StandardMessageCodec implements IMessageCodec<?Object> {
    public static _valueNull = 0;
    public static _valueTrue = 1;
    public static _valueFalse = 2;
    public static _valueInt32 = 3;
    public static _valueInt64 = 4;
    public static _valueLargeInt = 5;
    public static _valueFloat64 = 6;
    public static _valueString = 7;
    public static _valueUint8List = 8;
    public static _valueInt32List = 9;
    public static _valueInt64List = 10;
    public static _valueFloat64List = 11;
    public static _valueList = 12;
    public static _valueMap = 13;
    public static _valueFloat32List = 14;
    public constructor() {
        flutter.services.standardMessageCodec(this);
    }
    private readonly _dart_encodeMessage: (
        message?: Object | undefined
    ) => IByteData | undefined = undefined as any;
    private readonly _dart_decodeMessage: (
        message?: IByteData | undefined
    ) => any = undefined as any;
    private readonly _dart_writeValue: (
        buffer: IWriteBuffer,
        value?: Object | undefined
    ) => void = undefined as any;
    private readonly _dart_readValue: (
        buffer: IReadBuffer
    ) => Object | undefined = undefined as any;
    private readonly _dart_readValueOfType: (
        type: number,
        buffer: IReadBuffer
    ) => Object | undefined = undefined as any;
    private readonly _dart_writeSize: (
        buffer: IWriteBuffer,
        value: number
    ) => void = undefined as any;
    private readonly _dart_readSize: (buffer: IReadBuffer) => number =
        undefined as any;
    public encodeMessage(message?: Object | undefined): IByteData | undefined {
        return this._dart_encodeMessage(message);
    }
    public decodeMessage(message?: IByteData | undefined): any {
        return this._dart_decodeMessage(message);
    }
    public writeValue(buffer: IWriteBuffer, value?: Object | undefined): void {
        return this._dart_writeValue(buffer, value);
    }
    public readValue(buffer: IReadBuffer): Object | undefined {
        return this._dart_readValue(buffer);
    }
    public readValueOfType(
        type: number,
        buffer: IReadBuffer
    ): Object | undefined {
        return this._dart_readValueOfType(type, buffer);
    }
    public writeSize(buffer: IWriteBuffer, value: number): void {
        return this._dart_writeSize(buffer, value);
    }
    public readSize(buffer: IReadBuffer): number {
        return this._dart_readSize(buffer);
    }
}
