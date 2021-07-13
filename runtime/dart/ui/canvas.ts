import { IList } from "../core/list";
import { IFloat32List } from "../typed_data/float32List";
import { IFloat64List } from "../typed_data/float64List";
import { IInt32List } from "../typed_data/int32List";
import { BlendMode } from "./blendMode";
import { ClipOp } from "./clipOp";
import { IColor } from "./color";
import { IImage } from "./image";
import { IOffset } from "./offset";
import { IPaint } from "./paint";
import { IParagraph } from "./paragraph";
import { IPath } from "./path";
import { IPicture } from "./picture";
import { IPictureRecorder } from "./pictureRecorder";
import { PointMode } from "./pointMode";
import { IRect } from "./rect";
import { IRRect } from "./rRect";
import { IRSTransform } from "./rSTransform";
import { IVertices } from "./vertices";
declare const dart: {
    ui: {
        canvas: (
            this: void,
            canvas: ICanvas,
            recorder: IPictureRecorder,
            cullRect?: IRect | undefined
        ) => ICanvas;
    };
};
export interface ICanvas {
    save: () => void;
    saveLayer: (bounds: IRect | undefined, paint: IPaint) => void;
    restore: () => void;
    getSaveCount: () => number;
    translate: (dx: number, dy: number) => void;
    scale: (sx: number, sy?: number | undefined) => void;
    rotate: (radians: number) => void;
    skew: (sx: number, sy: number) => void;
    transform: (matrix4: IFloat64List) => void;
    clipRect: (
        rect: IRect,
        props: { clipOp: ClipOp; doAntiAlias: boolean }
    ) => void;
    clipRRect: (rrect: IRRect, props: { doAntiAlias: boolean }) => void;
    clipPath: (path: IPath, props: { doAntiAlias: boolean }) => void;
    drawColor: (color: IColor, blendMode: BlendMode) => void;
    drawLine: (p1: IOffset, p2: IOffset, paint: IPaint) => void;
    drawPaint: (paint: IPaint) => void;
    drawRect: (rect: IRect, paint: IPaint) => void;
    drawRRect: (rrect: IRRect, paint: IPaint) => void;
    drawDRRect: (outer: IRRect, inner: IRRect, paint: IPaint) => void;
    drawOval: (rect: IRect, paint: IPaint) => void;
    drawCircle: (c: IOffset, radius: number, paint: IPaint) => void;
    drawArc: (
        rect: IRect,
        startAngle: number,
        sweepAngle: number,
        useCenter: boolean,
        paint: IPaint
    ) => void;
    drawPath: (path: IPath, paint: IPaint) => void;
    drawImage: (image: IImage, offset: IOffset, paint: IPaint) => void;
    drawImageRect: (
        image: IImage,
        src: IRect,
        dst: IRect,
        paint: IPaint
    ) => void;
    drawImageNine: (
        image: IImage,
        center: IRect,
        dst: IRect,
        paint: IPaint
    ) => void;
    drawPicture: (picture: IPicture) => void;
    drawParagraph: (paragraph: IParagraph, offset: IOffset) => void;
    drawPoints: (
        pointMode: PointMode,
        points: IList<IOffset>,
        paint: IPaint
    ) => void;
    drawRawPoints: (
        pointMode: PointMode,
        points: IFloat32List,
        paint: IPaint
    ) => void;
    drawVertices: (
        vertices: IVertices,
        blendMode: BlendMode,
        paint: IPaint
    ) => void;
    drawAtlas: (
        atlas: IImage,
        transforms: IList<IRSTransform>,
        rects: IList<IRect>,
        colors: IList<IColor> | undefined,
        blendMode: BlendMode | undefined,
        cullRect: IRect | undefined,
        paint: IPaint
    ) => void;
    drawRawAtlas: (
        atlas: IImage,
        rstTransforms: IFloat32List,
        rects: IFloat32List,
        colors: IInt32List | undefined,
        blendMode: BlendMode | undefined,
        cullRect: IRect | undefined,
        paint: IPaint
    ) => void;
    drawShadow: (
        path: IPath,
        color: IColor,
        elevation: number,
        transparentOccluder: boolean
    ) => void;
}
export class Canvas {
    public constructor(
        recorder: IPictureRecorder,
        cullRect?: IRect | undefined
    ) {
        dart.ui.canvas(this, recorder, cullRect);
    }
    private readonly _dart_save: () => void = undefined as any;
    private readonly _dart_saveLayer: (
        bounds: IRect | undefined,
        paint: IPaint
    ) => void = undefined as any;
    private readonly _dart_restore: () => void = undefined as any;
    private readonly _dart_getSaveCount: () => number = undefined as any;
    private readonly _dart_translate: (dx: number, dy: number) => void =
        undefined as any;
    private readonly _dart_scale: (
        sx: number,
        sy?: number | undefined
    ) => void = undefined as any;
    private readonly _dart_rotate: (radians: number) => void = undefined as any;
    private readonly _dart_skew: (sx: number, sy: number) => void =
        undefined as any;
    private readonly _dart_transform: (matrix4: IFloat64List) => void =
        undefined as any;
    private readonly _dart_clipRect: (
        rect: IRect,
        props: { clipOp: ClipOp; doAntiAlias: boolean }
    ) => void = undefined as any;
    private readonly _dart_clipRRect: (
        rrect: IRRect,
        props: { doAntiAlias: boolean }
    ) => void = undefined as any;
    private readonly _dart_clipPath: (
        path: IPath,
        props: { doAntiAlias: boolean }
    ) => void = undefined as any;
    private readonly _dart_drawColor: (
        color: IColor,
        blendMode: BlendMode
    ) => void = undefined as any;
    private readonly _dart_drawLine: (
        p1: IOffset,
        p2: IOffset,
        paint: IPaint
    ) => void = undefined as any;
    private readonly _dart_drawPaint: (paint: IPaint) => void =
        undefined as any;
    private readonly _dart_drawRect: (rect: IRect, paint: IPaint) => void =
        undefined as any;
    private readonly _dart_drawRRect: (rrect: IRRect, paint: IPaint) => void =
        undefined as any;
    private readonly _dart_drawDRRect: (
        outer: IRRect,
        inner: IRRect,
        paint: IPaint
    ) => void = undefined as any;
    private readonly _dart_drawOval: (rect: IRect, paint: IPaint) => void =
        undefined as any;
    private readonly _dart_drawCircle: (
        c: IOffset,
        radius: number,
        paint: IPaint
    ) => void = undefined as any;
    private readonly _dart_drawArc: (
        rect: IRect,
        startAngle: number,
        sweepAngle: number,
        useCenter: boolean,
        paint: IPaint
    ) => void = undefined as any;
    private readonly _dart_drawPath: (path: IPath, paint: IPaint) => void =
        undefined as any;
    private readonly _dart_drawImage: (
        image: IImage,
        offset: IOffset,
        paint: IPaint
    ) => void = undefined as any;
    private readonly _dart_drawImageRect: (
        image: IImage,
        src: IRect,
        dst: IRect,
        paint: IPaint
    ) => void = undefined as any;
    private readonly _dart_drawImageNine: (
        image: IImage,
        center: IRect,
        dst: IRect,
        paint: IPaint
    ) => void = undefined as any;
    private readonly _dart_drawPicture: (picture: IPicture) => void =
        undefined as any;
    private readonly _dart_drawParagraph: (
        paragraph: IParagraph,
        offset: IOffset
    ) => void = undefined as any;
    private readonly _dart_drawPoints: (
        pointMode: PointMode,
        points: IList<IOffset>,
        paint: IPaint
    ) => void = undefined as any;
    private readonly _dart_drawRawPoints: (
        pointMode: PointMode,
        points: IFloat32List,
        paint: IPaint
    ) => void = undefined as any;
    private readonly _dart_drawVertices: (
        vertices: IVertices,
        blendMode: BlendMode,
        paint: IPaint
    ) => void = undefined as any;
    private readonly _dart_drawAtlas: (
        atlas: IImage,
        transforms: IList<IRSTransform>,
        rects: IList<IRect>,
        colors: IList<IColor> | undefined,
        blendMode: BlendMode | undefined,
        cullRect: IRect | undefined,
        paint: IPaint
    ) => void = undefined as any;
    private readonly _dart_drawRawAtlas: (
        atlas: IImage,
        rstTransforms: IFloat32List,
        rects: IFloat32List,
        colors: IInt32List | undefined,
        blendMode: BlendMode | undefined,
        cullRect: IRect | undefined,
        paint: IPaint
    ) => void = undefined as any;
    private readonly _dart_drawShadow: (
        path: IPath,
        color: IColor,
        elevation: number,
        transparentOccluder: boolean
    ) => void = undefined as any;
    public save(): void {
        return this._dart_save();
    }
    public saveLayer(bounds: IRect | undefined, paint: IPaint): void {
        return this._dart_saveLayer(bounds, paint);
    }
    public restore(): void {
        return this._dart_restore();
    }
    public getSaveCount(): number {
        return this._dart_getSaveCount();
    }
    public translate(dx: number, dy: number): void {
        return this._dart_translate(dx, dy);
    }
    public scale(sx: number, sy?: number | undefined): void {
        return this._dart_scale(sx, sy);
    }
    public rotate(radians: number): void {
        return this._dart_rotate(radians);
    }
    public skew(sx: number, sy: number): void {
        return this._dart_skew(sx, sy);
    }
    public transform(matrix4: IFloat64List): void {
        return this._dart_transform(matrix4);
    }
    public clipRect(
        rect: IRect,
        props: { clipOp?: ClipOp; doAntiAlias?: boolean }
    ): void {
        return this._dart_clipRect(rect, {
            ...clipRectDefaultProps,
            ...props,
        });
    }
    public clipRRect(rrect: IRRect, props: { doAntiAlias?: boolean }): void {
        return this._dart_clipRRect(rrect, {
            ...clipRRectDefaultProps,
            ...props,
        });
    }
    public clipPath(path: IPath, props: { doAntiAlias?: boolean }): void {
        return this._dart_clipPath(path, {
            ...clipPathDefaultProps,
            ...props,
        });
    }
    public drawColor(color: IColor, blendMode: BlendMode): void {
        return this._dart_drawColor(color, blendMode);
    }
    public drawLine(p1: IOffset, p2: IOffset, paint: IPaint): void {
        return this._dart_drawLine(p1, p2, paint);
    }
    public drawPaint(paint: IPaint): void {
        return this._dart_drawPaint(paint);
    }
    public drawRect(rect: IRect, paint: IPaint): void {
        return this._dart_drawRect(rect, paint);
    }
    public drawRRect(rrect: IRRect, paint: IPaint): void {
        return this._dart_drawRRect(rrect, paint);
    }
    public drawDRRect(outer: IRRect, inner: IRRect, paint: IPaint): void {
        return this._dart_drawDRRect(outer, inner, paint);
    }
    public drawOval(rect: IRect, paint: IPaint): void {
        return this._dart_drawOval(rect, paint);
    }
    public drawCircle(c: IOffset, radius: number, paint: IPaint): void {
        return this._dart_drawCircle(c, radius, paint);
    }
    public drawArc(
        rect: IRect,
        startAngle: number,
        sweepAngle: number,
        useCenter: boolean,
        paint: IPaint
    ): void {
        return this._dart_drawArc(
            rect,
            startAngle,
            sweepAngle,
            useCenter,
            paint
        );
    }
    public drawPath(path: IPath, paint: IPaint): void {
        return this._dart_drawPath(path, paint);
    }
    public drawImage(image: IImage, offset: IOffset, paint: IPaint): void {
        return this._dart_drawImage(image, offset, paint);
    }
    public drawImageRect(
        image: IImage,
        src: IRect,
        dst: IRect,
        paint: IPaint
    ): void {
        return this._dart_drawImageRect(image, src, dst, paint);
    }
    public drawImageNine(
        image: IImage,
        center: IRect,
        dst: IRect,
        paint: IPaint
    ): void {
        return this._dart_drawImageNine(image, center, dst, paint);
    }
    public drawPicture(picture: IPicture): void {
        return this._dart_drawPicture(picture);
    }
    public drawParagraph(paragraph: IParagraph, offset: IOffset): void {
        return this._dart_drawParagraph(paragraph, offset);
    }
    public drawPoints(
        pointMode: PointMode,
        points: IList<IOffset>,
        paint: IPaint
    ): void {
        return this._dart_drawPoints(pointMode, points, paint);
    }
    public drawRawPoints(
        pointMode: PointMode,
        points: IFloat32List,
        paint: IPaint
    ): void {
        return this._dart_drawRawPoints(pointMode, points, paint);
    }
    public drawVertices(
        vertices: IVertices,
        blendMode: BlendMode,
        paint: IPaint
    ): void {
        return this._dart_drawVertices(vertices, blendMode, paint);
    }
    public drawAtlas(
        atlas: IImage,
        transforms: IList<IRSTransform>,
        rects: IList<IRect>,
        colors: IList<IColor> | undefined,
        blendMode: BlendMode | undefined,
        cullRect: IRect | undefined,
        paint: IPaint
    ): void {
        return this._dart_drawAtlas(
            atlas,
            transforms,
            rects,
            colors,
            blendMode,
            cullRect,
            paint
        );
    }
    public drawRawAtlas(
        atlas: IImage,
        rstTransforms: IFloat32List,
        rects: IFloat32List,
        colors: IInt32List | undefined,
        blendMode: BlendMode | undefined,
        cullRect: IRect | undefined,
        paint: IPaint
    ): void {
        return this._dart_drawRawAtlas(
            atlas,
            rstTransforms,
            rects,
            colors,
            blendMode,
            cullRect,
            paint
        );
    }
    public drawShadow(
        path: IPath,
        color: IColor,
        elevation: number,
        transparentOccluder: boolean
    ): void {
        return this._dart_drawShadow(
            path,
            color,
            elevation,
            transparentOccluder
        );
    }
}
const clipRectDefaultProps = {
    clipOp: ClipOp.intersect,
    doAntiAlias: true,
};
const clipRRectDefaultProps = {
    doAntiAlias: true,
};
const clipPathDefaultProps = {
    doAntiAlias: true,
};
