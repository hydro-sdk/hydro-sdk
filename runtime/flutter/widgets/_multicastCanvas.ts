
import { ICanvas } from "../../dart/ui/canvas";
import { IPath } from "../../dart/ui/path";
import { IRRect } from "../../dart/ui/rRect";
import { ClipOp } from "../../dart/ui/clipOp";
import { IRect } from "../../dart/ui/rect";
import { IPaint } from "../../dart/ui/paint";
import { IImage } from "../../dart/ui/image";
import { IList } from "../../dart/core/list";
import { IRSTransform } from "../../dart/ui/rSTransform";
import { IColor } from "../../dart/ui/color";
import { BlendMode } from "../../dart/ui/blendMode";
import { IOffset } from "../../dart/ui/offset";
import { IParagraph } from "../../dart/ui/paragraph";
import { IPicture } from "../../dart/ui/picture";
import { PointMode } from "../../dart/ui/pointMode";
import { IFloat32List } from "../../dart/typed_data/float32List";
import { IInt32List } from "../../dart/typed_data/int32List";
import { IVertices } from "../../dart/ui/vertices";
import { IFloat64List } from "../../dart/typed_data/float64List";
declare const flutter: {
widgets: {
_multicastCanvas: (this: void, _multicastCanvas: I_MulticastCanvas, props : {  main : ICanvas, screenshot : ICanvas,}) => I_MulticastCanvas
}
};
export interface I_MulticastCanvas


