
import { IImageStreamCompleter } from "./imageStreamCompleter";
import { I_CachedImageBase } from "./_cachedImageBase";
import { IImageStreamCompleterHandle } from "./imageStreamCompleterHandle";
declare const flutter: {
painting: {
_liveImage: (this: void, _liveImage: I_LiveImage, completer: IImageStreamCompleter, handleRemove : () => void, props? : {  sizeBytes? : number | undefined,}) => I_LiveImage
}
};
export interface I_LiveImage


{
completer: IImageStreamCompleter;
sizeBytes: number | undefined;
handle: IImageStreamCompleterHandle | undefined;
dispose: () => void;
toString: () => string;
getHashCode: () => number;
}export class _LiveImage

 implements I_CachedImageBase
{    public readonly completer: IImageStreamCompleter = undefined as any;
    public readonly sizeBytes: number | undefined = undefined as any;
    public readonly handle: IImageStreamCompleterHandle | undefined = undefined as any;
public constructor(completer: IImageStreamCompleter, handleRemove : () => void, props? : {  sizeBytes? : number | undefined,}){
flutter.painting._liveImage(this, completer, handleRemove, props);}
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public dispose() : void {
    return this._dart_dispose();
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
