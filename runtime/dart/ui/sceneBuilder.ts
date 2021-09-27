import { IFloat64List } from "../typed_data/float64List";
import { IBackdropFilterEngineLayer } from "./backdropFilterEngineLayer";
import { BlendMode } from "./blendMode";
import { Clip } from "./clip";
import { IClipPathEngineLayer } from "./clipPathEngineLayer";
import { IClipRectEngineLayer } from "./clipRectEngineLayer";
import { IClipRRectEngineLayer } from "./clipRRectEngineLayer";
import { IColor } from "./color";
import { IColorFilter } from "./colorFilter";
import { IColorFilterEngineLayer } from "./colorFilterEngineLayer";
import { IEngineLayer } from "./engineLayer";
import { FilterQuality } from "./filterQuality";
import { IImageFilter } from "./imageFilter";
import { IImageFilterEngineLayer } from "./imageFilterEngineLayer";
import { IOffset, Offset } from "./offset";
import { IOffsetEngineLayer } from "./offsetEngineLayer";
import { IOpacityEngineLayer } from "./opacityEngineLayer";
import { IPath } from "./path";
import { IPhysicalShapeEngineLayer } from "./physicalShapeEngineLayer";
import { IPicture } from "./picture";
import { IRect } from "./rect";
import { IRRect } from "./rRect";
import { IScene } from "./scene";
import { ISceneHost } from "./sceneHost";
import { IShader } from "./shader";
import { IShaderMaskEngineLayer } from "./shaderMaskEngineLayer";
import { ITransformEngineLayer } from "./transformEngineLayer";
declare const dart: {
    ui: {
        sceneBuilder: (
            this: void,
            sceneBuilder: ISceneBuilder
        ) => ISceneBuilder;
    };
};
export interface ISceneBuilder {
    pushTransform: (
        matrix4: IFloat64List,
        props?: { oldLayer?: ITransformEngineLayer | undefined }
    ) => ITransformEngineLayer | undefined;
    pushOffset: (
        dx: number,
        dy: number,
        props?: { oldLayer?: IOffsetEngineLayer | undefined }
    ) => IOffsetEngineLayer | undefined;
    pushClipRect: (
        rect: IRect,
        props: {
            clipBehavior: Clip;
            oldLayer?: IClipRectEngineLayer | undefined;
        }
    ) => IClipRectEngineLayer | undefined;
    pushClipRRect: (
        rrect: IRRect,
        props: {
            clipBehavior: Clip;
            oldLayer?: IClipRRectEngineLayer | undefined;
        }
    ) => IClipRRectEngineLayer | undefined;
    pushClipPath: (
        path: IPath,
        props: {
            clipBehavior: Clip;
            oldLayer?: IClipPathEngineLayer | undefined;
        }
    ) => IClipPathEngineLayer | undefined;
    pushOpacity: (
        alpha: number,
        props?: {
            offset?: IOffset | undefined;
            oldLayer?: IOpacityEngineLayer | undefined;
        }
    ) => IOpacityEngineLayer | undefined;
    pushColorFilter: (
        filter: IColorFilter,
        props?: { oldLayer?: IColorFilterEngineLayer | undefined }
    ) => IColorFilterEngineLayer | undefined;
    pushImageFilter: (
        filter: IImageFilter,
        props?: { oldLayer?: IImageFilterEngineLayer | undefined }
    ) => IImageFilterEngineLayer | undefined;
    pushBackdropFilter: (
        filter: IImageFilter,
        props?: { oldLayer?: IBackdropFilterEngineLayer | undefined }
    ) => IBackdropFilterEngineLayer | undefined;
    pushShaderMask: (
        shader: IShader,
        maskRect: IRect,
        blendMode: BlendMode,
        props?: { oldLayer?: IShaderMaskEngineLayer | undefined }
    ) => IShaderMaskEngineLayer | undefined;
    pushPhysicalShape: (props: {
        clipBehavior: Clip;
        oldLayer?: IPhysicalShapeEngineLayer | undefined;
        shadowColor?: IColor | undefined;
        color: IColor;
        elevation: number;
        path: IPath;
    }) => IPhysicalShapeEngineLayer | undefined;
    pop: () => void;
    addRetained: (retainedLayer: IEngineLayer) => void;
    addPerformanceOverlay: (enabledOptions: number, bounds: IRect) => void;
    addPicture: (
        offset: IOffset,
        picture: IPicture,
        props: { isComplexHint: boolean; willChangeHint: boolean }
    ) => void;
    addTexture: (
        textureId: number,
        props: {
            filterQuality: FilterQuality;
            freeze: boolean;
            height: number;
            offset: IOffset;
            width: number;
        }
    ) => void;
    addPlatformView: (
        viewId: number,
        props: { height: number; offset: IOffset; width: number }
    ) => void;
    addChildScene: (props: {
        height: number;
        hitTestable: boolean;
        offset: IOffset;
        width: number;
        sceneHost: ISceneHost;
    }) => void;
    setRasterizerTracingThreshold: (frameInterval: number) => void;
    setCheckerboardRasterCacheImages: (checkerboard: boolean) => void;
    setCheckerboardOffscreenLayers: (checkerboard: boolean) => void;
    build: () => IScene;
}
export class SceneBuilder {
    public constructor() {
        dart.ui.sceneBuilder(this);
    }
    private readonly _dart_pushTransform: (
        matrix4: IFloat64List,
        props?: { oldLayer?: ITransformEngineLayer | undefined }
    ) => ITransformEngineLayer | undefined = undefined as any;
    private readonly _dart_pushOffset: (
        dx: number,
        dy: number,
        props?: { oldLayer?: IOffsetEngineLayer | undefined }
    ) => IOffsetEngineLayer | undefined = undefined as any;
    private readonly _dart_pushClipRect: (
        rect: IRect,
        props: {
            clipBehavior: Clip;
            oldLayer?: IClipRectEngineLayer | undefined;
        }
    ) => IClipRectEngineLayer | undefined = undefined as any;
    private readonly _dart_pushClipRRect: (
        rrect: IRRect,
        props: {
            clipBehavior: Clip;
            oldLayer?: IClipRRectEngineLayer | undefined;
        }
    ) => IClipRRectEngineLayer | undefined = undefined as any;
    private readonly _dart_pushClipPath: (
        path: IPath,
        props: {
            clipBehavior: Clip;
            oldLayer?: IClipPathEngineLayer | undefined;
        }
    ) => IClipPathEngineLayer | undefined = undefined as any;
    private readonly _dart_pushOpacity: (
        alpha: number,
        props?: {
            offset?: IOffset | undefined;
            oldLayer?: IOpacityEngineLayer | undefined;
        }
    ) => IOpacityEngineLayer | undefined = undefined as any;
    private readonly _dart_pushColorFilter: (
        filter: IColorFilter,
        props?: { oldLayer?: IColorFilterEngineLayer | undefined }
    ) => IColorFilterEngineLayer | undefined = undefined as any;
    private readonly _dart_pushImageFilter: (
        filter: IImageFilter,
        props?: { oldLayer?: IImageFilterEngineLayer | undefined }
    ) => IImageFilterEngineLayer | undefined = undefined as any;
    private readonly _dart_pushBackdropFilter: (
        filter: IImageFilter,
        props?: { oldLayer?: IBackdropFilterEngineLayer | undefined }
    ) => IBackdropFilterEngineLayer | undefined = undefined as any;
    private readonly _dart_pushShaderMask: (
        shader: IShader,
        maskRect: IRect,
        blendMode: BlendMode,
        props?: { oldLayer?: IShaderMaskEngineLayer | undefined }
    ) => IShaderMaskEngineLayer | undefined = undefined as any;
    private readonly _dart_pushPhysicalShape: (props: {
        clipBehavior: Clip;
        oldLayer?: IPhysicalShapeEngineLayer | undefined;
        shadowColor?: IColor | undefined;
        color: IColor;
        elevation: number;
        path: IPath;
    }) => IPhysicalShapeEngineLayer | undefined = undefined as any;
    private readonly _dart_pop: () => void = undefined as any;
    private readonly _dart_addRetained: (retainedLayer: IEngineLayer) => void =
        undefined as any;
    private readonly _dart_addPerformanceOverlay: (
        enabledOptions: number,
        bounds: IRect
    ) => void = undefined as any;
    private readonly _dart_addPicture: (
        offset: IOffset,
        picture: IPicture,
        props: { isComplexHint: boolean; willChangeHint: boolean }
    ) => void = undefined as any;
    private readonly _dart_addTexture: (
        textureId: number,
        props: {
            filterQuality: FilterQuality;
            freeze: boolean;
            height: number;
            offset: IOffset;
            width: number;
        }
    ) => void = undefined as any;
    private readonly _dart_addPlatformView: (
        viewId: number,
        props: { height: number; offset: IOffset; width: number }
    ) => void = undefined as any;
    private readonly _dart_addChildScene: (props: {
        height: number;
        hitTestable: boolean;
        offset: IOffset;
        width: number;
        sceneHost: ISceneHost;
    }) => void = undefined as any;
    private readonly _dart_setRasterizerTracingThreshold: (
        frameInterval: number
    ) => void = undefined as any;
    private readonly _dart_setCheckerboardRasterCacheImages: (
        checkerboard: boolean
    ) => void = undefined as any;
    private readonly _dart_setCheckerboardOffscreenLayers: (
        checkerboard: boolean
    ) => void = undefined as any;
    private readonly _dart_build: () => IScene = undefined as any;
    public pushTransform(
        matrix4: IFloat64List,
        props?: { oldLayer?: ITransformEngineLayer | undefined }
    ): ITransformEngineLayer | undefined {
        return this._dart_pushTransform(matrix4, props);
    }
    public pushOffset(
        dx: number,
        dy: number,
        props?: { oldLayer?: IOffsetEngineLayer | undefined }
    ): IOffsetEngineLayer | undefined {
        return this._dart_pushOffset(dx, dy, props);
    }
    public pushClipRect(
        rect: IRect,
        props: {
            clipBehavior?: Clip;
            oldLayer?: IClipRectEngineLayer | undefined;
        }
    ): IClipRectEngineLayer | undefined {
        return this._dart_pushClipRect(rect, {
            ...pushClipRectDefaultProps,
            ...props,
        });
    }
    public pushClipRRect(
        rrect: IRRect,
        props: {
            clipBehavior?: Clip;
            oldLayer?: IClipRRectEngineLayer | undefined;
        }
    ): IClipRRectEngineLayer | undefined {
        return this._dart_pushClipRRect(rrect, {
            ...pushClipRRectDefaultProps,
            ...props,
        });
    }
    public pushClipPath(
        path: IPath,
        props: {
            clipBehavior?: Clip;
            oldLayer?: IClipPathEngineLayer | undefined;
        }
    ): IClipPathEngineLayer | undefined {
        return this._dart_pushClipPath(path, {
            ...pushClipPathDefaultProps,
            ...props,
        });
    }
    public pushOpacity(
        alpha: number,
        props?: {
            offset?: IOffset | undefined;
            oldLayer?: IOpacityEngineLayer | undefined;
        }
    ): IOpacityEngineLayer | undefined {
        return this._dart_pushOpacity(alpha, {
            ...pushOpacityDefaultProps,
            ...props,
        });
    }
    public pushColorFilter(
        filter: IColorFilter,
        props?: { oldLayer?: IColorFilterEngineLayer | undefined }
    ): IColorFilterEngineLayer | undefined {
        return this._dart_pushColorFilter(filter, props);
    }
    public pushImageFilter(
        filter: IImageFilter,
        props?: { oldLayer?: IImageFilterEngineLayer | undefined }
    ): IImageFilterEngineLayer | undefined {
        return this._dart_pushImageFilter(filter, props);
    }
    public pushBackdropFilter(
        filter: IImageFilter,
        props?: { oldLayer?: IBackdropFilterEngineLayer | undefined }
    ): IBackdropFilterEngineLayer | undefined {
        return this._dart_pushBackdropFilter(filter, props);
    }
    public pushShaderMask(
        shader: IShader,
        maskRect: IRect,
        blendMode: BlendMode,
        props?: { oldLayer?: IShaderMaskEngineLayer | undefined }
    ): IShaderMaskEngineLayer | undefined {
        return this._dart_pushShaderMask(shader, maskRect, blendMode, props);
    }
    public pushPhysicalShape(props: {
        clipBehavior?: Clip;
        oldLayer?: IPhysicalShapeEngineLayer | undefined;
        shadowColor?: IColor | undefined;
        color: IColor;
        elevation: number;
        path: IPath;
    }): IPhysicalShapeEngineLayer | undefined {
        return this._dart_pushPhysicalShape({
            ...pushPhysicalShapeDefaultProps,
            ...props,
        });
    }
    public pop(): void {
        return this._dart_pop();
    }
    public addRetained(retainedLayer: IEngineLayer): void {
        return this._dart_addRetained(retainedLayer);
    }
    public addPerformanceOverlay(enabledOptions: number, bounds: IRect): void {
        return this._dart_addPerformanceOverlay(enabledOptions, bounds);
    }
    public addPicture(
        offset: IOffset,
        picture: IPicture,
        props: { isComplexHint?: boolean; willChangeHint?: boolean }
    ): void {
        return this._dart_addPicture(offset, picture, {
            ...addPictureDefaultProps,
            ...props,
        });
    }
    public addTexture(
        textureId: number,
        props: {
            filterQuality?: FilterQuality;
            freeze?: boolean;
            height?: number;
            offset?: IOffset;
            width?: number;
        }
    ): void {
        return this._dart_addTexture(textureId, {
            ...addTextureDefaultProps,
            ...props,
        });
    }
    public addPlatformView(
        viewId: number,
        props: { height?: number; offset?: IOffset; width?: number }
    ): void {
        return this._dart_addPlatformView(viewId, {
            ...addPlatformViewDefaultProps,
            ...props,
        });
    }
    public addChildScene(props: {
        height?: number;
        hitTestable?: boolean;
        offset?: IOffset;
        width?: number;
        sceneHost: ISceneHost;
    }): void {
        return this._dart_addChildScene({
            ...addChildSceneDefaultProps,
            ...props,
        });
    }
    public setRasterizerTracingThreshold(frameInterval: number): void {
        return this._dart_setRasterizerTracingThreshold(frameInterval);
    }
    public setCheckerboardRasterCacheImages(checkerboard: boolean): void {
        return this._dart_setCheckerboardRasterCacheImages(checkerboard);
    }
    public setCheckerboardOffscreenLayers(checkerboard: boolean): void {
        return this._dart_setCheckerboardOffscreenLayers(checkerboard);
    }
    public build(): IScene {
        return this._dart_build();
    }
}
const pushClipRectDefaultProps = {
    clipBehavior: Clip.antiAlias,
};
const pushClipRRectDefaultProps = {
    clipBehavior: Clip.antiAlias,
};
const pushClipPathDefaultProps = {
    clipBehavior: Clip.antiAlias,
};
const pushOpacityDefaultProps = {
    offset: Offset.zero,
};
const pushPhysicalShapeDefaultProps = {
    clipBehavior: Clip.none,
};
const addPictureDefaultProps = {
    isComplexHint: false,
    willChangeHint: false,
};
const addTextureDefaultProps = {
    filterQuality: FilterQuality.low,
    freeze: false,
    height: 0.0,
    offset: Offset.zero,
    width: 0.0,
};
const addPlatformViewDefaultProps = {
    height: 0.0,
    offset: Offset.zero,
    width: 0.0,
};
const addChildSceneDefaultProps = {
    height: 0.0,
    hitTestable: true,
    offset: Offset.zero,
    width: 0.0,
};
