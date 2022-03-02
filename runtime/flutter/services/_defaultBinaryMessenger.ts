import { IFuture } from "../../dart/async/future";
import { IByteData } from "../../dart/typed_data/byteData";
import { IBinaryMessenger } from "./binaryMessenger";
export interface I_DefaultBinaryMessenger extends IBinaryMessenger {
    handlePlatformMessage: (
        channel: string,
        message?: IByteData | undefined,
        callback?: (data?: IByteData | undefined) => void
    ) => IFuture<void>;
    send: (
        channel: string,
        message?: IByteData | undefined
    ) => IFuture<IByteData | undefined>;
    setMessageHandler: (
        channel: string,
        handler?: (
            message?: IByteData | undefined
        ) => IFuture<IByteData | undefined> | undefined
    ) => void;
}
