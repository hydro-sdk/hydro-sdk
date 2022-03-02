import { IFuture } from "../../dart/async/future";
import { ICanvas } from "../../dart/ui/canvas";
import { Clip } from "../../dart/ui/clip";
import { IColorFilter } from "../../dart/ui/colorFilter";
import { IImage } from "../../dart/ui/image";
import { IOffset } from "../../dart/ui/offset";
import { IPath } from "../../dart/ui/path";
import { IRect } from "../../dart/ui/rect";
import { IRRect } from "../../dart/ui/rRect";
import { IMatrix4 } from "../../vector_math/matrix4";
import { IClipPathLayer } from "../rendering/clipPathLayer";
import { IClipRectLayer } from "../rendering/clipRectLayer";
import { IClipRRectLayer } from "../rendering/clipRRectLayer";
import { IColorFilterLayer } from "../rendering/colorFilterLayer";
import { IContainerLayer } from "../rendering/containerLayer";
import { ILayer } from "../rendering/layer";
import { IOpacityLayer } from "../rendering/opacityLayer";
import { IPaintingContext } from "../rendering/paintingContext";
import { IRenderObject } from "../rendering/renderObject";
import { ITransformLayer } from "../rendering/transformLayer";
import { I_ScreenshotData } from "./_screenshotData";
declare const flutter: {
    widgets: {
        _screenshotPaintingContext: (
            this: void,
            _screenshotPaintingContext: I_ScreenshotPaintingContext,
            props: {
                containerLayer: IContainerLayer;
                estimatedBounds: IRect;
                screenshotData: I_ScreenshotData;
            }
        ) => I_ScreenshotPaintingContext;
        _screenshotPaintingContextToImage: (
            renderObject: IRenderObject,
            renderBounds: IRect,
            props: { debugPaint: boolean; pixelRatio: number }
        ) => IFuture<IImage>;
    };
};
export interface I_ScreenshotPaintingContext {
    estimatedBounds: IRect;
    getCanvas: () => ICanvas;
    stopRecordingIfNeeded: () => void;
    appendLayer: (layer: ILayer) => void;
    createChildContext: (
        childLayer: IContainerLayer,
        bounds: IRect
    ) => IPaintingContext;
    paintChild: (child: IRenderObject, offset: IOffset) => void;
    setIsComplexHint: () => void;
    setWillChangeHint: () => void;
    addLayer: (layer: ILayer) => void;
    pushLayer: (
        childLayer: IContainerLayer,
        painter: (context: IPaintingContext, offset: IOffset) => void,
        offset: IOffset,
        props?: { childPaintBounds?: IRect | undefined }
    ) => void;
    pushClipRect: (
        needsCompositing: boolean,
        offset: IOffset,
        clipRect: IRect,
        painter: (context: IPaintingContext, offset: IOffset) => void,
        props: { clipBehavior: Clip; oldLayer?: IClipRectLayer | undefined }
    ) => IClipRectLayer | undefined;
    pushClipRRect: (
        needsCompositing: boolean,
        offset: IOffset,
        bounds: IRect,
        clipRRect: IRRect,
        painter: (context: IPaintingContext, offset: IOffset) => void,
        props: { clipBehavior: Clip; oldLayer?: IClipRRectLayer | undefined }
    ) => IClipRRectLayer | undefined;
    pushClipPath: (
        needsCompositing: boolean,
        offset: IOffset,
        bounds: IRect,
        clipPath: IPath,
        painter: (context: IPaintingContext, offset: IOffset) => void,
        props: { clipBehavior: Clip; oldLayer?: IClipPathLayer | undefined }
    ) => IClipPathLayer | undefined;
    pushColorFilter: (
        offset: IOffset,
        colorFilter: IColorFilter,
        painter: (context: IPaintingContext, offset: IOffset) => void,
        props?: { oldLayer?: IColorFilterLayer | undefined }
    ) => IColorFilterLayer;
    pushTransform: (
        needsCompositing: boolean,
        offset: IOffset,
        transform: IMatrix4,
        painter: (context: IPaintingContext, offset: IOffset) => void,
        props?: { oldLayer?: ITransformLayer | undefined }
    ) => ITransformLayer | undefined;
    pushOpacity: (
        offset: IOffset,
        alpha: number,
        painter: (context: IPaintingContext, offset: IOffset) => void,
        props?: { oldLayer?: IOpacityLayer | undefined }
    ) => IOpacityLayer;
    toString: () => string;
    clipPathAndPaint: (
        path: IPath,
        clipBehavior: Clip,
        bounds: IRect,
        painter: () => void
    ) => void;
    clipRRectAndPaint: (
        rrect: IRRect,
        clipBehavior: Clip,
        bounds: IRect,
        painter: () => void
    ) => void;
    clipRectAndPaint: (
        rect: IRect,
        clipBehavior: Clip,
        bounds: IRect,
        painter: () => void
    ) => void;
    getHashCode: () => number;
}
export class _ScreenshotPaintingContext implements IPaintingContext {
    public readonly estimatedBounds: IRect = undefined as any;
    public constructor(props: {
        containerLayer: IContainerLayer;
        estimatedBounds: IRect;
        screenshotData: I_ScreenshotData;
    }) {
        flutter.widgets._screenshotPaintingContext(this, props);
    }
    public static toImage(
        renderObject: IRenderObject,
        renderBounds: IRect,
        props: { debugPaint?: boolean; pixelRatio?: number }
    ): IFuture<IImage> {
        return flutter.widgets._screenshotPaintingContextToImage(
            renderObject,
            renderBounds,
            {
                ...toImageDefaultProps,
                ...props,
            }
        );
    }
    private readonly _dart_getCanvas: () => ICanvas = undefined as any;
    private readonly _dart_stopRecordingIfNeeded: () => void = undefined as any;
    private readonly _dart_appendLayer: (layer: ILayer) => void =
        undefined as any;
    private readonly _dart_createChildContext: (
        childLayer: IContainerLayer,
        bounds: IRect
    ) => IPaintingContext = undefined as any;
    private readonly _dart_paintChild: (
        child: IRenderObject,
        offset: IOffset
    ) => void = undefined as any;
    private readonly _dart_setIsComplexHint: () => void = undefined as any;
    private readonly _dart_setWillChangeHint: () => void = undefined as any;
    private readonly _dart_addLayer: (layer: ILayer) => void = undefined as any;
    private readonly _dart_pushLayer: (
        childLayer: IContainerLayer,
        painter: (context: IPaintingContext, offset: IOffset) => void,
        offset: IOffset,
        props?: { childPaintBounds?: IRect | undefined }
    ) => void = undefined as any;
    private readonly _dart_pushClipRect: (
        needsCompositing: boolean,
        offset: IOffset,
        clipRect: IRect,
        painter: (context: IPaintingContext, offset: IOffset) => void,
        props: { clipBehavior: Clip; oldLayer?: IClipRectLayer | undefined }
    ) => IClipRectLayer | undefined = undefined as any;
    private readonly _dart_pushClipRRect: (
        needsCompositing: boolean,
        offset: IOffset,
        bounds: IRect,
        clipRRect: IRRect,
        painter: (context: IPaintingContext, offset: IOffset) => void,
        props: { clipBehavior: Clip; oldLayer?: IClipRRectLayer | undefined }
    ) => IClipRRectLayer | undefined = undefined as any;
    private readonly _dart_pushClipPath: (
        needsCompositing: boolean,
        offset: IOffset,
        bounds: IRect,
        clipPath: IPath,
        painter: (context: IPaintingContext, offset: IOffset) => void,
        props: { clipBehavior: Clip; oldLayer?: IClipPathLayer | undefined }
    ) => IClipPathLayer | undefined = undefined as any;
    private readonly _dart_pushColorFilter: (
        offset: IOffset,
        colorFilter: IColorFilter,
        painter: (context: IPaintingContext, offset: IOffset) => void,
        props?: { oldLayer?: IColorFilterLayer | undefined }
    ) => IColorFilterLayer = undefined as any;
    private readonly _dart_pushTransform: (
        needsCompositing: boolean,
        offset: IOffset,
        transform: IMatrix4,
        painter: (context: IPaintingContext, offset: IOffset) => void,
        props?: { oldLayer?: ITransformLayer | undefined }
    ) => ITransformLayer | undefined = undefined as any;
    private readonly _dart_pushOpacity: (
        offset: IOffset,
        alpha: number,
        painter: (context: IPaintingContext, offset: IOffset) => void,
        props?: { oldLayer?: IOpacityLayer | undefined }
    ) => IOpacityLayer = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_clipPathAndPaint: (
        path: IPath,
        clipBehavior: Clip,
        bounds: IRect,
        painter: () => void
    ) => void = undefined as any;
    private readonly _dart_clipRRectAndPaint: (
        rrect: IRRect,
        clipBehavior: Clip,
        bounds: IRect,
        painter: () => void
    ) => void = undefined as any;
    private readonly _dart_clipRectAndPaint: (
        rect: IRect,
        clipBehavior: Clip,
        bounds: IRect,
        painter: () => void
    ) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getCanvas(): ICanvas {
        return this._dart_getCanvas();
    }
    public stopRecordingIfNeeded(): void {
        return this._dart_stopRecordingIfNeeded();
    }
    public appendLayer(layer: ILayer): void {
        return this._dart_appendLayer(layer);
    }
    public createChildContext(
        childLayer: IContainerLayer,
        bounds: IRect
    ): IPaintingContext {
        return this._dart_createChildContext(childLayer, bounds);
    }
    public paintChild(child: IRenderObject, offset: IOffset): void {
        return this._dart_paintChild(child, offset);
    }
    public setIsComplexHint(): void {
        return this._dart_setIsComplexHint();
    }
    public setWillChangeHint(): void {
        return this._dart_setWillChangeHint();
    }
    public addLayer(layer: ILayer): void {
        return this._dart_addLayer(layer);
    }
    public pushLayer(
        childLayer: IContainerLayer,
        painter: (context: IPaintingContext, offset: IOffset) => void,
        offset: IOffset,
        props?: { childPaintBounds?: IRect | undefined }
    ): void {
        return this._dart_pushLayer(childLayer, painter, offset, props);
    }
    public pushClipRect(
        needsCompositing: boolean,
        offset: IOffset,
        clipRect: IRect,
        painter: (context: IPaintingContext, offset: IOffset) => void,
        props: { clipBehavior?: Clip; oldLayer?: IClipRectLayer | undefined }
    ): IClipRectLayer | undefined {
        return this._dart_pushClipRect(
            needsCompositing,
            offset,
            clipRect,
            painter,
            {
                ...pushClipRectDefaultProps,
                ...props,
            }
        );
    }
    public pushClipRRect(
        needsCompositing: boolean,
        offset: IOffset,
        bounds: IRect,
        clipRRect: IRRect,
        painter: (context: IPaintingContext, offset: IOffset) => void,
        props: { clipBehavior?: Clip; oldLayer?: IClipRRectLayer | undefined }
    ): IClipRRectLayer | undefined {
        return this._dart_pushClipRRect(
            needsCompositing,
            offset,
            bounds,
            clipRRect,
            painter,
            {
                ...pushClipRRectDefaultProps,
                ...props,
            }
        );
    }
    public pushClipPath(
        needsCompositing: boolean,
        offset: IOffset,
        bounds: IRect,
        clipPath: IPath,
        painter: (context: IPaintingContext, offset: IOffset) => void,
        props: { clipBehavior?: Clip; oldLayer?: IClipPathLayer | undefined }
    ): IClipPathLayer | undefined {
        return this._dart_pushClipPath(
            needsCompositing,
            offset,
            bounds,
            clipPath,
            painter,
            {
                ...pushClipPathDefaultProps,
                ...props,
            }
        );
    }
    public pushColorFilter(
        offset: IOffset,
        colorFilter: IColorFilter,
        painter: (context: IPaintingContext, offset: IOffset) => void,
        props?: { oldLayer?: IColorFilterLayer | undefined }
    ): IColorFilterLayer {
        return this._dart_pushColorFilter(offset, colorFilter, painter, props);
    }
    public pushTransform(
        needsCompositing: boolean,
        offset: IOffset,
        transform: IMatrix4,
        painter: (context: IPaintingContext, offset: IOffset) => void,
        props?: { oldLayer?: ITransformLayer | undefined }
    ): ITransformLayer | undefined {
        return this._dart_pushTransform(
            needsCompositing,
            offset,
            transform,
            painter,
            props
        );
    }
    public pushOpacity(
        offset: IOffset,
        alpha: number,
        painter: (context: IPaintingContext, offset: IOffset) => void,
        props?: { oldLayer?: IOpacityLayer | undefined }
    ): IOpacityLayer {
        return this._dart_pushOpacity(offset, alpha, painter, props);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public clipPathAndPaint(
        path: IPath,
        clipBehavior: Clip,
        bounds: IRect,
        painter: () => void
    ): void {
        return this._dart_clipPathAndPaint(path, clipBehavior, bounds, painter);
    }
    public clipRRectAndPaint(
        rrect: IRRect,
        clipBehavior: Clip,
        bounds: IRect,
        painter: () => void
    ): void {
        return this._dart_clipRRectAndPaint(
            rrect,
            clipBehavior,
            bounds,
            painter
        );
    }
    public clipRectAndPaint(
        rect: IRect,
        clipBehavior: Clip,
        bounds: IRect,
        painter: () => void
    ): void {
        return this._dart_clipRectAndPaint(rect, clipBehavior, bounds, painter);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const pushClipRectDefaultProps = {
    clipBehavior: Clip.hardEdge,
};
const pushClipRRectDefaultProps = {
    clipBehavior: Clip.antiAlias,
};
const pushClipPathDefaultProps = {
    clipBehavior: Clip.antiAlias,
};
const toImageDefaultProps = {
    debugPaint: false,
    pixelRatio: 1.0,
};
