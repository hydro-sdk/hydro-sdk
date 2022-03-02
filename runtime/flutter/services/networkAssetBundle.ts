import { IFuture } from "../../dart/async/future";
import { IUri } from "../../dart/core/uri";
import { IByteData } from "../../dart/typed_data/byteData";
import { IAssetBundle } from "./assetBundle";
declare const flutter: {
    services: {
        networkAssetBundle: (
            this: void,
            networkAssetBundle: INetworkAssetBundle,
            baseUrl: IUri
        ) => INetworkAssetBundle;
    };
};
export interface INetworkAssetBundle {
    load: (key: string) => IFuture<IByteData>;
    loadStructuredData: <T>(
        key: string,
        parser: (value: string) => IFuture<T>
    ) => IFuture<T>;
    toString: () => string;
    loadString: (key: string, props: { cache: boolean }) => IFuture<string>;
    evict: (key: string) => void;
    clear: () => void;
    getHashCode: () => number;
}
export class NetworkAssetBundle implements IAssetBundle {
    public constructor(baseUrl: IUri) {
        flutter.services.networkAssetBundle(this, baseUrl);
    }
    private readonly _dart_load: (key: string) => IFuture<IByteData> =
        undefined as any;
    private readonly _dart_loadStructuredData: <T>(
        key: string,
        parser: (value: string) => IFuture<T>
    ) => IFuture<T> = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_loadString: (
        key: string,
        props: { cache: boolean }
    ) => IFuture<string> = undefined as any;
    private readonly _dart_evict: (key: string) => void = undefined as any;
    private readonly _dart_clear: () => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public load(key: string): IFuture<IByteData> {
        return this._dart_load(key);
    }
    public loadStructuredData<T>(
        key: string,
        parser: (value: string) => IFuture<T>
    ): IFuture<T> {
        return this._dart_loadStructuredData(key, parser);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public loadString(
        key: string,
        props: { cache?: boolean }
    ): IFuture<string> {
        return this._dart_loadString(key, {
            ...loadStringDefaultProps,
            ...props,
        });
    }
    public evict(key: string): void {
        return this._dart_evict(key);
    }
    public clear(): void {
        return this._dart_clear();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const loadStringDefaultProps = {
    cache: true,
};
