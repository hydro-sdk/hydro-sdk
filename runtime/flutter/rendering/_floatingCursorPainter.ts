import { ICanvas } from "../../dart/ui/canvas";
import { IColor } from "../../dart/ui/color";
import { IOffset } from "../../dart/ui/offset";
import { IPaint } from "../../dart/ui/paint";
import { IRadius } from "../../dart/ui/radius";
import { IRect } from "../../dart/ui/rect";
import { ISize } from "../../dart/ui/size";
import { ITextPosition } from "../../dart/ui/textPosition";
import { IListenable } from "../foundation/listenable";
import { IRenderEditable } from "./renderEditable";
import { IRenderEditablePainter } from "./renderEditablePainter";
declare const flutter: {
    rendering: {
        _floatingCursorPainter: (
            this: void,
            _floatingCursorPainter: I_FloatingCursorPainter,
            caretPaintCallback: (caretRect: IRect) => void
        ) => I_FloatingCursorPainter;
    };
};
export interface I_FloatingCursorPainter {
    showRegularCaret: boolean;
    caretPaint: IPaint;
    floatingCursorPaint: IPaint;
    getShouldPaint: () => boolean;
    setShouldPaint: (value: boolean) => void;
    getCaretColor: () => IColor | undefined;
    setCaretColor: (value?: IColor | undefined) => void;
    getCursorRadius: () => IRadius | undefined;
    setCursorRadius: (value?: IRadius | undefined) => void;
    getCursorOffset: () => IOffset;
    setCursorOffset: (value: IOffset) => void;
    getBackgroundCursorColor: () => IColor | undefined;
    setBackgroundCursorColor: (value?: IColor | undefined) => void;
    getFloatingCursorRect: () => IRect | undefined;
    setFloatingCursorRect: (value?: IRect | undefined) => void;
    paintRegularCursor: (
        canvas: ICanvas,
        renderEditable: IRenderEditable,
        caretColor: IColor,
        textPosition: ITextPosition
    ) => void;
    paint: (
        canvas: ICanvas,
        size: ISize,
        renderEditable: IRenderEditable
    ) => void;
    shouldRepaint: (
        oldDelegate?: IRenderEditablePainter | undefined
    ) => boolean;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    dispose: () => void;
    getHasListeners: () => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class _FloatingCursorPainter
    implements IRenderEditablePainter, IListenable
{
    public readonly showRegularCaret: boolean = undefined as any;
    public readonly caretPaint: IPaint = undefined as any;
    public readonly floatingCursorPaint: IPaint = undefined as any;
    public constructor(caretPaintCallback: (caretRect: IRect) => void) {
        flutter.rendering._floatingCursorPainter(this, caretPaintCallback);
    }
    private readonly _dart_getShouldPaint: () => boolean = undefined as any;
    private readonly _dart_setShouldPaint: (value: boolean) => void =
        undefined as any;
    private readonly _dart_getCaretColor: () => IColor | undefined =
        undefined as any;
    private readonly _dart_setCaretColor: (value?: IColor | undefined) => void =
        undefined as any;
    private readonly _dart_getCursorRadius: () => IRadius | undefined =
        undefined as any;
    private readonly _dart_setCursorRadius: (
        value?: IRadius | undefined
    ) => void = undefined as any;
    private readonly _dart_getCursorOffset: () => IOffset = undefined as any;
    private readonly _dart_setCursorOffset: (value: IOffset) => void =
        undefined as any;
    private readonly _dart_getBackgroundCursorColor: () => IColor | undefined =
        undefined as any;
    private readonly _dart_setBackgroundCursorColor: (
        value?: IColor | undefined
    ) => void = undefined as any;
    private readonly _dart_getFloatingCursorRect: () => IRect | undefined =
        undefined as any;
    private readonly _dart_setFloatingCursorRect: (
        value?: IRect | undefined
    ) => void = undefined as any;
    private readonly _dart_paintRegularCursor: (
        canvas: ICanvas,
        renderEditable: IRenderEditable,
        caretColor: IColor,
        textPosition: ITextPosition
    ) => void = undefined as any;
    private readonly _dart_paint: (
        canvas: ICanvas,
        size: ISize,
        renderEditable: IRenderEditable
    ) => void = undefined as any;
    private readonly _dart_shouldRepaint: (
        oldDelegate?: IRenderEditablePainter | undefined
    ) => boolean = undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getShouldPaint(): boolean {
        return this._dart_getShouldPaint();
    }
    public setShouldPaint(value: boolean): void {
        return this._dart_setShouldPaint(value);
    }
    public getCaretColor(): IColor | undefined {
        return this._dart_getCaretColor();
    }
    public setCaretColor(value?: IColor | undefined): void {
        return this._dart_setCaretColor(value);
    }
    public getCursorRadius(): IRadius | undefined {
        return this._dart_getCursorRadius();
    }
    public setCursorRadius(value?: IRadius | undefined): void {
        return this._dart_setCursorRadius(value);
    }
    public getCursorOffset(): IOffset {
        return this._dart_getCursorOffset();
    }
    public setCursorOffset(value: IOffset): void {
        return this._dart_setCursorOffset(value);
    }
    public getBackgroundCursorColor(): IColor | undefined {
        return this._dart_getBackgroundCursorColor();
    }
    public setBackgroundCursorColor(value?: IColor | undefined): void {
        return this._dart_setBackgroundCursorColor(value);
    }
    public getFloatingCursorRect(): IRect | undefined {
        return this._dart_getFloatingCursorRect();
    }
    public setFloatingCursorRect(value?: IRect | undefined): void {
        return this._dart_setFloatingCursorRect(value);
    }
    public paintRegularCursor(
        canvas: ICanvas,
        renderEditable: IRenderEditable,
        caretColor: IColor,
        textPosition: ITextPosition
    ): void {
        return this._dart_paintRegularCursor(
            canvas,
            renderEditable,
            caretColor,
            textPosition
        );
    }
    public paint(
        canvas: ICanvas,
        size: ISize,
        renderEditable: IRenderEditable
    ): void {
        return this._dart_paint(canvas, size, renderEditable);
    }
    public shouldRepaint(
        oldDelegate?: IRenderEditablePainter | undefined
    ): boolean {
        return this._dart_shouldRepaint(oldDelegate);
    }
    public addListener(listener: () => void): void {
        return this._dart_addListener(listener);
    }
    public removeListener(listener: () => void): void {
        return this._dart_removeListener(listener);
    }
    public dispose(): void {
        return this._dart_dispose();
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
