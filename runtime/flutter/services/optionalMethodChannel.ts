import { IFuture } from "../../dart/async/future";
import { IList } from "../../dart/core/list";
import { IMap } from "../../dart/core/map";
import { IBinaryMessenger } from "./binaryMessenger";
import { IMethodCall } from "./methodCall";
import { IMethodChannel } from "./methodChannel";
import { IMethodCodec } from "./methodCodec";
import { StandardMethodCodec } from "./standardMethodCodec";
declare const flutter: {
    services: {
        optionalMethodChannel: (
            this: void,
            optionalMethodChannel: IOptionalMethodChannel,
            name: string,
            codec: IMethodCodec,
            binaryMessenger?: IBinaryMessenger | undefined
        ) => IOptionalMethodChannel;
    };
};
export interface IOptionalMethodChannel {
    name: string;
    codec: IMethodCodec;
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
    getBinaryMessenger: () => IBinaryMessenger;
    toString: () => string;
    getHashCode: () => number;
}
export class OptionalMethodChannel implements IMethodChannel {
    public readonly name: string = undefined as any;
    public readonly codec: IMethodCodec = undefined as any;
    public constructor(
        name: string,
        codec: IMethodCodec = new StandardMethodCodec(),
        binaryMessenger?: IBinaryMessenger | undefined
    ) {
        flutter.services.optionalMethodChannel(
            this,
            name,
            codec,
            binaryMessenger
        );
    }
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
    private readonly _dart_getBinaryMessenger: () => IBinaryMessenger =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
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
    public getBinaryMessenger(): IBinaryMessenger {
        return this._dart_getBinaryMessenger();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
