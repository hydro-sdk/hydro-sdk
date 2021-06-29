import { IByteData } from "../typed_data/byteData";
declare const dart: {
    ui: {
        _storedMessage: (
            this: void,
            _storedMessage: I_StoredMessage,
            data: IByteData | undefined,
            _callback: (data?: IByteData | undefined) => void
        ) => I_StoredMessage;
    };
};
export interface I_StoredMessage {
    data: IByteData | undefined;
    invoke: (dataArg?: IByteData | undefined) => void;
}
export class _StoredMessage {
    public readonly data: IByteData | undefined = undefined as any;
    public constructor(
        data: IByteData | undefined,
        _callback: (data?: IByteData | undefined) => void
    ) {
        dart.ui._storedMessage(this, data, _callback);
    }
    private readonly _dart_invoke: (dataArg?: IByteData | undefined) => void =
        undefined as any;
    public invoke(dataArg?: IByteData | undefined): void {
        return this._dart_invoke(dataArg);
    }
}
