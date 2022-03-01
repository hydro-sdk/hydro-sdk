
import { IDisposableBuildContext } from "./disposableBuildContext";
import { IState } from "./state";
import { IStatefulWidget } from "./statefulWidget";
import { IImageProvider } from "../painting/imageProvider";
import { IImageConfiguration,ImageConfiguration } from "../painting/imageConfiguration";
import { IImageStream } from "../painting/imageStream";
import { IStackTrace } from "../../dart/core/stackTrace";
import { IFuture } from "../../dart/async/future";
import { IImageCacheStatus } from "../painting/imageCacheStatus";
import { IImageCache } from "../painting/imageCache";
import { IUint8List } from "../../dart/typed_data/uint8List";
import { ICodec } from "../../dart/ui/codec";
import { IImageStreamCompleter } from "../painting/imageStreamCompleter";
declare const flutter: {
widgets: {
scrollAwareImageProvider: <T>(this: void, scrollAwareImageProvider: IScrollAwareImageProvider<T>, props : {  context : IDisposableBuildContext<IState<IStatefulWidget>>, imageProvider : IImageProvider<T>,}) => IScrollAwareImageProvider<T>
}
};
export interface IScrollAwareImageProvider
<T>

{
context: IDisposableBuildContext<IState<IStatefulWidget>>;
imageProvider: IImageProvider<T>;
resolveStreamForKey: (configuration: IImageConfiguration, stream: IImageStream, key: T, handleError : (exception: Object, stackTrace?: IStackTrace | undefined) => void) => void;
obtainKey: (configuration: IImageConfiguration) => IFuture<T>;
resolve: (configuration: IImageConfiguration) => IImageStream;
createStream: (configuration: IImageConfiguration) => IImageStream;
obtainCacheStatus: ( props : {  handleError? : (exception: Object, stackTrace?: IStackTrace | undefined) => void | undefined, configuration : IImageConfiguration,}) => IFuture<IImageCacheStatus | undefined>;
evict: ( props : {  cache? : IImageCache | undefined, configuration : IImageConfiguration,}) => IFuture<boolean>;
toString: () => string;
getHashCode: () => number;
}export class ScrollAwareImageProvider
<T>
 implements IImageProvider<T>
{    public readonly context: IDisposableBuildContext<IState<IStatefulWidget>> = undefined as any;
    public readonly imageProvider: IImageProvider<T> = undefined as any;
public constructor( props : {  context : IDisposableBuildContext<IState<IStatefulWidget>>, imageProvider : IImageProvider<T>,}){
flutter.widgets.scrollAwareImageProvider(this, props);}
    private readonly _dart_resolveStreamForKey: (configuration: IImageConfiguration, stream: IImageStream, key: T, handleError : (exception: Object, stackTrace?: IStackTrace | undefined) => void) => void = undefined as any;
    private readonly _dart_obtainKey: (configuration: IImageConfiguration) => IFuture<T> = undefined as any;
    private readonly _dart_resolve: (configuration: IImageConfiguration) => IImageStream = undefined as any;
    private readonly _dart_createStream: (configuration: IImageConfiguration) => IImageStream = undefined as any;
    private readonly _dart_obtainCacheStatus: ( props : {  handleError? : (exception: Object, stackTrace?: IStackTrace | undefined) => void | undefined, configuration : IImageConfiguration,}) => IFuture<IImageCacheStatus | undefined> = undefined as any;
    private readonly _dart_evict: ( props : {  cache? : IImageCache | undefined, configuration : IImageConfiguration,}) => IFuture<boolean> = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public resolveStreamForKey(configuration: IImageConfiguration, stream: IImageStream, key: T, handleError : (exception: Object, stackTrace?: IStackTrace | undefined) => void) : void {
    return this._dart_resolveStreamForKey(configuration, stream, key, handleError);
}
public obtainKey(configuration: IImageConfiguration) : IFuture<T> {
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
const evictDefaultProps = {
    configuration: ImageConfiguration.empty,
};
