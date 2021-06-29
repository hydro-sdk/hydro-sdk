import { IFuture } from "../async/future";
import { IUint8List } from "../typed_data/uint8List";
declare const dart: {
    ui: {
        immutableBufferFromUint8List: (
            list: IUint8List
        ) => IFuture<IImmutableBuffer>;
    };
};
export interface IImmutableBuffer {
    length: number;
    dispose: () => void;
}
export class ImmutableBuffer {
    public readonly length: number = undefined as any;
    public static fromUint8List(list: IUint8List): IFuture<IImmutableBuffer> {
        return dart.ui.immutableBufferFromUint8List(list);
    }
    private readonly _dart_dispose: () => void = undefined as any;
    public dispose(): void {
        return this._dart_dispose();
    }
}
