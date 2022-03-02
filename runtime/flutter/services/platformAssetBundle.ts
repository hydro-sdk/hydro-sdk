import { IFuture } from "../../dart/async/future";
import { IByteData } from "../../dart/typed_data/byteData";
import { ICachingAssetBundle } from "./cachingAssetBundle";
declare const flutter: {
    services: {
        platformAssetBundle: (
            this: void,
            platformAssetBundle: IPlatformAssetBundle
        ) => IPlatformAssetBundle;
    };
};
export interface IPlatformAssetBundle {
    load: (key: string) => IFuture<IByteData>;
    loadString: (key: string, props: { cache: boolean }) => IFuture<string>;
    loadStructuredData: <T>(
        key: string,
        parser: (value: string) => IFuture<T>
    ) => IFuture<T>;
    evict: (key: string) => void;
    clear: () => void;
    toString: () => string;
    getHashCode: () => number;
}
export class PlatformAssetBundle implements ICachingAssetBundle {
    public constructor() {
        flutter.services.platformAssetBundle(this);
    }
    private readonly _dart_load: (key: string) => IFuture<IByteData> =
        undefined as any;
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
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public load(key: string): IFuture<IByteData> {
        return this._dart_load(key);
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
