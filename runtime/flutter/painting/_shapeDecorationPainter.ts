
import { IShapeDecoration } from "./shapeDecoration";
import { IBoxPainter } from "./boxPainter";
import { ICanvas } from "../../dart/ui/canvas";
import { IOffset } from "../../dart/ui/offset";
import { IImageConfiguration } from "./imageConfiguration";
declare const flutter: {
painting: {
_shapeDecorationPainter: (this: void, _shapeDecorationPainter: I_ShapeDecorationPainter, _decoration: IShapeDecoration, onChanged : () => void) => I_ShapeDecorationPainter
}
};
export interface I_ShapeDecorationPainter


{
onChanged: () => void | undefined;
getOnChanged: () => () => void;
dispose: () => void;
paint: (canvas: ICanvas, offset: IOffset, configuration: IImageConfiguration) => void;
toString: () => string;
getHashCode: () => number;
}export class _ShapeDecorationPainter

 implements IBoxPainter
{    public readonly onChanged: () => void | undefined = undefined as any;
public constructor(_decoration: IShapeDecoration, onChanged : () => void){
flutter.painting._shapeDecorationPainter(this, _decoration, onChanged);}
    private readonly _dart_getOnChanged: () => () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_paint: (canvas: ICanvas, offset: IOffset, configuration: IImageConfiguration) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getOnChanged() : () => void {
    return this._dart_getOnChanged();
}
public dispose() : void {
    return this._dart_dispose();
}
public paint(canvas: ICanvas, offset: IOffset, configuration: IImageConfiguration) : void {
    return this._dart_paint(canvas, offset, configuration);
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
