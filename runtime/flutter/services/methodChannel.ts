import { IFuture } from "../../dart/async/future";
import { IList } from "../../dart/core/list";
import { IMap } from "../../dart/core/map";
import { IBinaryMessenger } from "./binaryMessenger";
import { IMethodCall } from "./methodCall";
import { IMethodCodec } from "./methodCodec";
import { StandardMethodCodec } from "./standardMethodCodec";
declare const flutter: {
    services: {
        methodChannel: (
            this: void,
            methodChannel: IMethodChannel,
            name: string,
            codec: IMethodCodec,
            binaryMessenger?: IBinaryMessenger | undefined
        ) => IMethodChannel;
    };
};
export interface IMethodChannel {
    name: string;
    codec: IMethodCodec;
    getBinaryMessenger: () => IBinaryMessenger;
    invokeMethod: <T>(method: string, arguments: any) => IFuture<T | undefined>;
    invokeListMethod: <T>(
        method: string,
        arguments: any
    ) => IFuture<IList<T> | undefined>;
    invokeMapMethod: <K, V>(
        method: string,
        arguments: any
    ) => IFuture<IMap<K, V> | undefined>;
    setMethodCallHandler: (
        handler?: (call: IMethodCall) => IFuture<any>
    ) => void;
}
export class MethodChannel {
    public readonly name: string = undefined as any;
    public readonly codec: IMethodCodec = undefined as any;
    public constructor(
        name: string,
        codec: IMethodCodec = new StandardMethodCodec(),
        binaryMessenger?: IBinaryMessenger | undefined
    ) {
        flutter.services.methodChannel(this, name, codec, binaryMessenger);
    }
    private readonly _dart_getBinaryMessenger: () => IBinaryMessenger =
        undefined as any;
    private readonly _dart_invokeMethod: <T>(
        method: string,
        arguments: any
    ) => IFuture<T | undefined> = undefined as any;
    private readonly _dart_invokeListMethod: <T>(
        method: string,
        arguments: any
    ) => IFuture<IList<T> | undefined> = undefined as any;
    private readonly _dart_invokeMapMethod: <K, V>(
        method: string,
        arguments: any
    ) => IFuture<IMap<K, V> | undefined> = undefined as any;
    private readonly _dart_setMethodCallHandler: (
        handler?: (call: IMethodCall) => IFuture<any>
    ) => void = undefined as any;
    public getBinaryMessenger(): IBinaryMessenger {
        return this._dart_getBinaryMessenger();
    }
    public invokeMethod<T>(
        method: string,
        arguments: any
    ): IFuture<T | undefined> {
        return this._dart_invokeMethod(method, arguments);
    }
    public invokeListMethod<T>(
        method: string,
        arguments: any
    ): IFuture<IList<T> | undefined> {
        return this._dart_invokeListMethod(method, arguments);
    }
    public invokeMapMethod<K, V>(
        method: string,
        arguments: any
    ): IFuture<IMap<K, V> | undefined> {
        return this._dart_invokeMapMethod(method, arguments);
    }
    public setMethodCallHandler(
        handler?: (call: IMethodCall) => IFuture<any>
    ): void {
        return this._dart_setMethodCallHandler(handler);
    }
}
