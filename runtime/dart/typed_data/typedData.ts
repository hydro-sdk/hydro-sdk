import { IByteBuffer } from "./byteBuffer";
export interface ITypedData {
    getElementSizeInBytes: () => number;
    getOffsetInBytes: () => number;
    getLengthInBytes: () => number;
    getBuffer: () => IByteBuffer;
}
