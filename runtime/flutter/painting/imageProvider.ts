import { IFuture } from "../../dart/async/future";
import { IStackTrace } from "../../dart/core/stackTrace";
import { IUint8List } from "../../dart/typed_data/uint8List";
import { ICodec } from "../../dart/ui/codec";
import { IImageCache } from "./imageCache";
import { IImageCacheStatus } from "./imageCacheStatus";
import { IImageConfiguration, ImageConfiguration } from "./imageConfiguration";
import { IImageStream } from "./imageStream";
import { IImageStreamCompleter } from "./imageStreamCompleter";
declare const flutter: {
    painting: {
        imageProvider: <T>(
            this: void,
            imageProvider: IImageProvider<T>
        ) => IImageProvider<T>;
    };
};
export interface IImageProvider<T> {
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
        key: T,
        handleError: (
            exception: Object,
            stackTrace?: IStackTrace | undefined
        ) => void
    ) => void;
    evict: (props: {
        cache?: IImageCache | undefined;
        configuration: IImageConfiguration;
    }) => IFuture<boolean>;
    obtainKey: (configuration: IImageConfiguration) => IFuture<T>;
    toString: () => string;
}
export class ImageProvider<T> {
    public constructor() {
        flutter.painting.imageProvider(this);
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
        key: T,
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
    ) => IFuture<T> = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
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
        key: T,
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
    public obtainKey(configuration: IImageConfiguration): IFuture<T> {
        return this._dart_obtainKey(configuration);
    }
    public toString(): string {
        return this._dart_toString();
    }
}
const evictDefaultProps = {
    configuration: ImageConfiguration.empty,
};
