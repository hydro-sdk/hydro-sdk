
import { ILocale } from "../../dart/ui/locale";
import { IStrutStyle } from "./strutStyle";
import { IInlineSpan } from "./inlineSpan";
import { TextAlign } from "../../dart/ui/textAlign";
import { TextDirection } from "../../dart/ui/textDirection";
import { ITextHeightBehavior } from "../../dart/ui/textHeightBehavior";
import { TextWidthBasis } from "./textWidthBasis";
import { IList } from "../../dart/core/list";
import { ITextBox } from "../../dart/ui/textBox";
import { IPlaceholderDimensions } from "./placeholderDimensions";
import { ISize } from "../../dart/ui/size";
import { TextBaseline } from "../../dart/ui/textBaseline";
import { ICanvas } from "../../dart/ui/canvas";
import { IOffset } from "../../dart/ui/offset";
import { ITextPosition } from "../../dart/ui/textPosition";
import { IRect } from "../../dart/ui/rect";
import { BoxHeightStyle } from "../../dart/ui/boxHeightStyle";
import { BoxWidthStyle } from "../../dart/ui/boxWidthStyle";
import { ITextSelection } from "../services/textSelection";
import { ITextRange } from "../../dart/ui/textRange";
import { ILineMetrics } from "../../dart/ui/lineMetrics";
import { double } from "../../dart/core/double";
declare const flutter: {
painting: {
textPainter: (this: void, textPainter: ITextPainter, props : {  ellipsis? : string | undefined, locale? : ILocale | undefined, maxLines? : number | undefined, strutStyle? : IStrutStyle | undefined, text? : IInlineSpan | undefined, textAlign : TextAlign, textDirection? : TextDirection | undefined, textHeightBehavior? : ITextHeightBehavior | undefined, textScaleFactor : number, textWidthBasis : TextWidthBasis,}) => ITextPainter
}
};
export interface ITextPainter


{
markNeedsLayout: () => void;
getText: () => IInlineSpan | undefined;
setText: (value?: IInlineSpan | undefined) => void;
getTextAlign: () => TextAlign;
setTextAlign: (value: TextAlign) => void;
getTextDirection: () => TextDirection | undefined;
setTextDirection: (value?: TextDirection | undefined) => void;
getTextScaleFactor: () => number;
setTextScaleFactor: (value: number) => void;
getEllipsis: () => string | undefined;
setEllipsis: (value?: string | undefined) => void;
getLocale: () => ILocale | undefined;
setLocale: (value?: ILocale | undefined) => void;
getMaxLines: () => number | undefined;
setMaxLines: (value?: number | undefined) => void;
getStrutStyle: () => IStrutStyle | undefined;
setStrutStyle: (value?: IStrutStyle | undefined) => void;
getTextWidthBasis: () => TextWidthBasis;
setTextWidthBasis: (value: TextWidthBasis) => void;
getTextHeightBehavior: () => ITextHeightBehavior | undefined;
setTextHeightBehavior: (value?: ITextHeightBehavior | undefined) => void;
getInlinePlaceholderBoxes: () => IList<ITextBox> | undefined;
getInlinePlaceholderScales: () => IList<number> | undefined;
setPlaceholderDimensions: (value?: IList<IPlaceholderDimensions> | undefined) => void;
getPreferredLineHeight: () => number;
getMinIntrinsicWidth: () => number;
getMaxIntrinsicWidth: () => number;
getWidth: () => number;
getHeight: () => number;
getSize: () => ISize;
computeDistanceToActualBaseline: (baseline: TextBaseline) => number;
getDidExceedMaxLines: () => boolean;
layout: ( props : {  maxWidth : number, minWidth : number,}) => void;
paint: (canvas: ICanvas, offset: IOffset) => void;
getOffsetAfter: (offset: number) => number | undefined;
getOffsetBefore: (offset: number) => number | undefined;
getOffsetForCaret: (position: ITextPosition, caretPrototype: IRect) => IOffset;
getFullHeightForCaret: (position: ITextPosition, caretPrototype: IRect) => number | undefined;
getBoxesForSelection: (selection: ITextSelection, props : {  boxHeightStyle : BoxHeightStyle, boxWidthStyle : BoxWidthStyle,}) => IList<ITextBox>;
getPositionForOffset: (offset: IOffset) => ITextPosition;
getWordBoundary: (position: ITextPosition) => ITextRange;
getLineBoundary: (position: ITextPosition) => ITextRange;
computeLineMetrics: () => IList<ILineMetrics>;
}export class TextPainter


