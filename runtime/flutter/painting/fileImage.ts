import { IFuture } from "../../dart/async/future";
import { IStackTrace } from "../../dart/core/stackTrace";
import { IFile } from "../../dart/io/file";
import { IUint8List } from "../../dart/typed_data/uint8List";
import { ICodec } from "../../dart/ui/codec";
import { IImageCache } from "./imageCache";
import { IImageCacheStatus } from "./imageCacheStatus";
import { IImageConfiguration, ImageConfiguration } from "./imageConfiguration";
import { IImageProvider } from "./imageProvider";
import { IImageStream } from "./imageStream";
import { IImageStreamCompleter } from "./imageStreamCompleter";
declare const flutter: {
    painting: {
        fileImage: (
            this: void,
            fileImage: IFileImage,
            file: IFile,
            props: { scale: number }
        ) => IFileImage;
    };
};
export interface IFileImage {
    file: IFile;
    scale: number;
    obtainKey: (configuration: IImageConfiguration) => IFuture<IFileImage>;
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
        key: IFileImage,
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
export class FileImage implements IImageProvider<IFileImage> {
    public readonly file: IFile = undefined as any;
    public readonly scale: number = undefined as any;
    public constructor(file: IFile, props: { scale?: number }) {
        flutter.painting.fileImage(this, file, {
            ...fileImageDefaultProps,
            ...props,
        });
    }
    private readonly _dart_obtainKey: (
        configuration: IImageConfiguration
    ) => IFuture<IFileImage> = undefined as any;
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
        key: IFileImage,
        handleError: (
            exception: Object,
            stackTrace?: IStackTrace | undefined
        ) => void
    ) => void = undefined as any;
    private readonly _dart_evict: (props: {
        cache?: IImageCache | undefined;
        configuration: IImageConfiguration;
    }) => IFuture<boolean> = undefined as any;
    public obtainKey(configuration: IImageConfiguration): IFuture<IFileImage> {
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
        key: IFileImage,
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
const fileImageDefaultProps = {
    scale: 1.0,
};
const evictDefaultProps = {
    configuration: ImageConfiguration.empty,
};
