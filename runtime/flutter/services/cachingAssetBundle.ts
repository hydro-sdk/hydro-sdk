import { IFuture } from "../../dart/async/future";
import { IByteData } from "../../dart/typed_data/byteData";
import { IAssetBundle } from "./assetBundle";
declare const flutter: {
    services: {
        cachingAssetBundle: (
            this: void,
            cachingAssetBundle: ICachingAssetBundle
        ) => ICachingAssetBundle;
    };
};
export interface ICachingAssetBundle {
    loadString: (key: string, props: { cache: boolean }) => IFuture<string>;
    loadStructuredData: <T>(
        key: string,
        parser: (value: string) => IFuture<T>
    ) => IFuture<T>;
    evict: (key: string) => void;
    clear: () => void;
    load: (key: string) => IFuture<IByteData>;
    toString: () => string;
    getHashCode: () => number;
}
export class CachingAssetBundle implements IAssetBundle {
    public constructor() {
        flutter.services.cachingAssetBundle(this);
    }
    private readonly _dart_loadString: (
        key: string,
        props: { cache: boolean }
    ) => IFuture<string> = undefined as any;
    private readonly _dart_loadStructuredData: <T>(
        key: string,
        parser: (value: string) => IFuture<T>
    ) => IFuture<T> = undefined as any;
    private readonly _dart_evict: (key: string) => void = undefined as any;
    private readonly _dart_clear: () => void = undefined as any;
    private readonly _dart_load: (key: string) => IFuture<IByteData> =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public loadString(
        key: string,
        props: { cache?: boolean }
    ): IFuture<string> {
        return this._dart_loadString(key, {
            ...loadStringDefaultProps,
            ...props,
        });
    }
    public loadStructuredData<T>(
        key: string,
        parser: (value: string) => IFuture<T>
    ): IFuture<T> {
        return this._dart_loadStructuredData(key, parser);
    }
    public evict(key: string): void {
        return this._dart_evict(key);
    }
    public clear(): void {
        return this._dart_clear();
    }
    public load(key: string): IFuture<IByteData> {
        return this._dart_load(key);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const loadStringDefaultProps = {
    cache: true,
};
