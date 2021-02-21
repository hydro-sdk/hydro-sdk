import { IByteBuffer } from "./byteBuffer";
import { IByteData } from "./byteData";
import { Endian, IEndian } from "./endian";
declare const dart: {
    typed_data: {
        unmodifiableByteDataView: (
            this: void,
            unmodifiableByteDataView: IUnmodifiableByteDataView,
            data: IByteData
        ) => IUnmodifiableByteDataView;
    };
};
export interface IUnmodifiableByteDataView {
    getInt8: (byteOffset: number) => number;
    setInt8: (byteOffset: number, value: number) => void;
    getUint8: (byteOffset: number) => number;
    setUint8: (byteOffset: number, value: number) => void;
    getInt16: (byteOffset: number, endian: IEndian) => number;
    setInt16: (byteOffset: number, value: number, endian: IEndian) => void;
    getUint16: (byteOffset: number, endian: IEndian) => number;
    setUint16: (byteOffset: number, value: number, endian: IEndian) => void;
    getInt32: (byteOffset: number, endian: IEndian) => number;
    setInt32: (byteOffset: number, value: number, endian: IEndian) => void;
    getUint32: (byteOffset: number, endian: IEndian) => number;
    setUint32: (byteOffset: number, value: number, endian: IEndian) => void;
    getInt64: (byteOffset: number, endian: IEndian) => number;
    setInt64: (byteOffset: number, value: number, endian: IEndian) => void;
    getUint64: (byteOffset: number, endian: IEndian) => number;
    setUint64: (byteOffset: number, value: number, endian: IEndian) => void;
    getFloat32: (byteOffset: number, endian: IEndian) => number;
    setFloat32: (byteOffset: number, value: number, endian: IEndian) => void;
    getFloat64: (byteOffset: number, endian: IEndian) => number;
    setFloat64: (byteOffset: number, value: number, endian: IEndian) => void;
    getElementSizeInBytes: () => number;
    getOffsetInBytes: () => number;
    getLengthInBytes: () => number;
    getBuffer: () => IByteBuffer;
    toString: () => string;
    getHashCode: () => number;
}
export class UnmodifiableByteDataView implements IByteData {
    public constructor(data: IByteData) {
        dart.typed_data.unmodifiableByteDataView(this, data);
    }
    private readonly _dart_getInt8: (
        byteOffset: number
    ) => number = undefined as any;
    private readonly _dart_setInt8: (
        byteOffset: number,
        value: number
    ) => void = undefined as any;
    private readonly _dart_getUint8: (
        byteOffset: number
    ) => number = undefined as any;
    private readonly _dart_setUint8: (
        byteOffset: number,
        value: number
    ) => void = undefined as any;
    private readonly _dart_getInt16: (
        byteOffset: number,
        endian: IEndian
    ) => number = undefined as any;
    private readonly _dart_setInt16: (
        byteOffset: number,
        value: number,
        endian: IEndian
    ) => void = undefined as any;
    private readonly _dart_getUint16: (
        byteOffset: number,
        endian: IEndian
    ) => number = undefined as any;
    private readonly _dart_setUint16: (
        byteOffset: number,
        value: number,
        endian: IEndian
    ) => void = undefined as any;
    private readonly _dart_getInt32: (
        byteOffset: number,
        endian: IEndian
    ) => number = undefined as any;
    private readonly _dart_setInt32: (
        byteOffset: number,
        value: number,
        endian: IEndian
    ) => void = undefined as any;
    private readonly _dart_getUint32: (
        byteOffset: number,
        endian: IEndian
    ) => number = undefined as any;
    private readonly _dart_setUint32: (
        byteOffset: number,
        value: number,
        endian: IEndian
    ) => void = undefined as any;
    private readonly _dart_getInt64: (
        byteOffset: number,
        endian: IEndian
    ) => number = undefined as any;
    private readonly _dart_setInt64: (
        byteOffset: number,
        value: number,
        endian: IEndian
    ) => void = undefined as any;
    private readonly _dart_getUint64: (
        byteOffset: number,
        endian: IEndian
    ) => number = undefined as any;
    private readonly _dart_setUint64: (
        byteOffset: number,
        value: number,
        endian: IEndian
    ) => void = undefined as any;
    private readonly _dart_getFloat32: (
        byteOffset: number,
        endian: IEndian
    ) => number = undefined as any;
    private readonly _dart_setFloat32: (
        byteOffset: number,
        value: number,
        endian: IEndian
    ) => void = undefined as any;
    private readonly _dart_getFloat64: (
        byteOffset: number,
        endian: IEndian
    ) => number = undefined as any;
    private readonly _dart_setFloat64: (
        byteOffset: number,
        value: number,
        endian: IEndian
    ) => void = undefined as any;
    private readonly _dart_getElementSizeInBytes: () => number = undefined as any;
    private readonly _dart_getOffsetInBytes: () => number = undefined as any;
    private readonly _dart_getLengthInBytes: () => number = undefined as any;
    private readonly _dart_getBuffer: () => IByteBuffer = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getInt8(byteOffset: number): number {
        return this._dart_getInt8(byteOffset);
    }
    public setInt8(byteOffset: number, value: number): void {
        return this._dart_setInt8(byteOffset, value);
    }
    public getUint8(byteOffset: number): number {
        return this._dart_getUint8(byteOffset);
    }
    public setUint8(byteOffset: number, value: number): void {
        return this._dart_setUint8(byteOffset, value);
    }
    public getInt16(byteOffset: number, endian: IEndian = Endian.big): number {
        return this._dart_getInt16(byteOffset, endian);
    }
    public setInt16(
        byteOffset: number,
        value: number,
        endian: IEndian = Endian.big
    ): void {
        return this._dart_setInt16(byteOffset, value, endian);
    }
    public getUint16(byteOffset: number, endian: IEndian = Endian.big): number {
        return this._dart_getUint16(byteOffset, endian);
    }
    public setUint16(
        byteOffset: number,
        value: number,
        endian: IEndian = Endian.big
    ): void {
        return this._dart_setUint16(byteOffset, value, endian);
    }
    public getInt32(byteOffset: number, endian: IEndian = Endian.big): number {
        return this._dart_getInt32(byteOffset, endian);
    }
    public setInt32(
        byteOffset: number,
        value: number,
        endian: IEndian = Endian.big
    ): void {
        return this._dart_setInt32(byteOffset, value, endian);
    }
    public getUint32(byteOffset: number, endian: IEndian = Endian.big): number {
        return this._dart_getUint32(byteOffset, endian);
    }
    public setUint32(
        byteOffset: number,
        value: number,
        endian: IEndian = Endian.big
    ): void {
        return this._dart_setUint32(byteOffset, value, endian);
    }
    public getInt64(byteOffset: number, endian: IEndian = Endian.big): number {
        return this._dart_getInt64(byteOffset, endian);
    }
    public setInt64(
        byteOffset: number,
        value: number,
        endian: IEndian = Endian.big
    ): void {
        return this._dart_setInt64(byteOffset, value, endian);
    }
    public getUint64(byteOffset: number, endian: IEndian = Endian.big): number {
        return this._dart_getUint64(byteOffset, endian);
    }
    public setUint64(
        byteOffset: number,
        value: number,
        endian: IEndian = Endian.big
    ): void {
        return this._dart_setUint64(byteOffset, value, endian);
    }
    public getFloat32(
        byteOffset: number,
        endian: IEndian = Endian.big
    ): number {
        return this._dart_getFloat32(byteOffset, endian);
    }
    public setFloat32(
        byteOffset: number,
        value: number,
        endian: IEndian = Endian.big
    ): void {
        return this._dart_setFloat32(byteOffset, value, endian);
    }
    public getFloat64(
        byteOffset: number,
        endian: IEndian = Endian.big
    ): number {
        return this._dart_getFloat64(byteOffset, endian);
    }
    public setFloat64(
        byteOffset: number,
        value: number,
        endian: IEndian = Endian.big
    ): void {
        return this._dart_setFloat64(byteOffset, value, endian);
    }
    public getElementSizeInBytes(): number {
        return this._dart_getElementSizeInBytes();
    }
    public getOffsetInBytes(): number {
        return this._dart_getOffsetInBytes();
    }
    public getLengthInBytes(): number {
        return this._dart_getLengthInBytes();
    }
    public getBuffer(): IByteBuffer {
        return this._dart_getBuffer();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
