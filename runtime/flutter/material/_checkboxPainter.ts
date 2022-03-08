import { IList } from "../../dart/core/list";
import { ICanvas } from "../../dart/ui/canvas";
import { IColor } from "../../dart/ui/color";
import { IOffset, Offset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { IAnimation } from "../animation/animation";
import { IListenable } from "../foundation/listenable";
import { IBorderSide } from "../painting/borderSide";
import { IOutlinedBorder } from "../painting/outlinedBorder";
import { ICustomPainter } from "../rendering/customPainter";
import { ICustomPainterSemantics } from "../rendering/customPainterSemantics";
import { IToggleablePainter } from "./toggleablePainter";
declare const flutter: {
    material: {
        _checkboxPainter: (
            this: void,
            _checkboxPainter: I_CheckboxPainter
        ) => I_CheckboxPainter;
    };
};
export interface I_CheckboxPainter {
    getCheckColor: () => IColor;
    setCheckColor: (value: IColor) => void;
    getValue: () => boolean | undefined;
    setValue: (value?: boolean | undefined) => void;
    getPreviousValue: () => boolean | undefined;
    setPreviousValue: (value?: boolean | undefined) => void;
    getShape: () => IOutlinedBorder;
    setShape: (value: IOutlinedBorder) => void;
    getSide: () => IBorderSide | undefined;
    setSide: (value?: IBorderSide | undefined) => void;
    paint: (canvas: ICanvas, size: ISize) => void;
    paintRadialReaction: (props: {
        offset: IOffset;
        canvas: ICanvas;
        origin: IOffset;
    }) => void;
    dispose: () => void;
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
export class _CheckboxPainter
    implements IToggleablePainter, ICustomPainter, IListenable
{
    public constructor() {
        flutter.material._checkboxPainter(this);
    }
    private readonly _dart_getCheckColor: () => IColor = undefined as any;
    private readonly _dart_setCheckColor: (value: IColor) => void =
        undefined as any;
    private readonly _dart_getValue: () => boolean | undefined =
        undefined as any;
    private readonly _dart_setValue: (value?: boolean | undefined) => void =
        undefined as any;
    private readonly _dart_getPreviousValue: () => boolean | undefined =
        undefined as any;
    private readonly _dart_setPreviousValue: (
        value?: boolean | undefined
    ) => void = undefined as any;
    private readonly _dart_getShape: () => IOutlinedBorder = undefined as any;
    private readonly _dart_setShape: (value: IOutlinedBorder) => void =
        undefined as any;
    private readonly _dart_getSide: () => IBorderSide | undefined =
        undefined as any;
    private readonly _dart_setSide: (value?: IBorderSide | undefined) => void =
        undefined as any;
    private readonly _dart_paint: (canvas: ICanvas, size: ISize) => void =
        undefined as any;
    private readonly _dart_paintRadialReaction: (props: {
        offset: IOffset;
        canvas: ICanvas;
        origin: IOffset;
    }) => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
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
    public getCheckColor(): IColor {
        return this._dart_getCheckColor();
    }
    public setCheckColor(value: IColor): void {
        return this._dart_setCheckColor(value);
    }
    public getValue(): boolean | undefined {
        return this._dart_getValue();
    }
    public setValue(value?: boolean | undefined): void {
        return this._dart_setValue(value);
    }
    public getPreviousValue(): boolean | undefined {
        return this._dart_getPreviousValue();
    }
    public setPreviousValue(value?: boolean | undefined): void {
        return this._dart_setPreviousValue(value);
    }
    public getShape(): IOutlinedBorder {
        return this._dart_getShape();
    }
    public setShape(value: IOutlinedBorder): void {
        return this._dart_setShape(value);
    }
    public getSide(): IBorderSide | undefined {
        return this._dart_getSide();
    }
    public setSide(value?: IBorderSide | undefined): void {
        return this._dart_setSide(value);
    }
    public paint(canvas: ICanvas, size: ISize): void {
        return this._dart_paint(canvas, size);
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
    public dispose(): void {
        return this._dart_dispose();
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
