import { IList } from "../../dart/core/list";
import { IStackTrace } from "../../dart/core/stackTrace";
import { ICanvas } from "../../dart/ui/canvas";
import { IColor } from "../../dart/ui/color";
import { IOffset, Offset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
import { IAnimation } from "../animation/animation";
import { IListenable } from "../foundation/listenable";
import { IImageConfiguration } from "../painting/imageConfiguration";
import { IImageProvider } from "../painting/imageProvider";
import { ICustomPainter } from "../rendering/customPainter";
import { ICustomPainterSemantics } from "../rendering/customPainterSemantics";
import { IToggleablePainter } from "./toggleablePainter";
declare const flutter: {
    material: {
        _switchPainter: (
            this: void,
            _switchPainter: I_SwitchPainter
        ) => I_SwitchPainter;
    };
};
export interface I_SwitchPainter {
    getActiveThumbImage: () => IImageProvider<Object> | undefined;
    setActiveThumbImage: (value?: IImageProvider<Object> | undefined) => void;
    getOnActiveThumbImageError: () => (
        exception: Object,
        stackTrace?: IStackTrace | undefined
    ) => void | undefined;
    setOnActiveThumbImageError: (
        value?: (
            exception: Object,
            stackTrace?: IStackTrace | undefined
        ) => void
    ) => void;
    getInactiveThumbImage: () => IImageProvider<Object> | undefined;
    setInactiveThumbImage: (value?: IImageProvider<Object> | undefined) => void;
    getOnInactiveThumbImageError: () => (
        exception: Object,
        stackTrace?: IStackTrace | undefined
    ) => void | undefined;
    setOnInactiveThumbImageError: (
        value?: (
            exception: Object,
            stackTrace?: IStackTrace | undefined
        ) => void
    ) => void;
    getActiveTrackColor: () => IColor;
    setActiveTrackColor: (value: IColor) => void;
    getInactiveTrackColor: () => IColor;
    setInactiveTrackColor: (value: IColor) => void;
    getConfiguration: () => IImageConfiguration;
    setConfiguration: (value: IImageConfiguration) => void;
    getTextDirection: () => TextDirection;
    setTextDirection: (value: TextDirection) => void;
    getSurfaceColor: () => IColor;
    setSurfaceColor: (value: IColor) => void;
    getIsInteractive: () => boolean;
    setIsInteractive: (value: boolean) => void;
    getTrackInnerLength: () => number;
    setTrackInnerLength: (value: number) => void;
    paint: (canvas: ICanvas, size: ISize) => void;
    dispose: () => void;
    paintRadialReaction: (props: {
        offset: IOffset;
        canvas: ICanvas;
        origin: IOffset;
    }) => void;
    shouldRepaint: (oldDelegate: unknown) => boolean;
    hitTest: (position: IOffset) => boolean | undefined;
    shouldRebuildSemantics: (oldDelegate: unknown) => boolean;
    getPosition: () => IAnimation<number>;
    setPosition: (value: IAnimation<number>) => void;
    getReaction: () => IAnimation<number>;
    setReaction: (value: IAnimation<number>) => void;
    getReactionFocusFade: () => IAnimation<number>;
    setReactionFocusFade: (value: IAnimation<number>) => void;
    getReactionHoverFade: () => IAnimation<number>;
    setReactionHoverFade: (value: IAnimation<number>) => void;
    getActiveColor: () => IColor;
    setActiveColor: (value: IColor) => void;
    getInactiveColor: () => IColor;
    setInactiveColor: (value: IColor) => void;
    getInactiveReactionColor: () => IColor;
    setInactiveReactionColor: (value: IColor) => void;
    getReactionColor: () => IColor;
    setReactionColor: (value: IColor) => void;
    getHoverColor: () => IColor;
    setHoverColor: (value: IColor) => void;
    getFocusColor: () => IColor;
    setFocusColor: (value: IColor) => void;
    getSplashRadius: () => number;
    setSplashRadius: (value: number) => void;
    getDownPosition: () => IOffset | undefined;
    setDownPosition: (value?: IOffset | undefined) => void;
    getIsFocused: () => boolean;
    setIsFocused: (value?: boolean | undefined) => void;
    getIsHovered: () => boolean;
    setIsHovered: (value?: boolean | undefined) => void;
    getSemanticsBuilder: () => (
        size: ISize
    ) => IList<ICustomPainterSemantics> | undefined;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    getHasListeners: () => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class _SwitchPainter
    implements IToggleablePainter, ICustomPainter, IListenable
{
    public constructor() {
        flutter.material._switchPainter(this);
    }
    private readonly _dart_getActiveThumbImage: () =>
        | IImageProvider<Object>
        | undefined = undefined as any;
    private readonly _dart_setActiveThumbImage: (
        value?: IImageProvider<Object> | undefined
    ) => void = undefined as any;
    private readonly _dart_getOnActiveThumbImageError: () => (
        exception: Object,
        stackTrace?: IStackTrace | undefined
    ) => void | undefined = undefined as any;
    private readonly _dart_setOnActiveThumbImageError: (
        value?: (
            exception: Object,
            stackTrace?: IStackTrace | undefined
        ) => void
    ) => void = undefined as any;
    private readonly _dart_getInactiveThumbImage: () =>
        | IImageProvider<Object>
        | undefined = undefined as any;
    private readonly _dart_setInactiveThumbImage: (
        value?: IImageProvider<Object> | undefined
    ) => void = undefined as any;
    private readonly _dart_getOnInactiveThumbImageError: () => (
        exception: Object,
        stackTrace?: IStackTrace | undefined
    ) => void | undefined = undefined as any;
    private readonly _dart_setOnInactiveThumbImageError: (
        value?: (
            exception: Object,
            stackTrace?: IStackTrace | undefined
        ) => void
    ) => void = undefined as any;
    private readonly _dart_getActiveTrackColor: () => IColor = undefined as any;
    private readonly _dart_setActiveTrackColor: (value: IColor) => void =
        undefined as any;
    private readonly _dart_getInactiveTrackColor: () => IColor =
        undefined as any;
    private readonly _dart_setInactiveTrackColor: (value: IColor) => void =
        undefined as any;
    private readonly _dart_getConfiguration: () => IImageConfiguration =
        undefined as any;
    private readonly _dart_setConfiguration: (
        value: IImageConfiguration
    ) => void = undefined as any;
    private readonly _dart_getTextDirection: () => TextDirection =
        undefined as any;
    private readonly _dart_setTextDirection: (value: TextDirection) => void =
        undefined as any;
    private readonly _dart_getSurfaceColor: () => IColor = undefined as any;
    private readonly _dart_setSurfaceColor: (value: IColor) => void =
        undefined as any;
    private readonly _dart_getIsInteractive: () => boolean = undefined as any;
    private readonly _dart_setIsInteractive: (value: boolean) => void =
        undefined as any;
    private readonly _dart_getTrackInnerLength: () => number = undefined as any;
    private readonly _dart_setTrackInnerLength: (value: number) => void =
        undefined as any;
    private readonly _dart_paint: (canvas: ICanvas, size: ISize) => void =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_paintRadialReaction: (props: {
        offset: IOffset;
        canvas: ICanvas;
        origin: IOffset;
    }) => void = undefined as any;
    private readonly _dart_shouldRepaint: (oldDelegate: any) => boolean =
        undefined as any;
    private readonly _dart_hitTest: (position: IOffset) => boolean | undefined =
        undefined as any;
    private readonly _dart_shouldRebuildSemantics: (
        oldDelegate: any
    ) => boolean = undefined as any;
    private readonly _dart_getPosition: () => IAnimation<number> =
        undefined as any;
    private readonly _dart_setPosition: (value: IAnimation<number>) => void =
        undefined as any;
    private readonly _dart_getReaction: () => IAnimation<number> =
        undefined as any;
    private readonly _dart_setReaction: (value: IAnimation<number>) => void =
        undefined as any;
    private readonly _dart_getReactionFocusFade: () => IAnimation<number> =
        undefined as any;
    private readonly _dart_setReactionFocusFade: (
        value: IAnimation<number>
    ) => void = undefined as any;
    private readonly _dart_getReactionHoverFade: () => IAnimation<number> =
        undefined as any;
    private readonly _dart_setReactionHoverFade: (
        value: IAnimation<number>
    ) => void = undefined as any;
    private readonly _dart_getActiveColor: () => IColor = undefined as any;
    private readonly _dart_setActiveColor: (value: IColor) => void =
        undefined as any;
    private readonly _dart_getInactiveColor: () => IColor = undefined as any;
    private readonly _dart_setInactiveColor: (value: IColor) => void =
        undefined as any;
    private readonly _dart_getInactiveReactionColor: () => IColor =
        undefined as any;
    private readonly _dart_setInactiveReactionColor: (value: IColor) => void =
        undefined as any;
    private readonly _dart_getReactionColor: () => IColor = undefined as any;
    private readonly _dart_setReactionColor: (value: IColor) => void =
        undefined as any;
    private readonly _dart_getHoverColor: () => IColor = undefined as any;
    private readonly _dart_setHoverColor: (value: IColor) => void =
        undefined as any;
    private readonly _dart_getFocusColor: () => IColor = undefined as any;
    private readonly _dart_setFocusColor: (value: IColor) => void =
        undefined as any;
    private readonly _dart_getSplashRadius: () => number = undefined as any;
    private readonly _dart_setSplashRadius: (value: number) => void =
        undefined as any;
    private readonly _dart_getDownPosition: () => IOffset | undefined =
        undefined as any;
    private readonly _dart_setDownPosition: (
        value?: IOffset | undefined
    ) => void = undefined as any;
    private readonly _dart_getIsFocused: () => boolean = undefined as any;
    private readonly _dart_setIsFocused: (value?: boolean | undefined) => void =
        undefined as any;
    private readonly _dart_getIsHovered: () => boolean = undefined as any;
    private readonly _dart_setIsHovered: (value?: boolean | undefined) => void =
        undefined as any;
    private readonly _dart_getSemanticsBuilder: () => (
        size: ISize
    ) => IList<ICustomPainterSemantics> | undefined = undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getActiveThumbImage(): IImageProvider<Object> | undefined {
        return this._dart_getActiveThumbImage();
    }
    public setActiveThumbImage(
        value?: IImageProvider<Object> | undefined
    ): void {
        return this._dart_setActiveThumbImage(value);
    }
    public getOnActiveThumbImageError(): (
        exception: Object,
        stackTrace?: IStackTrace | undefined
    ) => void | undefined {
        return this._dart_getOnActiveThumbImageError();
    }
    public setOnActiveThumbImageError(
        value?: (
            exception: Object,
            stackTrace?: IStackTrace | undefined
        ) => void
    ): void {
        return this._dart_setOnActiveThumbImageError(value);
    }
    public getInactiveThumbImage(): IImageProvider<Object> | undefined {
        return this._dart_getInactiveThumbImage();
    }
    public setInactiveThumbImage(
        value?: IImageProvider<Object> | undefined
    ): void {
        return this._dart_setInactiveThumbImage(value);
    }
    public getOnInactiveThumbImageError(): (
        exception: Object,
        stackTrace?: IStackTrace | undefined
    ) => void | undefined {
        return this._dart_getOnInactiveThumbImageError();
    }
    public setOnInactiveThumbImageError(
        value?: (
            exception: Object,
            stackTrace?: IStackTrace | undefined
        ) => void
    ): void {
        return this._dart_setOnInactiveThumbImageError(value);
    }
    public getActiveTrackColor(): IColor {
        return this._dart_getActiveTrackColor();
    }
    public setActiveTrackColor(value: IColor): void {
        return this._dart_setActiveTrackColor(value);
    }
    public getInactiveTrackColor(): IColor {
        return this._dart_getInactiveTrackColor();
    }
    public setInactiveTrackColor(value: IColor): void {
        return this._dart_setInactiveTrackColor(value);
    }
    public getConfiguration(): IImageConfiguration {
        return this._dart_getConfiguration();
    }
    public setConfiguration(value: IImageConfiguration): void {
        return this._dart_setConfiguration(value);
    }
    public getTextDirection(): TextDirection {
        return this._dart_getTextDirection();
    }
    public setTextDirection(value: TextDirection): void {
        return this._dart_setTextDirection(value);
    }
    public getSurfaceColor(): IColor {
        return this._dart_getSurfaceColor();
    }
    public setSurfaceColor(value: IColor): void {
        return this._dart_setSurfaceColor(value);
    }
    public getIsInteractive(): boolean {
        return this._dart_getIsInteractive();
    }
    public setIsInteractive(value: boolean): void {
        return this._dart_setIsInteractive(value);
    }
    public getTrackInnerLength(): number {
        return this._dart_getTrackInnerLength();
    }
    public setTrackInnerLength(value: number): void {
        return this._dart_setTrackInnerLength(value);
    }
    public paint(canvas: ICanvas, size: ISize): void {
        return this._dart_paint(canvas, size);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public paintRadialReaction(props: {
        offset?: IOffset;
        canvas: ICanvas;
        origin: IOffset;
    }): void {
        return this._dart_paintRadialReaction({
            ...paintRadialReactionDefaultProps,
            ...props,
        });
    }
    public shouldRepaint(oldDelegate: any): boolean {
        return this._dart_shouldRepaint(oldDelegate);
    }
    public hitTest(position: IOffset): boolean | undefined {
        return this._dart_hitTest(position);
    }
    public shouldRebuildSemantics(oldDelegate: any): boolean {
        return this._dart_shouldRebuildSemantics(oldDelegate);
    }
    public getPosition(): IAnimation<number> {
        return this._dart_getPosition();
    }
    public setPosition(value: IAnimation<number>): void {
        return this._dart_setPosition(value);
    }
    public getReaction(): IAnimation<number> {
        return this._dart_getReaction();
    }
    public setReaction(value: IAnimation<number>): void {
        return this._dart_setReaction(value);
    }
    public getReactionFocusFade(): IAnimation<number> {
        return this._dart_getReactionFocusFade();
    }
    public setReactionFocusFade(value: IAnimation<number>): void {
        return this._dart_setReactionFocusFade(value);
    }
    public getReactionHoverFade(): IAnimation<number> {
        return this._dart_getReactionHoverFade();
    }
    public setReactionHoverFade(value: IAnimation<number>): void {
        return this._dart_setReactionHoverFade(value);
    }
    public getActiveColor(): IColor {
        return this._dart_getActiveColor();
    }
    public setActiveColor(value: IColor): void {
        return this._dart_setActiveColor(value);
    }
    public getInactiveColor(): IColor {
        return this._dart_getInactiveColor();
    }
    public setInactiveColor(value: IColor): void {
        return this._dart_setInactiveColor(value);
    }
    public getInactiveReactionColor(): IColor {
        return this._dart_getInactiveReactionColor();
    }
    public setInactiveReactionColor(value: IColor): void {
        return this._dart_setInactiveReactionColor(value);
    }
    public getReactionColor(): IColor {
        return this._dart_getReactionColor();
    }
    public setReactionColor(value: IColor): void {
        return this._dart_setReactionColor(value);
    }
    public getHoverColor(): IColor {
        return this._dart_getHoverColor();
    }
    public setHoverColor(value: IColor): void {
        return this._dart_setHoverColor(value);
    }
    public getFocusColor(): IColor {
        return this._dart_getFocusColor();
    }
    public setFocusColor(value: IColor): void {
        return this._dart_setFocusColor(value);
    }
    public getSplashRadius(): number {
        return this._dart_getSplashRadius();
    }
    public setSplashRadius(value: number): void {
        return this._dart_setSplashRadius(value);
    }
    public getDownPosition(): IOffset | undefined {
        return this._dart_getDownPosition();
    }
    public setDownPosition(value?: IOffset | undefined): void {
        return this._dart_setDownPosition(value);
    }
    public getIsFocused(): boolean {
        return this._dart_getIsFocused();
    }
    public setIsFocused(value?: boolean | undefined): void {
        return this._dart_setIsFocused(value);
    }
    public getIsHovered(): boolean {
        return this._dart_getIsHovered();
    }
    public setIsHovered(value?: boolean | undefined): void {
        return this._dart_setIsHovered(value);
    }
    public getSemanticsBuilder(): (
        size: ISize
    ) => IList<ICustomPainterSemantics> | undefined {
        return this._dart_getSemanticsBuilder();
    }
    public addListener(listener: () => void): void {
        return this._dart_addListener(listener);
    }
    public removeListener(listener: () => void): void {
        return this._dart_removeListener(listener);
    }
    public notifyListeners(): void {
        return this._dart_notifyListeners();
    }
    public getHasListeners(): boolean {
        return this._dart_getHasListeners();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const paintRadialReactionDefaultProps = {
    offset: Offset.zero,
};
