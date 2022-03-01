
import { IAlignmentGeometry } from "./alignmentGeometry";
import { IRect } from "../../dart/ui/rect";
import { IColorFilter } from "../../dart/ui/colorFilter";
import { FilterQuality } from "../../dart/ui/filterQuality";
import { BoxFit } from "./boxFit";
import { IStackTrace } from "../../dart/core/stackTrace";
import { ImageRepeat } from "./imageRepeat";
import { IImageProvider } from "./imageProvider";
import { IDecorationImagePainter } from "./decorationImagePainter";
import { Alignment } from "./alignment";
declare const flutter: {
painting: {
decorationImage: (this: void, decorationImage: IDecorationImage, props : {  alignment : IAlignmentGeometry, centerSlice? : IRect | undefined, colorFilter? : IColorFilter | undefined, filterQuality : FilterQuality, fit? : BoxFit | undefined, invertColors : boolean, isAntiAlias : boolean, matchTextDirection : boolean, onError? : (exception: Object, stackTrace?: IStackTrace | undefined) => void | undefined, opacity : number, repeat : ImageRepeat, scale : number, image : IImageProvider<Object>,}) => IDecorationImage
}
};
export interface IDecorationImage


{
image: IImageProvider<Object>;
colorFilter: IColorFilter | undefined;
fit: BoxFit | undefined;
alignment: IAlignmentGeometry;
centerSlice: IRect | undefined;
repeat: ImageRepeat;
matchTextDirection: boolean;
scale: number;
opacity: number;
filterQuality: FilterQuality;
invertColors: boolean;
isAntiAlias: boolean;
createPainter: (onChanged : () => void) => IDecorationImagePainter;
getHashCode: () => number;
toString: () => string;
}export class DecorationImage


{    public readonly image: IImageProvider<Object> = undefined as any;
    public readonly colorFilter: IColorFilter | undefined = undefined as any;
    public readonly fit: BoxFit | undefined = undefined as any;
    public readonly alignment: IAlignmentGeometry = undefined as any;
    public readonly centerSlice: IRect | undefined = undefined as any;
    public readonly repeat: ImageRepeat = undefined as any;
    public readonly matchTextDirection: boolean = undefined as any;
    public readonly scale: number = undefined as any;
    public readonly opacity: number = undefined as any;
    public readonly filterQuality: FilterQuality = undefined as any;
    public readonly invertColors: boolean = undefined as any;
    public readonly isAntiAlias: boolean = undefined as any;
public constructor( props : {  alignment? : IAlignmentGeometry, centerSlice? : IRect | undefined, colorFilter? : IColorFilter | undefined, filterQuality? : FilterQuality, fit? : BoxFit | undefined, invertColors? : boolean, isAntiAlias? : boolean, matchTextDirection? : boolean, onError? : (exception: Object, stackTrace?: IStackTrace | undefined) => void | undefined, opacity? : number, repeat? : ImageRepeat, scale? : number, image : IImageProvider<Object>,}){
flutter.painting.decorationImage(this, {
...decorationImageDefaultProps,
...props
});}
    private readonly _dart_createPainter: (onChanged : () => void) => IDecorationImagePainter = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
public createPainter(onChanged : () => void) : IDecorationImagePainter {
    return this._dart_createPainter(onChanged);
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
public toString() : string {
    return this._dart_toString();
}
}
const decorationImageDefaultProps = {
    alignment: Alignment.center,
    filterQuality: FilterQuality.low,
    invertColors: false,
    isAntiAlias: false,
    matchTextDirection: false,
    opacity: 1.0,
    repeat: ImageRepeat.noRepeat,
    scale: 1.0,
};
