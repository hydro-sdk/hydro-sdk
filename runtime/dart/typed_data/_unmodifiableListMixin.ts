import { IByteBuffer } from "./byteBuffer";
declare const dart: {
    typed_data: {};
};
export interface I_UnmodifiableListMixin<N, L, TD> {
    getLength: () => number;
    getElementSizeInBytes: () => number;
    getOffsetInBytes: () => number;
    getLengthInBytes: () => number;
    getBuffer: () => IByteBuffer;
    sublist: (start: number, end?: number | undefined) => L;
}
export class _UnmodifiableListMixin<N, L, TD> {
    private readonly _dart_getLength: () => number = undefined as any;
    private readonly _dart_getElementSizeInBytes: () => number =
        undefined as any;
    private readonly _dart_getOffsetInBytes: () => number = undefined as any;
    private readonly _dart_getLengthInBytes: () => number = undefined as any;
    private readonly _dart_getBuffer: () => IByteBuffer = undefined as any;
    private readonly _dart_sublist: (
        start: number,
        end?: number | undefined
    ) => L = undefined as any;
    public getLength(): number {
        return this._dart_getLength();
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
    public sublist(start: number, end?: number | undefined): L {
        return this._dart_sublist(start, end);
    }
}
