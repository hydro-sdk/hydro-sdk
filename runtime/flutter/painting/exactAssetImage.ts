import { IFuture } from "../../dart/async/future";
import { IStackTrace } from "../../dart/core/stackTrace";
import { IUint8List } from "../../dart/typed_data/uint8List";
import { ICodec } from "../../dart/ui/codec";
import { IAssetBundle } from "../services/assetBundle";
import { IAssetBundleImageKey } from "./assetBundleImageKey";
import { IAssetBundleImageProvider } from "./assetBundleImageProvider";
import { IImageCache } from "./imageCache";
import { IImageCacheStatus } from "./imageCacheStatus";
import { IImageConfiguration, ImageConfiguration } from "./imageConfiguration";
import { IImageStream } from "./imageStream";
import { IImageStreamCompleter } from "./imageStreamCompleter";
declare const flutter: {
    painting: {
        exactAssetImage: (
            this: void,
            exactAssetImage: IExactAssetImage,
            assetName: string,
            props: {
                bundle?: IAssetBundle | undefined;
                package?: string | undefined;
                scale: number;
            }
        ) => IExactAssetImage;
    };
};
export interface IExactAssetImage {
    assetName: string;
    scale: number;
    bundle: IAssetBundle | undefined;
    package: string | undefined;
    getKeyName: () => string;
    obtainKey: (
        configuration: IImageConfiguration
    ) => IFuture<IAssetBundleImageKey>;
    getHashCode: () => number;
    toString: () => string;
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
}
export class ExactAssetImage implements IAssetBundleImageProvider {
    public readonly assetName: string = undefined as any;
    public readonly scale: number = undefined as any;
    public readonly bundle: IAssetBundle | undefined = undefined as any;
    public readonly package: string | undefined = undefined as any;
    public constructor(
        assetName: string,
        props: {
            bundle?: IAssetBundle | undefined;
            package?: string | undefined;
            scale?: number;
        }
    ) {
        flutter.painting.exactAssetImage(this, assetName, {
            ...exactAssetImageDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getKeyName: () => string = undefined as any;
    private readonly _dart_obtainKey: (
        configuration: IImageConfiguration
    ) => IFuture<IAssetBundleImageKey> = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
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
    public getKeyName(): string {
        return this._dart_getKeyName();
    }
    public obtainKey(
        configuration: IImageConfiguration
    ): IFuture<IAssetBundleImageKey> {
        return this._dart_obtainKey(configuration);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
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
}
const exactAssetImageDefaultProps = {
    scale: 1.0,
};
const evictDefaultProps = {
    configuration: ImageConfiguration.empty,
};
