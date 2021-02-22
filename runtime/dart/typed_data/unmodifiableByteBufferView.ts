import { IByteBuffer } from "./byteBuffer";
import { IByteData } from "./byteData";
import { IFloat32List } from "./float32List";
import { IFloat32x4List } from "./float32x4List";
import { IFloat64List } from "./float64List";
import { IFloat64x2List } from "./float64x2List";
import { IInt16List } from "./int16List";
import { IInt32List } from "./int32List";
import { IInt32x4List } from "./int32x4List";
import { IInt64List } from "./int64List";
import { IInt8List } from "./int8List";
import { IUint16List } from "./uint16List";
import { IUint32List } from "./uint32List";
import { IUint64List } from "./uint64List";
import { IUint8ClampedList } from "./uint8ClampedList";
import { IUint8List } from "./uint8List";
declare const dart: {
    typed_data: {
        unmodifiableByteBufferView: (
            this: void,
            unmodifiableByteBufferView: IUnmodifiableByteBufferView,
            data: IByteBuffer
        ) => IUnmodifiableByteBufferView;
    };
};
export interface IUnmodifiableByteBufferView {
    getLengthInBytes: () => number;
    asUint8List: (
        offsetInBytes: number,
        length?: number | undefined
    ) => IUint8List;
    asInt8List: (
        offsetInBytes: number,
        length?: number | undefined
    ) => IInt8List;
    asUint8ClampedList: (
        offsetInBytes: number,
        length?: number | undefined
    ) => IUint8ClampedList;
    asUint16List: (
        offsetInBytes: number,
        length?: number | undefined
    ) => IUint16List;
    asInt16List: (
        offsetInBytes: number,
        length?: number | undefined
    ) => IInt16List;
    asUint32List: (
        offsetInBytes: number,
        length?: number | undefined
    ) => IUint32List;
    asInt32List: (
        offsetInBytes: number,
        length?: number | undefined
    ) => IInt32List;
    asUint64List: (
        offsetInBytes: number,
        length?: number | undefined
    ) => IUint64List;
    asInt64List: (
        offsetInBytes: number,
        length?: number | undefined
    ) => IInt64List;
    asInt32x4List: (
        offsetInBytes: number,
        length?: number | undefined
    ) => IInt32x4List;
    asFloat32List: (
        offsetInBytes: number,
        length?: number | undefined
    ) => IFloat32List;
    asFloat64List: (
        offsetInBytes: number,
        length?: number | undefined
    ) => IFloat64List;
    asFloat32x4List: (
        offsetInBytes: number,
        length?: number | undefined
    ) => IFloat32x4List;
    asFloat64x2List: (
        offsetInBytes: number,
        length?: number | undefined
    ) => IFloat64x2List;
    asByteData: (
        offsetInBytes: number,
        length?: number | undefined
    ) => IByteData;
    toString: () => string;
    getHashCode: () => number;
}
export class UnmodifiableByteBufferView implements IByteBuffer {
    public constructor(data: IByteBuffer) {
        dart.typed_data.unmodifiableByteBufferView(this, data);
    }
    private readonly _dart_getLengthInBytes: () => number = undefined as any;
    private readonly _dart_asUint8List: (
        offsetInBytes: number,
        length?: number | undefined
    ) => IUint8List = undefined as any;
    private readonly _dart_asInt8List: (
        offsetInBytes: number,
        length?: number | undefined
    ) => IInt8List = undefined as any;
    private readonly _dart_asUint8ClampedList: (
        offsetInBytes: number,
        length?: number | undefined
    ) => IUint8ClampedList = undefined as any;
    private readonly _dart_asUint16List: (
        offsetInBytes: number,
        length?: number | undefined
    ) => IUint16List = undefined as any;
    private readonly _dart_asInt16List: (
        offsetInBytes: number,
        length?: number | undefined
    ) => IInt16List = undefined as any;
    private readonly _dart_asUint32List: (
        offsetInBytes: number,
        length?: number | undefined
    ) => IUint32List = undefined as any;
    private readonly _dart_asInt32List: (
        offsetInBytes: number,
        length?: number | undefined
    ) => IInt32List = undefined as any;
    private readonly _dart_asUint64List: (
        offsetInBytes: number,
        length?: number | undefined
    ) => IUint64List = undefined as any;
    private readonly _dart_asInt64List: (
        offsetInBytes: number,
        length?: number | undefined
    ) => IInt64List = undefined as any;
    private readonly _dart_asInt32x4List: (
        offsetInBytes: number,
        length?: number | undefined
    ) => IInt32x4List = undefined as any;
    private readonly _dart_asFloat32List: (
        offsetInBytes: number,
        length?: number | undefined
    ) => IFloat32List = undefined as any;
    private readonly _dart_asFloat64List: (
        offsetInBytes: number,
        length?: number | undefined
    ) => IFloat64List = undefined as any;
    private readonly _dart_asFloat32x4List: (
        offsetInBytes: number,
        length?: number | undefined
    ) => IFloat32x4List = undefined as any;
    private readonly _dart_asFloat64x2List: (
        offsetInBytes: number,
        length?: number | undefined
    ) => IFloat64x2List = undefined as any;
    private readonly _dart_asByteData: (
        offsetInBytes: number,
        length?: number | undefined
    ) => IByteData = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getLengthInBytes(): number {
        return this._dart_getLengthInBytes();
    }
    public asUint8List(
        offsetInBytes: number = 0,
        length?: number | undefined
    ): IUint8List {
        return this._dart_asUint8List(offsetInBytes, length);
    }
    public asInt8List(
        offsetInBytes: number = 0,
        length?: number | undefined
    ): IInt8List {
        return this._dart_asInt8List(offsetInBytes, length);
    }
    public asUint8ClampedList(
        offsetInBytes: number = 0,
        length?: number | undefined
    ): IUint8ClampedList {
        return this._dart_asUint8ClampedList(offsetInBytes, length);
    }
    public asUint16List(
        offsetInBytes: number = 0,
        length?: number | undefined
    ): IUint16List {
        return this._dart_asUint16List(offsetInBytes, length);
    }
    public asInt16List(
        offsetInBytes: number = 0,
        length?: number | undefined
    ): IInt16List {
        return this._dart_asInt16List(offsetInBytes, length);
    }
    public asUint32List(
        offsetInBytes: number = 0,
        length?: number | undefined
    ): IUint32List {
        return this._dart_asUint32List(offsetInBytes, length);
    }
    public asInt32List(
        offsetInBytes: number = 0,
        length?: number | undefined
    ): IInt32List {
        return this._dart_asInt32List(offsetInBytes, length);
    }
    public asUint64List(
        offsetInBytes: number = 0,
        length?: number | undefined
    ): IUint64List {
        return this._dart_asUint64List(offsetInBytes, length);
    }
    public asInt64List(
        offsetInBytes: number = 0,
        length?: number | undefined
    ): IInt64List {
        return this._dart_asInt64List(offsetInBytes, length);
    }
    public asInt32x4List(
        offsetInBytes: number = 0,
        length?: number | undefined
    ): IInt32x4List {
        return this._dart_asInt32x4List(offsetInBytes, length);
    }
    public asFloat32List(
        offsetInBytes: number = 0,
        length?: number | undefined
    ): IFloat32List {
        return this._dart_asFloat32List(offsetInBytes, length);
    }
    public asFloat64List(
        offsetInBytes: number = 0,
        length?: number | undefined
    ): IFloat64List {
        return this._dart_asFloat64List(offsetInBytes, length);
    }
    public asFloat32x4List(
        offsetInBytes: number = 0,
        length?: number | undefined
    ): IFloat32x4List {
        return this._dart_asFloat32x4List(offsetInBytes, length);
    }
    public asFloat64x2List(
        offsetInBytes: number = 0,
        length?: number | undefined
    ): IFloat64x2List {
        return this._dart_asFloat64x2List(offsetInBytes, length);
    }
    public asByteData(
        offsetInBytes: number = 0,
        length?: number | undefined
    ): IByteData {
        return this._dart_asByteData(offsetInBytes, length);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
