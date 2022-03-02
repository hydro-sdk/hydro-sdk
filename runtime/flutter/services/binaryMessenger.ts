import { IFuture } from "../../dart/async/future";
import { IByteData } from "../../dart/typed_data/byteData";
export interface IBinaryMessenger {
    handlePlatformMessage: (
        channel: string,
        data?: IByteData | undefined,
        callback?: (data?: IByteData | undefined) => void
    ) => IFuture<void>;
    send: (
        channel: string,
        message?: IByteData | undefined
    ) => IFuture<IByteData | undefined> | undefined;
    setMessageHandler: (
        channel: string,
        handler?: (
            message?: IByteData | undefined
        ) => IFuture<IByteData | undefined> | undefined
    ) => void;
}
