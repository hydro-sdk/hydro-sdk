import { IFuture } from "../../dart/async/future";
import { IBinaryMessenger } from "./binaryMessenger";
import { IMessageCodec } from "./messageCodec";
declare const flutter: {
    services: {
        basicMessageChannel: <T>(
            this: void,
            basicMessageChannel: IBasicMessageChannel<T>,
            name: string,
            codec: IMessageCodec<T>,
            props?: { binaryMessenger?: IBinaryMessenger | undefined }
        ) => IBasicMessageChannel<T>;
    };
};
export interface IBasicMessageChannel<T> {
    name: string;
    codec: IMessageCodec<T>;
    getBinaryMessenger: () => IBinaryMessenger;
    send: (message: T) => IFuture<T | undefined>;
    setMessageHandler: (
        handler?: (message?: T | undefined) => IFuture<T>
    ) => void;
}
export class BasicMessageChannel<T> {
    public readonly name: string = undefined as any;
    public readonly codec: IMessageCodec<T> = undefined as any;
    public constructor(
        name: string,
        codec: IMessageCodec<T>,
        props?: { binaryMessenger?: IBinaryMessenger | undefined }
    ) {
        flutter.services.basicMessageChannel(this, name, codec, props);
    }
    private readonly _dart_getBinaryMessenger: () => IBinaryMessenger =
        undefined as any;
    private readonly _dart_send: (message: T) => IFuture<T | undefined> =
        undefined as any;
    private readonly _dart_setMessageHandler: (
        handler?: (message?: T | undefined) => IFuture<T>
    ) => void = undefined as any;
    public getBinaryMessenger(): IBinaryMessenger {
        return this._dart_getBinaryMessenger();
    }
    public send(message: T): IFuture<T | undefined> {
        return this._dart_send(message);
    }
    public setMessageHandler(
        handler?: (message?: T | undefined) => IFuture<T>
    ): void {
        return this._dart_setMessageHandler(handler);
    }
}
