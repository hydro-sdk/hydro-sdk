
import { IStackTrace } from "../../dart/core/stackTrace";
import { IImageStreamCompleter } from "./imageStreamCompleter";
import { IImageCacheStatus } from "./imageCacheStatus";
declare const flutter: {
painting: {
imageCache: (this: void, imageCache: IImageCache) => IImageCache
}
};
export interface IImageCache


{
getMaximumSize: () => number;
setMaximumSize: (value: number) => void;
getCurrentSize: () => number;
getMaximumSizeBytes: () => number;
setMaximumSizeBytes: (value: number) => void;
getCurrentSizeBytes: () => number;
clear: () => void;
evict: (key: Object, props : {  includeLive : boolean,}) => boolean;
putIfAbsent: (key: Object, loader : () => IImageStreamCompleter, props? : {  onError? : (exception: Object, stackTrace?: IStackTrace | undefined) => void | undefined,}) => IImageStreamCompleter | undefined;
statusForKey: (key: Object) => IImageCacheStatus;
containsKey: (key: Object) => boolean;
getLiveImageCount: () => number;
getPendingImageCount: () => number;
clearLiveImages: () => void;
}export class ImageCache


{public constructor(){
flutter.painting.imageCache(this);}
    private readonly _dart_getMaximumSize: () => number = undefined as any;
    private readonly _dart_setMaximumSize: (value: number) => void = undefined as any;
    private readonly _dart_getCurrentSize: () => number = undefined as any;
    private readonly _dart_getMaximumSizeBytes: () => number = undefined as any;
    private readonly _dart_setMaximumSizeBytes: (value: number) => void = undefined as any;
    private readonly _dart_getCurrentSizeBytes: () => number = undefined as any;
    private readonly _dart_clear: () => void = undefined as any;
    private readonly _dart_evict: (key: Object, props : {  includeLive : boolean,}) => boolean = undefined as any;
    private readonly _dart_putIfAbsent: (key: Object, loader : () => IImageStreamCompleter, props? : {  onError? : (exception: Object, stackTrace?: IStackTrace | undefined) => void | undefined,}) => IImageStreamCompleter | undefined = undefined as any;
    private readonly _dart_statusForKey: (key: Object) => IImageCacheStatus = undefined as any;
    private readonly _dart_containsKey: (key: Object) => boolean = undefined as any;
    private readonly _dart_getLiveImageCount: () => number = undefined as any;
    private readonly _dart_getPendingImageCount: () => number = undefined as any;
    private readonly _dart_clearLiveImages: () => void = undefined as any;
public getMaximumSize() : number {
    return this._dart_getMaximumSize();
}
public setMaximumSize(value: number) : void {
    return this._dart_setMaximumSize(value);
}
public getCurrentSize() : number {
    return this._dart_getCurrentSize();
}
public getMaximumSizeBytes() : number {
    return this._dart_getMaximumSizeBytes();
}
public setMaximumSizeBytes(value: number) : void {
    return this._dart_setMaximumSizeBytes(value);
}
public getCurrentSizeBytes() : number {
    return this._dart_getCurrentSizeBytes();
}
public clear() : void {
    return this._dart_clear();
}
public evict(key: Object, props : {  includeLive? : boolean,}) : boolean {
    return this._dart_evict(key, {
...evictDefaultProps,
...props
});
}
public putIfAbsent(key: Object, loader : () => IImageStreamCompleter, props? : {  onError? : (exception: Object, stackTrace?: IStackTrace | undefined) => void | undefined,}) : IImageStreamCompleter | undefined {
    return this._dart_putIfAbsent(key, loader, props);
}
public statusForKey(key: Object) : IImageCacheStatus {
    return this._dart_statusForKey(key);
}
public containsKey(key: Object) : boolean {
    return this._dart_containsKey(key);
}
public getLiveImageCount() : number {
    return this._dart_getLiveImageCount();
}
public getPendingImageCount() : number {
    return this._dart_getPendingImageCount();
}
public clearLiveImages() : void {
    return this._dart_clearLiveImages();
}
}
const evictDefaultProps = {
    includeLive: true,
};
