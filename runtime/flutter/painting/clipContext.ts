
import { ICanvas } from "../../dart/ui/canvas";
import { IPath } from "../../dart/ui/path";
import { Clip } from "../../dart/ui/clip";
import { IRect } from "../../dart/ui/rect";
import { IRRect } from "../../dart/ui/rRect";
declare const flutter: {
painting: {
clipContext: (this: void, clipContext: IClipContext) => IClipContext
}
};
export interface IClipContext


{
getCanvas: () => ICanvas;
clipPathAndPaint: (path: IPath, clipBehavior: Clip, bounds: IRect, painter : () => void) => void;
clipRRectAndPaint: (rrect: IRRect, clipBehavior: Clip, bounds: IRect, painter : () => void) => void;
clipRectAndPaint: (rect: IRect, clipBehavior: Clip, bounds: IRect, painter : () => void) => void;
}export class ClipContext


{public constructor(){
flutter.painting.clipContext(this);}
    private readonly _dart_getCanvas: () => ICanvas = undefined as any;
    private readonly _dart_clipPathAndPaint: (path: IPath, clipBehavior: Clip, bounds: IRect, painter : () => void) => void = undefined as any;
    private readonly _dart_clipRRectAndPaint: (rrect: IRRect, clipBehavior: Clip, bounds: IRect, painter : () => void) => void = undefined as any;
    private readonly _dart_clipRectAndPaint: (rect: IRect, clipBehavior: Clip, bounds: IRect, painter : () => void) => void = undefined as any;
public getCanvas() : ICanvas {
    return this._dart_getCanvas();
}
public clipPathAndPaint(path: IPath, clipBehavior: Clip, bounds: IRect, painter : () => void) : void {
    return this._dart_clipPathAndPaint(path, clipBehavior, bounds, painter);
}
public clipRRectAndPaint(rrect: IRRect, clipBehavior: Clip, bounds: IRect, painter : () => void) : void {
    return this._dart_clipRRectAndPaint(rrect, clipBehavior, bounds, painter);
}
public clipRectAndPaint(rect: IRect, clipBehavior: Clip, bounds: IRect, painter : () => void) : void {
    return this._dart_clipRectAndPaint(rect, clipBehavior, bounds, painter);
}
}
