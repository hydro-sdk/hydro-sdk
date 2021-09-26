import { IByteData } from "../typed_data/byteData";
declare const dart: {
    ui: {
        _channelCallbackRecord: (
            this: void,
            _channelCallbackRecord: I_ChannelCallbackRecord,
            _callback: (
                data: IByteData | undefined,
                callback: (data?: IByteData | undefined) => void
            ) => void
        ) => I_ChannelCallbackRecord;
    };
};
export interface I_ChannelCallbackRecord {
    invoke: (
        dataArg: IByteData | undefined,
        callbackArg: (data?: IByteData | undefined) => void
    ) => void;
}
export class _ChannelCallbackRecord {
    public constructor(
        _callback: (
            data: IByteData | undefined,
            callback: (data?: IByteData | undefined) => void
        ) => void
    ) {
        dart.ui._channelCallbackRecord(this, _callback);
    }
    private readonly _dart_invoke: (
        dataArg: IByteData | undefined,
        callbackArg: (data?: IByteData | undefined) => void
    ) => void = undefined as any;
    public invoke(
        dataArg: IByteData | undefined,
        callbackArg: (data?: IByteData | undefined) => void
    ): void {
        return this._dart_invoke(dataArg, callbackArg);
    }
}
