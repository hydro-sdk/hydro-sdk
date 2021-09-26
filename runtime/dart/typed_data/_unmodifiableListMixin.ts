import { IByteBuffer } from "./byteBuffer";
export interface I_UnmodifiableListMixin<N, L, TD> {
    getLength: () => number;
    getElementSizeInBytes: () => number;
    getOffsetInBytes: () => number;
    getLengthInBytes: () => number;
    getBuffer: () => IByteBuffer;
    sublist: (start: number, end?: number | undefined) => L;
}
