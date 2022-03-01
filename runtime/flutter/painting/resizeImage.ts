
import { IImageProvider } from "./imageProvider";
import { IResizeImageKey } from "./resizeImageKey";
import { IImageConfiguration,ImageConfiguration } from "./imageConfiguration";
import { IImageStream } from "./imageStream";
import { IStackTrace } from "../../dart/core/stackTrace";
import { IFuture } from "../../dart/async/future";
import { IImageCacheStatus } from "./imageCacheStatus";
import { IImageCache } from "./imageCache";
import { IUint8List } from "../../dart/typed_data/uint8List";
import { ICodec } from "../../dart/ui/codec";
import { IImageStreamCompleter } from "./imageStreamCompleter";
declare const flutter: {
painting: {
resizeImage: (this: void, resizeImage: IResizeImage, imageProvider: IImageProvider<Object>, props : {  allowUpscaling : boolean, height? : number | undefined, width? : number | undefined,}) => IResizeImage;
resizeImageResizeIfNeeded: (cacheWidth: number | undefined, cacheHeight: number | undefined, provider: IImageProvider<Object>) => IImageProvider<Object>
}
};
export interface IResizeImage


{
imageProvider: IImageProvider<Object>;
width: number | undefined;
height: number | undefined;
allowUpscaling: boolean;
obtainKey: (configuration: IImageConfiguration) => IFuture<IResizeImageKey>;
resolve: (configuration: IImageConfiguration) => IImageStream;
createStream: (configuration: IImageConfiguration) => IImageStream;
obtainCacheStatus: ( props : {  handleError? : (exception: Object, stackTrace?: IStackTrace | undefined) => void | undefined, configuration : IImageConfiguration,}) => IFuture<IImageCacheStatus | undefined>;
resolveStreamForKey: (configuration: IImageConfiguration, stream: IImageStream, key: IResizeImageKey, handleError : (exception: Object, stackTrace?: IStackTrace | undefined) => void) => void;
evict: ( props : {  cache? : IImageCache | undefined, configuration : IImageConfiguration,}) => IFuture<boolean>;
toString: () => string;
getHashCode: () => number;
}export class ResizeImage

 implements IImageProvider<IResizeImageKey>
{    public readonly imageProvider: IImageProvider<Object> = undefined as any;
    public readonly width: number | undefined = undefined as any;
    public readonly height: number | undefined = undefined as any;
    public readonly allowUpscaling: boolean = undefined as any;
public constructor(imageProvider: IImageProvider<Object>, props : {  allowUpscaling? : boolean, height? : number | undefined, width? : number | undefined,}){
flutter.painting.resizeImage(this, imageProvider, {
...resizeImageDefaultProps,
...props
});}
public static resizeIfNeeded(cacheWidth: number | undefined, cacheHeight: number | undefined, provider: IImageProvider<Object>) : IImageProvider<Object>{
return flutter.painting.resizeImageResizeIfNeeded(cacheWidth, cacheHeight, provider);
}    private readonly _dart_obtainKey: (configuration: IImageConfiguration) => IFuture<IResizeImageKey> = undefined as any;
    private readonly _dart_resolve: (configuration: IImageConfiguration) => IImageStream = undefined as any;
    private readonly _dart_createStream: (configuration: IImageConfiguration) => IImageStream = undefined as any;
    private readonly _dart_obtainCacheStatus: ( props : {  handleError? : (exception: Object, stackTrace?: IStackTrace | undefined) => void | undefined, configuration : IImageConfiguration,}) => IFuture<IImageCacheStatus | undefined> = undefined as any;
    private readonly _dart_resolveStreamForKey: (configuration: IImageConfiguration, stream: IImageStream, key: IResizeImageKey, handleError : (exception: Object, stackTrace?: IStackTrace | undefined) => void) => void = undefined as any;
    private readonly _dart_evict: ( props : {  cache? : IImageCache | undefined, configuration : IImageConfiguration,}) => IFuture<boolean> = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public obtainKey(configuration: IImageConfiguration) : IFuture<IResizeImageKey> {
    return this._dart_obtainKey(configuration);
}
public resolve(configuration: IImageConfiguration) : IImageStream {
    return this._dart_resolve(configuration);
}
public createStream(configuration: IImageConfiguration) : IImageStream {
    return this._dart_createStream(configuration);
}
public obtainCacheStatus( props : {  handleError? : (exception: Object, stackTrace?: IStackTrace | undefined) => void | undefined, configuration : IImageConfiguration,}) : IFuture<IImageCacheStatus | undefined> {
    return this._dart_obtainCacheStatus(props);
}
public resolveStreamForKey(configuration: IImageConfiguration, stream: IImageStream, key: IResizeImageKey, handleError : (exception: Object, stackTrace?: IStackTrace | undefined) => void) : void {
    return this._dart_resolveStreamForKey(configuration, stream, key, handleError);
}
public evict( props : {  cache? : IImageCache | undefined, configuration? : IImageConfiguration,}) : IFuture<boolean> {
    return this._dart_evict({
...evictDefaultProps,
...props
});
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
const resizeImageDefaultProps = {
    allowUpscaling: false,
};
const evictDefaultProps = {
    configuration: ImageConfiguration.empty,
};
