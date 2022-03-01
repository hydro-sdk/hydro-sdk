
import { IColor } from "../../dart/ui/color";
import { ITextRange } from "../../dart/ui/textRange";
import { IRenderEditablePainter } from "./renderEditablePainter";
import { ICanvas } from "../../dart/ui/canvas";
import { ISize } from "../../dart/ui/size";
import { IRenderEditable } from "./renderEditable";
import { IListenable } from "../foundation/listenable";
import { BoxHeightStyle } from "../../dart/ui/boxHeightStyle";
import { BoxWidthStyle } from "../../dart/ui/boxWidthStyle";
import { IPaint } from "../../dart/ui/paint";
declare const flutter: {
rendering: {
_textHighlightPainter: (this: void, _textHighlightPainter: I_TextHighlightPainter, props? : {  highlightColor? : IColor | undefined, highlightedRange? : ITextRange | undefined,}) => I_TextHighlightPainter
}
};
export interface I_TextHighlightPainter


{
highlightPaint: IPaint;
getHighlightColor: () => IColor | undefined;
setHighlightColor: (newValue?: IColor | undefined) => void;
getHighlightedRange: () => ITextRange | undefined;
setHighlightedRange: (newValue?: ITextRange | undefined) => void;
getSelectionHeightStyle: () => BoxHeightStyle;
setSelectionHeightStyle: (value: BoxHeightStyle) => void;
getSelectionWidthStyle: () => BoxWidthStyle;
setSelectionWidthStyle: (value: BoxWidthStyle) => void;
paint: (canvas: ICanvas, size: ISize, renderEditable: IRenderEditable) => void;
shouldRepaint: (oldDelegate?: IRenderEditablePainter | undefined) => boolean;
addListener: (listener : () => void) => void;
removeListener: (listener : () => void) => void;
dispose: () => void;
getHasListeners: () => boolean;
toString: () => string;
getHashCode: () => number;
}export class _TextHighlightPainter

 implements IRenderEditablePainter, IListenable
{    public readonly highlightPaint: IPaint = undefined as any;
public constructor( props? : {  highlightColor? : IColor | undefined, highlightedRange? : ITextRange | undefined,}){
flutter.rendering._textHighlightPainter(this, props);}
    private readonly _dart_getHighlightColor: () => IColor | undefined = undefined as any;
    private readonly _dart_setHighlightColor: (newValue?: IColor | undefined) => void = undefined as any;
    private readonly _dart_getHighlightedRange: () => ITextRange | undefined = undefined as any;
    private readonly _dart_setHighlightedRange: (newValue?: ITextRange | undefined) => void = undefined as any;
    private readonly _dart_getSelectionHeightStyle: () => BoxHeightStyle = undefined as any;
    private readonly _dart_setSelectionHeightStyle: (value: BoxHeightStyle) => void = undefined as any;
    private readonly _dart_getSelectionWidthStyle: () => BoxWidthStyle = undefined as any;
    private readonly _dart_setSelectionWidthStyle: (value: BoxWidthStyle) => void = undefined as any;
    private readonly _dart_paint: (canvas: ICanvas, size: ISize, renderEditable: IRenderEditable) => void = undefined as any;
    private readonly _dart_shouldRepaint: (oldDelegate?: IRenderEditablePainter | undefined) => boolean = undefined as any;
    private readonly _dart_addListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_removeListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getHighlightColor() : IColor | undefined {
    return this._dart_getHighlightColor();
}
public setHighlightColor(newValue?: IColor | undefined) : void {
    return this._dart_setHighlightColor(newValue);
}
public getHighlightedRange() : ITextRange | undefined {
    return this._dart_getHighlightedRange();
}
public setHighlightedRange(newValue?: ITextRange | undefined) : void {
    return this._dart_setHighlightedRange(newValue);
}
public getSelectionHeightStyle() : BoxHeightStyle {
    return this._dart_getSelectionHeightStyle();
}
public setSelectionHeightStyle(value: BoxHeightStyle) : void {
    return this._dart_setSelectionHeightStyle(value);
}
public getSelectionWidthStyle() : BoxWidthStyle {
    return this._dart_getSelectionWidthStyle();
}
public setSelectionWidthStyle(value: BoxWidthStyle) : void {
    return this._dart_setSelectionWidthStyle(value);
}
public paint(canvas: ICanvas, size: ISize, renderEditable: IRenderEditable) : void {
    return this._dart_paint(canvas, size, renderEditable);
}
public shouldRepaint(oldDelegate?: IRenderEditablePainter | undefined) : boolean {
    return this._dart_shouldRepaint(oldDelegate);
}
public addListener(listener : () => void) : void {
    return this._dart_addListener(listener);
}
public removeListener(listener : () => void) : void {
    return this._dart_removeListener(listener);
}
public dispose() : void {
    return this._dart_dispose();
}
public notifyListeners() : void {
    return this._dart_notifyListeners();
}
public getHasListeners() : boolean {
    return this._dart_getHasListeners();
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