{    public static _zwjUtf16 = 0x200d;
public constructor( props : {  ellipsis? : string | undefined, locale? : ILocale | undefined, maxLines? : number | undefined, strutStyle? : IStrutStyle | undefined, text? : IInlineSpan | undefined, textAlign? : TextAlign, textDirection? : TextDirection | undefined, textHeightBehavior? : ITextHeightBehavior | undefined, textScaleFactor? : number, textWidthBasis? : TextWidthBasis,}){
flutter.painting.textPainter(this, {
...textPainterDefaultProps,
...props
});}
    private readonly _dart_markNeedsLayout: () => void = undefined as any;
    private readonly _dart_getText: () => IInlineSpan | undefined = undefined as any;
    private readonly _dart_setText: (value?: IInlineSpan | undefined) => void = undefined as any;
    private readonly _dart_getTextAlign: () => TextAlign = undefined as any;
    private readonly _dart_setTextAlign: (value: TextAlign) => void = undefined as any;
    private readonly _dart_getTextDirection: () => TextDirection | undefined = undefined as any;
    private readonly _dart_setTextDirection: (value?: TextDirection | undefined) => void = undefined as any;
    private readonly _dart_getTextScaleFactor: () => number = undefined as any;
    private readonly _dart_setTextScaleFactor: (value: number) => void = undefined as any;
    private readonly _dart_getEllipsis: () => string | undefined = undefined as any;
    private readonly _dart_setEllipsis: (value?: string | undefined) => void = undefined as any;
    private readonly _dart_getLocale: () => ILocale | undefined = undefined as any;
    private readonly _dart_setLocale: (value?: ILocale | undefined) => void = undefined as any;
    private readonly _dart_getMaxLines: () => number | undefined = undefined as any;
    private readonly _dart_setMaxLines: (value?: number | undefined) => void = undefined as any;
    private readonly _dart_getStrutStyle: () => IStrutStyle | undefined = undefined as any;
    private readonly _dart_setStrutStyle: (value?: IStrutStyle | undefined) => void = undefined as any;
    private readonly _dart_getTextWidthBasis: () => TextWidthBasis = undefined as any;
    private readonly _dart_setTextWidthBasis: (value: TextWidthBasis) => void = undefined as any;
    private readonly _dart_getTextHeightBehavior: () => ITextHeightBehavior | undefined = undefined as any;
    private readonly _dart_setTextHeightBehavior: (value?: ITextHeightBehavior | undefined) => void = undefined as any;
    private readonly _dart_getInlinePlaceholderBoxes: () => IList<ITextBox> | undefined = undefined as any;
    private readonly _dart_getInlinePlaceholderScales: () => IList<number> | undefined = undefined as any;
    private readonly _dart_setPlaceholderDimensions: (value?: IList<IPlaceholderDimensions> | undefined) => void = undefined as any;
    private readonly _dart_getPreferredLineHeight: () => number = undefined as any;
    private readonly _dart_getMinIntrinsicWidth: () => number = undefined as any;
    private readonly _dart_getMaxIntrinsicWidth: () => number = undefined as any;
    private readonly _dart_getWidth: () => number = undefined as any;
    private readonly _dart_getHeight: () => number = undefined as any;
    private readonly _dart_getSize: () => ISize = undefined as any;
    private readonly _dart_computeDistanceToActualBaseline: (baseline: TextBaseline) => number = undefined as any;
    private readonly _dart_getDidExceedMaxLines: () => boolean = undefined as any;
    private readonly _dart_layout: ( props : {  maxWidth : number, minWidth : number,}) => void = undefined as any;
    private readonly _dart_paint: (canvas: ICanvas, offset: IOffset) => void = undefined as any;
    private readonly _dart_getOffsetAfter: (offset: number) => number | undefined = undefined as any;
    private readonly _dart_getOffsetBefore: (offset: number) => number | undefined = undefined as any;
    private readonly _dart_getOffsetForCaret: (position: ITextPosition, caretPrototype: IRect) => IOffset = undefined as any;
    private readonly _dart_getFullHeightForCaret: (position: ITextPosition, caretPrototype: IRect) => number | undefined = undefined as any;
    private readonly _dart_getBoxesForSelection: (selection: ITextSelection, props : {  boxHeightStyle : BoxHeightStyle, boxWidthStyle : BoxWidthStyle,}) => IList<ITextBox> = undefined as any;
    private readonly _dart_getPositionForOffset: (offset: IOffset) => ITextPosition = undefined as any;
    private readonly _dart_getWordBoundary: (position: ITextPosition) => ITextRange = undefined as any;
    private readonly _dart_getLineBoundary: (position: ITextPosition) => ITextRange = undefined as any;
    private readonly _dart_computeLineMetrics: () => IList<ILineMetrics> = undefined as any;
public markNeedsLayout() : void {
    return this._dart_markNeedsLayout();
}
public getText() : IInlineSpan | undefined {
    return this._dart_getText();
}
public setText(value?: IInlineSpan | undefined) : void {
    return this._dart_setText(value);
}
public getTextAlign() : TextAlign {
    return this._dart_getTextAlign();
}
public setTextAlign(value: TextAlign) : void {
    return this._dart_setTextAlign(value);
}
public getTextDirection() : TextDirection | undefined {
    return this._dart_getTextDirection();
}
public setTextDirection(value?: TextDirection | undefined) : void {
    return this._dart_setTextDirection(value);
}
public getTextScaleFactor() : number {
    return this._dart_getTextScaleFactor();
}
public setTextScaleFactor(value: number) : void {
    return this._dart_setTextScaleFactor(value);
}
public getEllipsis() : string | undefined {
    return this._dart_getEllipsis();
}
public setEllipsis(value?: string | undefined) : void {
    return this._dart_setEllipsis(value);
}
public getLocale() : ILocale | undefined {
    return this._dart_getLocale();
}
public setLocale(value?: ILocale | undefined) : void {
    return this._dart_setLocale(value);
}
public getMaxLines() : number | undefined {
    return this._dart_getMaxLines();
}
public setMaxLines(value?: number | undefined) : void {
    return this._dart_setMaxLines(value);
}
public getStrutStyle() : IStrutStyle | undefined {
    return this._dart_getStrutStyle();
}
public setStrutStyle(value?: IStrutStyle | undefined) : void {
    return this._dart_setStrutStyle(value);
}
public getTextWidthBasis() : TextWidthBasis {
    return this._dart_getTextWidthBasis();
}
public setTextWidthBasis(value: TextWidthBasis) : void {
    return this._dart_setTextWidthBasis(value);
}
public getTextHeightBehavior() : ITextHeightBehavior | undefined {
    return this._dart_getTextHeightBehavior();
}
public setTextHeightBehavior(value?: ITextHeightBehavior | undefined) : void {
    return this._dart_setTextHeightBehavior(value);
}
public getInlinePlaceholderBoxes() : IList<ITextBox> | undefined {
    return this._dart_getInlinePlaceholderBoxes();
}
public getInlinePlaceholderScales() : IList<number> | undefined {
    return this._dart_getInlinePlaceholderScales();
}
public setPlaceholderDimensions(value?: IList<IPlaceholderDimensions> | undefined) : void {
    return this._dart_setPlaceholderDimensions(value);
}
public getPreferredLineHeight() : number {
    return this._dart_getPreferredLineHeight();
}
public getMinIntrinsicWidth() : number {
    return this._dart_getMinIntrinsicWidth();
}
public getMaxIntrinsicWidth() : number {
    return this._dart_getMaxIntrinsicWidth();
}
public getWidth() : number {
    return this._dart_getWidth();
}
public getHeight() : number {
    return this._dart_getHeight();
}
public getSize() : ISize {
    return this._dart_getSize();
}
public computeDistanceToActualBaseline(baseline: TextBaseline) : number {
    return this._dart_computeDistanceToActualBaseline(baseline);
}
public getDidExceedMaxLines() : boolean {
    return this._dart_getDidExceedMaxLines();
}
public layout( props : {  maxWidth? : number, minWidth? : number,}) : void {
    return this._dart_layout({
...layoutDefaultProps,
...props
});
}
public paint(canvas: ICanvas, offset: IOffset) : void {
    return this._dart_paint(canvas, offset);
}
public getOffsetAfter(offset: number) : number | undefined {
    return this._dart_getOffsetAfter(offset);
}
public getOffsetBefore(offset: number) : number | undefined {
    return this._dart_getOffsetBefore(offset);
}
public getOffsetForCaret(position: ITextPosition, caretPrototype: IRect) : IOffset {
    return this._dart_getOffsetForCaret(position, caretPrototype);
}
public getFullHeightForCaret(position: ITextPosition, caretPrototype: IRect) : number | undefined {
    return this._dart_getFullHeightForCaret(position, caretPrototype);
}
public getBoxesForSelection(selection: ITextSelection, props : {  boxHeightStyle? : BoxHeightStyle, boxWidthStyle? : BoxWidthStyle,}) : IList<ITextBox> {
    return this._dart_getBoxesForSelection(selection, {
...getBoxesForSelectionDefaultProps,
...props
});
}
public getPositionForOffset(offset: IOffset) : ITextPosition {
    return this._dart_getPositionForOffset(offset);
}
public getWordBoundary(position: ITextPosition) : ITextRange {
    return this._dart_getWordBoundary(position);
}
public getLineBoundary(position: ITextPosition) : ITextRange {
    return this._dart_getLineBoundary(position);
}
public computeLineMetrics() : IList<ILineMetrics> {
    return this._dart_computeLineMetrics();
}
}
const textPainterDefaultProps = {
    textAlign: TextAlign.start,
    textScaleFactor: 1.0,
    textWidthBasis: TextWidthBasis.parent,
};
const layoutDefaultProps = {
    maxWidth: double.infinity,
    minWidth: 0.0,
};
const getBoxesForSelectionDefaultProps = {
    boxHeightStyle: BoxHeightStyle.tight,
    boxWidthStyle: BoxWidthStyle.tight,
};
