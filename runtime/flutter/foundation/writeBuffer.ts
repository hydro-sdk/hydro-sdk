import { IByteData } from "../../dart/typed_data/byteData";
import { IEndian } from "../../dart/typed_data/endian";
import { IFloat32List } from "../../dart/typed_data/float32List";
import { IFloat64List } from "../../dart/typed_data/float64List";
import { IInt32List } from "../../dart/typed_data/int32List";
import { IInt64List } from "../../dart/typed_data/int64List";
import { IUint8List } from "../../dart/typed_data/uint8List";
declare const flutter: {
    foundation: {
        writeBuffer: (this: void, writeBuffer: IWriteBuffer) => IWriteBuffer;
    };
};
export interface IWriteBuffer {
    putUint8: (byte: number) => void;
    putUint16: (
        value: number,
        props?: { endian?: IEndian | undefined }
    ) => void;
    putUint32: (
        value: number,
        props?: { endian?: IEndian | undefined }
    ) => void;
    putInt32: (value: number, props?: { endian?: IEndian | undefined }) => void;
    putInt64: (value: number, props?: { endian?: IEndian | undefined }) => void;
    putFloat64: (
        value: number,
        props?: { endian?: IEndian | undefined }
    ) => void;
    putUint8List: (list: IUint8List) => void;
    putInt32List: (list: IInt32List) => void;
    putInt64List: (list: IInt64List) => void;
    putFloat32List: (list: IFloat32List) => void;
    putFloat64List: (list: IFloat64List) => void;
    done: () => IByteData;
}
export class WriteBuffer {
    public constructor() {
        flutter.foundation.writeBuffer(this);
    }
    private readonly _dart_putUint8: (byte: number) => void = undefined as any;
    private readonly _dart_putUint16: (
        value: number,
        props?: { endian?: IEndian | undefined }
    ) => void = undefined as any;
    private readonly _dart_putUint32: (
        value: number,
        props?: { endian?: IEndian | undefined }
    ) => void = undefined as any;
    private readonly _dart_putInt32: (
        value: number,
        props?: { endian?: IEndian | undefined }
    ) => void = undefined as any;
    private readonly _dart_putInt64: (
        value: number,
        props?: { endian?: IEndian | undefined }
    ) => void = undefined as any;
    private readonly _dart_putFloat64: (
        value: number,
        props?: { endian?: IEndian | undefined }
    ) => void = undefined as any;
    private readonly _dart_putUint8List: (list: IUint8List) => void =
        undefined as any;
    private readonly _dart_putInt32List: (list: IInt32List) => void =
        undefined as any;
    private readonly _dart_putInt64List: (list: IInt64List) => void =
        undefined as any;
    private readonly _dart_putFloat32List: (list: IFloat32List) => void =
        undefined as any;
    private readonly _dart_putFloat64List: (list: IFloat64List) => void =
        undefined as any;
    private readonly _dart_done: () => IByteData = undefined as any;
    public putUint8(byte: number): void {
        return this._dart_putUint8(byte);
    }
    public putUint16(
        value: number,
        props?: { endian?: IEndian | undefined }
    ): void {
        return this._dart_putUint16(value, props);
    }
    public putUint32(
        value: number,
        props?: { endian?: IEndian | undefined }
    ): void {
        return this._dart_putUint32(value, props);
    }
    public putInt32(
        value: number,
        props?: { endian?: IEndian | undefined }
    ): void {
        return this._dart_putInt32(value, props);
    }
    public putInt64(
        value: number,
        props?: { endian?: IEndian | undefined }
    ): void {
        return this._dart_putInt64(value, props);
    }
    public putFloat64(
        value: number,
        props?: { endian?: IEndian | undefined }
    ): void {
        return this._dart_putFloat64(value, props);
    }
    public putUint8List(list: IUint8List): void {
        return this._dart_putUint8List(list);
    }
    public putInt32List(list: IInt32List): void {
        return this._dart_putInt32List(list);
    }
    public putInt64List(list: IInt64List): void {
        return this._dart_putInt64List(list);
    }
    public putFloat32List(list: IFloat32List): void {
        return this._dart_putFloat32List(list);
    }
    public putFloat64List(list: IFloat64List): void {
        return this._dart_putFloat64List(list);
    }
    public done(): IByteData {
        return this._dart_done();
    }
}