{
clipPath: (path: IPath, props : {  doAntiAlias : boolean,}) => void;
clipRRect: (rrect: IRRect, props : {  doAntiAlias : boolean,}) => void;
clipRect: (rect: IRect, props : {  clipOp : ClipOp, doAntiAlias : boolean,}) => void;
drawArc: (rect: IRect, startAngle: number, sweepAngle: number, useCenter: boolean, paint: IPaint) => void;
drawAtlas: (atlas: IImage, transforms: IList<IRSTransform>, rects: IList<IRect>, colors: IList<IColor> | undefined, blendMode: BlendMode | undefined, cullRect: IRect | undefined, paint: IPaint) => void;
drawCircle: (c: IOffset, radius: number, paint: IPaint) => void;
drawColor: (color: IColor, blendMode: BlendMode) => void;
drawDRRect: (outer: IRRect, inner: IRRect, paint: IPaint) => void;
drawImage: (image: IImage, p: IOffset, paint: IPaint) => void;
drawImageNine: (image: IImage, center: IRect, dst: IRect, paint: IPaint) => void;
drawImageRect: (image: IImage, src: IRect, dst: IRect, paint: IPaint) => void;
drawLine: (p1: IOffset, p2: IOffset, paint: IPaint) => void;
drawOval: (rect: IRect, paint: IPaint) => void;
drawPaint: (paint: IPaint) => void;
drawParagraph: (paragraph: IParagraph, offset: IOffset) => void;
drawPath: (path: IPath, paint: IPaint) => void;
drawPicture: (picture: IPicture) => void;
drawPoints: (pointMode: PointMode, points: IList<IOffset>, paint: IPaint) => void;
drawRRect: (rrect: IRRect, paint: IPaint) => void;
drawRawAtlas: (atlas: IImage, rstTransforms: IFloat32List, rects: IFloat32List, colors: IInt32List | undefined, blendMode: BlendMode | undefined, cullRect: IRect | undefined, paint: IPaint) => void;
drawRawPoints: (pointMode: PointMode, points: IFloat32List, paint: IPaint) => void;
drawRect: (rect: IRect, paint: IPaint) => void;
drawShadow: (path: IPath, color: IColor, elevation: number, transparentOccluder: boolean) => void;
drawVertices: (vertices: IVertices, blendMode: BlendMode, paint: IPaint) => void;
getSaveCount: () => number;
restore: () => void;
rotate: (radians: number) => void;
save: () => void;
saveLayer: (bounds: IRect | undefined, paint: IPaint) => void;
scale: (sx: number, sy?: number | undefined) => void;
skew: (sx: number, sy: number) => void;
transform: (matrix4: IFloat64List) => void;
translate: (dx: number, dy: number) => void;
}export class _MulticastCanvas

 implements ICanvas
{public constructor( props : {  main : ICanvas, screenshot : ICanvas,}){
flutter.widgets._multicastCanvas(this, props);}
    private readonly _dart_clipPath: (path: IPath, props : {  doAntiAlias : boolean,}) => void = undefined as any;
    private readonly _dart_clipRRect: (rrect: IRRect, props : {  doAntiAlias : boolean,}) => void = undefined as any;
    private readonly _dart_clipRect: (rect: IRect, props : {  clipOp : ClipOp, doAntiAlias : boolean,}) => void = undefined as any;
    private readonly _dart_drawArc: (rect: IRect, startAngle: number, sweepAngle: number, useCenter: boolean, paint: IPaint) => void = undefined as any;
    private readonly _dart_drawAtlas: (atlas: IImage, transforms: IList<IRSTransform>, rects: IList<IRect>, colors: IList<IColor> | undefined, blendMode: BlendMode | undefined, cullRect: IRect | undefined, paint: IPaint) => void = undefined as any;
    private readonly _dart_drawCircle: (c: IOffset, radius: number, paint: IPaint) => void = undefined as any;
    private readonly _dart_drawColor: (color: IColor, blendMode: BlendMode) => void = undefined as any;
    private readonly _dart_drawDRRect: (outer: IRRect, inner: IRRect, paint: IPaint) => void = undefined as any;
    private readonly _dart_drawImage: (image: IImage, p: IOffset, paint: IPaint) => void = undefined as any;
    private readonly _dart_drawImageNine: (image: IImage, center: IRect, dst: IRect, paint: IPaint) => void = undefined as any;
    private readonly _dart_drawImageRect: (image: IImage, src: IRect, dst: IRect, paint: IPaint) => void = undefined as any;
    private readonly _dart_drawLine: (p1: IOffset, p2: IOffset, paint: IPaint) => void = undefined as any;
    private readonly _dart_drawOval: (rect: IRect, paint: IPaint) => void = undefined as any;
    private readonly _dart_drawPaint: (paint: IPaint) => void = undefined as any;
    private readonly _dart_drawParagraph: (paragraph: IParagraph, offset: IOffset) => void = undefined as any;
    private readonly _dart_drawPath: (path: IPath, paint: IPaint) => void = undefined as any;
    private readonly _dart_drawPicture: (picture: IPicture) => void = undefined as any;
    private readonly _dart_drawPoints: (pointMode: PointMode, points: IList<IOffset>, paint: IPaint) => void = undefined as any;
    private readonly _dart_drawRRect: (rrect: IRRect, paint: IPaint) => void = undefined as any;
    private readonly _dart_drawRawAtlas: (atlas: IImage, rstTransforms: IFloat32List, rects: IFloat32List, colors: IInt32List | undefined, blendMode: BlendMode | undefined, cullRect: IRect | undefined, paint: IPaint) => void = undefined as any;
    private readonly _dart_drawRawPoints: (pointMode: PointMode, points: IFloat32List, paint: IPaint) => void = undefined as any;
    private readonly _dart_drawRect: (rect: IRect, paint: IPaint) => void = undefined as any;
    private readonly _dart_drawShadow: (path: IPath, color: IColor, elevation: number, transparentOccluder: boolean) => void = undefined as any;
    private readonly _dart_drawVertices: (vertices: IVertices, blendMode: BlendMode, paint: IPaint) => void = undefined as any;
    private readonly _dart_getSaveCount: () => number = undefined as any;
    private readonly _dart_restore: () => void = undefined as any;
    private readonly _dart_rotate: (radians: number) => void = undefined as any;
    private readonly _dart_save: () => void = undefined as any;
    private readonly _dart_saveLayer: (bounds: IRect | undefined, paint: IPaint) => void = undefined as any;
    private readonly _dart_scale: (sx: number, sy?: number | undefined) => void = undefined as any;
    private readonly _dart_skew: (sx: number, sy: number) => void = undefined as any;
    private readonly _dart_transform: (matrix4: IFloat64List) => void = undefined as any;
    private readonly _dart_translate: (dx: number, dy: number) => void = undefined as any;
public clipPath(path: IPath, props : {  doAntiAlias? : boolean,}) : void {
    return this._dart_clipPath(path, {
...clipPathDefaultProps,
...props
});
}
public clipRRect(rrect: IRRect, props : {  doAntiAlias? : boolean,}) : void {
    return this._dart_clipRRect(rrect, {
...clipRRectDefaultProps,
...props
});
}
public clipRect(rect: IRect, props : {  clipOp? : ClipOp, doAntiAlias? : boolean,}) : void {
    return this._dart_clipRect(rect, {
...clipRectDefaultProps,
...props
});
}
public drawArc(rect: IRect, startAngle: number, sweepAngle: number, useCenter: boolean, paint: IPaint) : void {
    return this._dart_drawArc(rect, startAngle, sweepAngle, useCenter, paint);
}
public drawAtlas(atlas: IImage, transforms: IList<IRSTransform>, rects: IList<IRect>, colors: IList<IColor> | undefined, blendMode: BlendMode | undefined, cullRect: IRect | undefined, paint: IPaint) : void {
    return this._dart_drawAtlas(atlas, transforms, rects, colors, blendMode, cullRect, paint);
}
public drawCircle(c: IOffset, radius: number, paint: IPaint) : void {
    return this._dart_drawCircle(c, radius, paint);
}
public drawColor(color: IColor, blendMode: BlendMode) : void {
    return this._dart_drawColor(color, blendMode);
}
public drawDRRect(outer: IRRect, inner: IRRect, paint: IPaint) : void {
    return this._dart_drawDRRect(outer, inner, paint);
}
public drawImage(image: IImage, p: IOffset, paint: IPaint) : void {
    return this._dart_drawImage(image, p, paint);
}
public drawImageNine(image: IImage, center: IRect, dst: IRect, paint: IPaint) : void {
    return this._dart_drawImageNine(image, center, dst, paint);
}
public drawImageRect(image: IImage, src: IRect, dst: IRect, paint: IPaint) : void {
    return this._dart_drawImageRect(image, src, dst, paint);
}
public drawLine(p1: IOffset, p2: IOffset, paint: IPaint) : void {
    return this._dart_drawLine(p1, p2, paint);
}
public drawOval(rect: IRect, paint: IPaint) : void {
    return this._dart_drawOval(rect, paint);
}
public drawPaint(paint: IPaint) : void {
    return this._dart_drawPaint(paint);
}
public drawParagraph(paragraph: IParagraph, offset: IOffset) : void {
    return this._dart_drawParagraph(paragraph, offset);
}
public drawPath(path: IPath, paint: IPaint) : void {
    return this._dart_drawPath(path, paint);
}
public drawPicture(picture: IPicture) : void {
    return this._dart_drawPicture(picture);
}
public drawPoints(pointMode: PointMode, points: IList<IOffset>, paint: IPaint) : void {
    return this._dart_drawPoints(pointMode, points, paint);
}
public drawRRect(rrect: IRRect, paint: IPaint) : void {
    return this._dart_drawRRect(rrect, paint);
}
public drawRawAtlas(atlas: IImage, rstTransforms: IFloat32List, rects: IFloat32List, colors: IInt32List | undefined, blendMode: BlendMode | undefined, cullRect: IRect | undefined, paint: IPaint) : void {
    return this._dart_drawRawAtlas(atlas, rstTransforms, rects, colors, blendMode, cullRect, paint);
}
public drawRawPoints(pointMode: PointMode, points: IFloat32List, paint: IPaint) : void {
    return this._dart_drawRawPoints(pointMode, points, paint);
}
public drawRect(rect: IRect, paint: IPaint) : void {
    return this._dart_drawRect(rect, paint);
}
public drawShadow(path: IPath, color: IColor, elevation: number, transparentOccluder: boolean) : void {
    return this._dart_drawShadow(path, color, elevation, transparentOccluder);
}
public drawVertices(vertices: IVertices, blendMode: BlendMode, paint: IPaint) : void {
    return this._dart_drawVertices(vertices, blendMode, paint);
}
public getSaveCount() : number {
    return this._dart_getSaveCount();
}
public restore() : void {
    return this._dart_restore();
}
public rotate(radians: number) : void {
    return this._dart_rotate(radians);
}
public save() : void {
    return this._dart_save();
}
public saveLayer(bounds: IRect | undefined, paint: IPaint) : void {
    return this._dart_saveLayer(bounds, paint);
}
public scale(sx: number, sy?: number | undefined) : void {
    return this._dart_scale(sx, sy);
}
public skew(sx: number, sy: number) : void {
    return this._dart_skew(sx, sy);
}
public transform(matrix4: IFloat64List) : void {
    return this._dart_transform(matrix4);
}
public translate(dx: number, dy: number) : void {
    return this._dart_translate(dx, dy);
}
}
const clipPathDefaultProps = {
    doAntiAlias: true,
};
const clipRRectDefaultProps = {
    doAntiAlias: true,
};
const clipRectDefaultProps = {
    clipOp: ClipOp.intersect,
    doAntiAlias: true,
};
