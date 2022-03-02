import { IStream } from "../../dart/async/stream";
import { IBinaryMessenger } from "./binaryMessenger";
import { IMethodCodec } from "./methodCodec";
import { StandardMethodCodec } from "./standardMethodCodec";
declare const flutter: {
    services: {
        eventChannel: (
            this: void,
            eventChannel: IEventChannel,
            name: string,
            codec: IMethodCodec,
            binaryMessenger?: IBinaryMessenger | undefined
        ) => IEventChannel;
    };
};
export interface IEventChannel {
    name: string;
    codec: IMethodCodec;
    getBinaryMessenger: () => IBinaryMessenger;
    receiveBroadcastStream: (arguments: any) => IStream<any>;
}
export class EventChannel {
    public readonly name: string = undefined as any;
    public readonly codec: IMethodCodec = undefined as any;
    public constructor(
        name: string,
        codec: IMethodCodec = new StandardMethodCodec(),
        binaryMessenger?: IBinaryMessenger | undefined
    ) {
        flutter.services.eventChannel(this, name, codec, binaryMessenger);
    }
    private readonly _dart_getBinaryMessenger: () => IBinaryMessenger =
        undefined as any;
    private readonly _dart_receiveBroadcastStream: (
        arguments: any
    ) => IStream<any> = undefined as any;
    public getBinaryMessenger(): IBinaryMessenger {
        return this._dart_getBinaryMessenger();
    }
    public receiveBroadcastStream(arguments: any): IStream<any> {
        return this._dart_receiveBroadcastStream(arguments);
    }
}
