import { IList } from "../core/list";
import { IByteBuffer } from "../typed_data/byteBuffer";
import { ITypedData } from "../typed_data/typedData";
declare const dart: {
    isolate: {
        transferableTypedDataFromList: (
            list: IList<ITypedData>
        ) => ITransferableTypedData;
    };
};
export interface ITransferableTypedData {
    materialize: () => IByteBuffer;
}
export class TransferableTypedData {
    public static fromList(list: IList<ITypedData>): ITransferableTypedData {
        return dart.isolate.transferableTypedDataFromList(list);
    }
    private readonly _dart_materialize: () => IByteBuffer = undefined as any;
    public materialize(): IByteBuffer {
        return this._dart_materialize();
    }
}
