import { BlendMode } from "./blendMode";
import { IColor } from "./color";
import { IColorFilter } from "./colorFilter";
import { FilterQuality } from "./filterQuality";
import { IImageFilter } from "./imageFilter";
import { IMaskFilter } from "./maskFilter";
import { PaintingStyle } from "./paintingStyle";
import { IShader } from "./shader";
import { StrokeCap } from "./strokeCap";
import { StrokeJoin } from "./strokeJoin";
declare const dart: {
    ui: {
        paint: (this: void, paint: IPaint) => IPaint;
    };
};
export interface IPaint {
    getIsAntiAlias: () => boolean;
    setIsAntiAlias: (value: boolean) => void;
    getColor: () => IColor;
    setColor: (value: IColor) => void;
    getBlendMode: () => BlendMode;
    setBlendMode: (value: BlendMode) => void;
    getStyle: () => PaintingStyle;
    setStyle: (value: PaintingStyle) => void;
    getStrokeWidth: () => number;
    setStrokeWidth: (value: number) => void;
    getStrokeCap: () => StrokeCap;
    setStrokeCap: (value: StrokeCap) => void;
    getStrokeJoin: () => StrokeJoin;
    setStrokeJoin: (value: StrokeJoin) => void;
    getStrokeMiterLimit: () => number;
    setStrokeMiterLimit: (value: number) => void;
    getMaskFilter: () => IMaskFilter | undefined;
    setMaskFilter: (value?: IMaskFilter | undefined) => void;
    getFilterQuality: () => FilterQuality;
    setFilterQuality: (value: FilterQuality) => void;
    getShader: () => IShader | undefined;
    setShader: (value?: IShader | undefined) => void;
    getColorFilter: () => IColorFilter | undefined;
    setColorFilter: (value?: IColorFilter | undefined) => void;
    getImageFilter: () => IImageFilter | undefined;
    setImageFilter: (value?: IImageFilter | undefined) => void;
    getInvertColors: () => boolean;
    setInvertColors: (value: boolean) => void;
    toString: () => string;
}
export class Paint {
    private static _kIsAntiAliasIndex = 0;
    private static _kColorIndex = 1;
    private static _kBlendModeIndex = 2;
    private static _kStyleIndex = 3;
    private static _kStrokeWidthIndex = 4;
    private static _kStrokeCapIndex = 5;
    private static _kStrokeJoinIndex = 6;
    private static _kStrokeMiterLimitIndex = 7;
    private static _kFilterQualityIndex = 8;
    private static _kMaskFilterIndex = 9;
    private static _kMaskFilterBlurStyleIndex = 10;
    private static _kMaskFilterSigmaIndex = 11;
    private static _kInvertColorIndex = 12;
    private static _kDitherIndex = 13;
    private static _kIsAntiAliasOffset = Paint._kIsAntiAliasIndex << 2;
    private static _kColorOffset = Paint._kColorIndex << 2;
    private static _kBlendModeOffset = Paint._kBlendModeIndex << 2;
    private static _kStyleOffset = Paint._kStyleIndex << 2;
    private static _kStrokeWidthOffset = Paint._kStrokeWidthIndex << 2;
    private static _kStrokeCapOffset = Paint._kStrokeCapIndex << 2;
    private static _kStrokeJoinOffset = Paint._kStrokeJoinIndex << 2;
    private static _kStrokeMiterLimitOffset =
        Paint._kStrokeMiterLimitIndex << 2;
    private static _kFilterQualityOffset = Paint._kFilterQualityIndex << 2;
    private static _kMaskFilterOffset = Paint._kMaskFilterIndex << 2;
    private static _kMaskFilterBlurStyleOffset =
        Paint._kMaskFilterBlurStyleIndex << 2;
    private static _kMaskFilterSigmaOffset = Paint._kMaskFilterSigmaIndex << 2;
    private static _kInvertColorOffset = Paint._kInvertColorIndex << 2;
    private static _kDitherOffset = Paint._kDitherIndex << 2;
    private static _kDataByteCount = 56;
    private static _kShaderIndex = 0;
    private static _kColorFilterIndex = 1;
    private static _kImageFilterIndex = 2;
    private static _kObjectCount = 3;
    private static _kColorDefault = 0xff000000;
    private static _kStrokeMiterLimitDefault = 4.0;
    public constructor() {
        dart.ui.paint(this);
    }
    private readonly _dart_getIsAntiAlias: () => boolean = undefined as any;
    private readonly _dart_setIsAntiAlias: (value: boolean) => void =
        undefined as any;
    private readonly _dart_getColor: () => IColor = undefined as any;
    private readonly _dart_setColor: (value: IColor) => void = undefined as any;
    private readonly _dart_getBlendMode: () => BlendMode = undefined as any;
    private readonly _dart_setBlendMode: (value: BlendMode) => void =
        undefined as any;
    private readonly _dart_getStyle: () => PaintingStyle = undefined as any;
    private readonly _dart_setStyle: (value: PaintingStyle) => void =
        undefined as any;
    private readonly _dart_getStrokeWidth: () => number = undefined as any;
    private readonly _dart_setStrokeWidth: (value: number) => void =
        undefined as any;
    private readonly _dart_getStrokeCap: () => StrokeCap = undefined as any;
    private readonly _dart_setStrokeCap: (value: StrokeCap) => void =
        undefined as any;
    private readonly _dart_getStrokeJoin: () => StrokeJoin = undefined as any;
    private readonly _dart_setStrokeJoin: (value: StrokeJoin) => void =
        undefined as any;
    private readonly _dart_getStrokeMiterLimit: () => number = undefined as any;
    private readonly _dart_setStrokeMiterLimit: (value: number) => void =
        undefined as any;
    private readonly _dart_getMaskFilter: () => IMaskFilter | undefined =
        undefined as any;
    private readonly _dart_setMaskFilter: (
        value?: IMaskFilter | undefined
    ) => void = undefined as any;
    private readonly _dart_getFilterQuality: () => FilterQuality =
        undefined as any;
    private readonly _dart_setFilterQuality: (value: FilterQuality) => void =
        undefined as any;
    private readonly _dart_getShader: () => IShader | undefined =
        undefined as any;
    private readonly _dart_setShader: (value?: IShader | undefined) => void =
        undefined as any;
    private readonly _dart_getColorFilter: () => IColorFilter | undefined =
        undefined as any;
    private readonly _dart_setColorFilter: (
        value?: IColorFilter | undefined
    ) => void = undefined as any;
    private readonly _dart_getImageFilter: () => IImageFilter | undefined =
        undefined as any;
    private readonly _dart_setImageFilter: (
        value?: IImageFilter | undefined
    ) => void = undefined as any;
    private readonly _dart_getInvertColors: () => boolean = undefined as any;
    private readonly _dart_setInvertColors: (value: boolean) => void =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getIsAntiAlias(): boolean {
        return this._dart_getIsAntiAlias();
    }
    public setIsAntiAlias(value: boolean): void {
        return this._dart_setIsAntiAlias(value);
    }
    public getColor(): IColor {
        return this._dart_getColor();
    }
    public setColor(value: IColor): void {
        return this._dart_setColor(value);
    }
    public getBlendMode(): BlendMode {
        return this._dart_getBlendMode();
    }
    public setBlendMode(value: BlendMode): void {
        return this._dart_setBlendMode(value);
    }
    public getStyle(): PaintingStyle {
        return this._dart_getStyle();
    }
    public setStyle(value: PaintingStyle): void {
        return this._dart_setStyle(value);
    }
    public getStrokeWidth(): number {
        return this._dart_getStrokeWidth();
    }
    public setStrokeWidth(value: number): void {
        return this._dart_setStrokeWidth(value);
    }
    public getStrokeCap(): StrokeCap {
        return this._dart_getStrokeCap();
    }
    public setStrokeCap(value: StrokeCap): void {
        return this._dart_setStrokeCap(value);
    }
    public getStrokeJoin(): StrokeJoin {
        return this._dart_getStrokeJoin();
    }
    public setStrokeJoin(value: StrokeJoin): void {
        return this._dart_setStrokeJoin(value);
    }
    public getStrokeMiterLimit(): number {
        return this._dart_getStrokeMiterLimit();
    }
    public setStrokeMiterLimit(value: number): void {
        return this._dart_setStrokeMiterLimit(value);
    }
    public getMaskFilter(): IMaskFilter | undefined {
        return this._dart_getMaskFilter();
    }
    public setMaskFilter(value?: IMaskFilter | undefined): void {
        return this._dart_setMaskFilter(value);
    }
    public getFilterQuality(): FilterQuality {
        return this._dart_getFilterQuality();
    }
    public setFilterQuality(value: FilterQuality): void {
        return this._dart_setFilterQuality(value);
    }
    public getShader(): IShader | undefined {
        return this._dart_getShader();
    }
    public setShader(value?: IShader | undefined): void {
        return this._dart_setShader(value);
    }
    public getColorFilter(): IColorFilter | undefined {
        return this._dart_getColorFilter();
    }
    public setColorFilter(value?: IColorFilter | undefined): void {
        return this._dart_setColorFilter(value);
    }
    public getImageFilter(): IImageFilter | undefined {
        return this._dart_getImageFilter();
    }
    public setImageFilter(value?: IImageFilter | undefined): void {
        return this._dart_setImageFilter(value);
    }
    public getInvertColors(): boolean {
        return this._dart_getInvertColors();
    }
    public setInvertColors(value: boolean): void {
        return this._dart_setInvertColors(value);
    }
    public toString(): string {
        return this._dart_toString();
    }
}
