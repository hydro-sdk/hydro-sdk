import { IFuture } from "../../dart/async/future";
import { IStackTrace } from "../../dart/core/stackTrace";
import { IUint8List } from "../../dart/typed_data/uint8List";
import { ICodec } from "../../dart/ui/codec";
import { IAssetBundleImageKey } from "./assetBundleImageKey";
import { IImageCache } from "./imageCache";
import { IImageCacheStatus } from "./imageCacheStatus";
import { IImageConfiguration, ImageConfiguration } from "./imageConfiguration";
import { IImageProvider } from "./imageProvider";
import { IImageStream } from "./imageStream";
import { IImageStreamCompleter } from "./imageStreamCompleter";
declare const flutter: {
    painting: {
        assetBundleImageProvider: (
            this: void,
            assetBundleImageProvider: IAssetBundleImageProvider
        ) => IAssetBundleImageProvider;
    };
};
export interface IAssetBundleImageProvider {
    resolve: (configuration: IImageConfiguration) => IImageStream;
    createStream: (configuration: IImageConfiguration) => IImageStream;
    obtainCacheStatus: (props: {
        handleError?: (
            exception: Object,
            stackTrace?: IStackTrace | undefined
        ) => void | undefined;
        configuration: IImageConfiguration;
    }) => IFuture<IImageCacheStatus | undefined>;
    resolveStreamForKey: (
        configuration: IImageConfiguration,
        stream: IImageStream,
        key: IAssetBundleImageKey,
        handleError: (
            exception: Object,
            stackTrace?: IStackTrace | undefined
        ) => void
    ) => void;
    evict: (props: {
        cache?: IImageCache | undefined;
        configuration: IImageConfiguration;
    }) => IFuture<boolean>;
    obtainKey: (
        configuration: IImageConfiguration
    ) => IFuture<IAssetBundleImageKey>;
    toString: () => string;
    getHashCode: () => number;
}
export class AssetBundleImageProvider
    implements IImageProvider<IAssetBundleImageKey>
{
    public constructor() {
        flutter.painting.assetBundleImageProvider(this);
    }
    private readonly _dart_resolve: (
        configuration: IImageConfiguration
    ) => IImageStream = undefined as any;
    private readonly _dart_createStream: (
        configuration: IImageConfiguration
    ) => IImageStream = undefined as any;
    private readonly _dart_obtainCacheStatus: (props: {
        handleError?: (
            exception: Object,
            stackTrace?: IStackTrace | undefined
        ) => void | undefined;
        configuration: IImageConfiguration;
    }) => IFuture<IImageCacheStatus | undefined> = undefined as any;
    private readonly _dart_resolveStreamForKey: (
        configuration: IImageConfiguration,
        stream: IImageStream,
        key: IAssetBundleImageKey,
        handleError: (
            exception: Object,
            stackTrace?: IStackTrace | undefined
        ) => void
    ) => void = undefined as any;
    private readonly _dart_evict: (props: {
        cache?: IImageCache | undefined;
        configuration: IImageConfiguration;
    }) => IFuture<boolean> = undefined as any;
    private readonly _dart_obtainKey: (
        configuration: IImageConfiguration
    ) => IFuture<IAssetBundleImageKey> = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public resolve(configuration: IImageConfiguration): IImageStream {
        return this._dart_resolve(configuration);
    }
    public createStream(configuration: IImageConfiguration): IImageStream {
        return this._dart_createStream(configuration);
    }
    public obtainCacheStatus(props: {
        handleError?: (
            exception: Object,
            stackTrace?: IStackTrace | undefined
        ) => void | undefined;
        configuration: IImageConfiguration;
    }): IFuture<IImageCacheStatus | undefined> {
        return this._dart_obtainCacheStatus(props);
    }
    public resolveStreamForKey(
        configuration: IImageConfiguration,
        stream: IImageStream,
        key: IAssetBundleImageKey,
        handleError: (
            exception: Object,
            stackTrace?: IStackTrace | undefined
        ) => void
    ): void {
        return this._dart_resolveStreamForKey(
            configuration,
            stream,
            key,
            handleError
        );
    }
    public evict(props: {
        cache?: IImageCache | undefined;
        configuration?: IImageConfiguration;
    }): IFuture<boolean> {
        return this._dart_evict({
            ...evictDefaultProps,
            ...props,
        });
    }
    public obtainKey(
        configuration: IImageConfiguration
    ): IFuture<IAssetBundleImageKey> {
        return this._dart_obtainKey(configuration);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const evictDefaultProps = {
    configuration: ImageConfiguration.empty,
};
