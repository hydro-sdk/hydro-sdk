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
export interface IByteBuffer {
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
}
