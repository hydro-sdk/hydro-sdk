
import { IImageChunkEvent } from "./imageChunkEvent";
import { IStackTrace } from "../../dart/core/stackTrace";
import { IImageInfo } from "./imageInfo";
declare const flutter: {
painting: {
imageStreamListener: (this: void, imageStreamListener: IImageStreamListener, onImage : (image: IImageInfo, synchronousCall: boolean) => void, props? : {  onChunk? : (event: IImageChunkEvent) => void | undefined, onError? : (exception: Object, stackTrace?: IStackTrace | undefined) => void | undefined,}) => IImageStreamListener
}
};
export interface IImageStreamListener


{
getHashCode: () => number;
}export class ImageStreamListener


{public constructor(onImage : (image: IImageInfo, synchronousCall: boolean) => void, props? : {  onChunk? : (event: IImageChunkEvent) => void | undefined, onError? : (exception: Object, stackTrace?: IStackTrace | undefined) => void | undefined,}){
flutter.painting.imageStreamListener(this, onImage, props);}
    private readonly _dart_getHashCode: () => number = undefined as any;
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
