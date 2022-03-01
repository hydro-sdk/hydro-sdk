
import { IEdgeInsets,EdgeInsets } from "../painting/edgeInsets";
import { IRadius } from "../../dart/ui/radius";
import { ScrollbarOrientation } from "./scrollbarOrientation";
import { IOutlinedBorder } from "../painting/outlinedBorder";
import { TextDirection } from "../../dart/ui/textDirection";
import { IColor,Color } from "../../dart/ui/color";
import { IAnimation } from "../animation/animation";
import { IChangeNotifier } from "../foundation/changeNotifier";
import { IListenable } from "../foundation/listenable";
import { ICustomPainter } from "../rendering/customPainter";
import { IScrollMetrics } from "./scrollMetrics";
import { AxisDirection } from "../painting/axisDirection";
import { ICanvas } from "../../dart/ui/canvas";
import { ISize } from "../../dart/ui/size";
import { IOffset } from "../../dart/ui/offset";
import { PointerDeviceKind } from "../../dart/ui/pointerDeviceKind";
import { IList } from "../../dart/core/list";
import { ICustomPainterSemantics } from "../rendering/customPainterSemantics";
declare const flutter: {
widgets: {
scrollbarPainter: (this: void, scrollbarPainter: IScrollbarPainter, props : {  crossAxisMargin : number, mainAxisMargin : number, minLength : number, minOverscrollLength? : number | undefined, padding : IEdgeInsets, radius? : IRadius | undefined, scrollbarOrientation? : ScrollbarOrientation | undefined, shape? : IOutlinedBorder | undefined, textDirection? : TextDirection | undefined, thickness : number, trackBorderColor : IColor, trackColor : IColor, color : IColor, fadeoutOpacityAnimation : IAnimation<number>,}) => IScrollbarPainter
}
};
export interface IScrollbarPainter


{
fadeoutOpacityAnimation: IAnimation<number>;
getColor: () => IColor;
setColor: (value: IColor) => void;
getTrackColor: () => IColor;
setTrackColor: (value: IColor) => void;
getTrackBorderColor: () => IColor;
setTrackBorderColor: (value: IColor) => void;
getTextDirection: () => TextDirection | undefined;
setTextDirection: (value?: TextDirection | undefined) => void;
getThickness: () => number;
setThickness: (value: number) => void;
getMainAxisMargin: () => number;
setMainAxisMargin: (value: number) => void;
getCrossAxisMargin: () => number;
setCrossAxisMargin: (value: number) => void;
getRadius: () => IRadius | undefined;
setRadius: (value?: IRadius | undefined) => void;
getShape: () => IOutlinedBorder | undefined;
setShape: (value?: IOutlinedBorder | undefined) => void;
getPadding: () => IEdgeInsets;
setPadding: (value: IEdgeInsets) => void;
getMinLength: () => number;
setMinLength: (value: number) => void;
getMinOverscrollLength: () => number;
setMinOverscrollLength: (value: number) => void;
getScrollbarOrientation: () => ScrollbarOrientation | undefined;
setScrollbarOrientation: (value?: ScrollbarOrientation | undefined) => void;
update: (metrics: IScrollMetrics, axisDirection: AxisDirection) => void;
updateThickness: (nextThickness: number, nextRadius: IRadius) => void;
dispose: () => void;
getTrackToScroll: (thumbOffsetLocal: number) => number;
paint: (canvas: ICanvas, size: ISize) => void;
hitTestInteractive: (position: IOffset, kind: PointerDeviceKind, props : {  forHover : boolean,}) => boolean;
hitTestOnlyThumbInteractive: (position: IOffset, kind: PointerDeviceKind) => boolean;
hitTest: (position?: IOffset | undefined) => boolean | undefined;
shouldRepaint: (oldDelegate: unknown) => boolean;
shouldRebuildSemantics: (oldDelegate: unknown) => boolean;
getSemanticsBuilder: () => (size: ISize) => IList<ICustomPainterSemantics> | undefined;
addListener: (listener : () => void) => void;
removeListener: (listener : () => void) => void;
getHasListeners: () => boolean;
toString: () => string;
getHashCode: () => number;
}export class ScrollbarPainter

 implements IChangeNotifier, ICustomPainter, IListenable
{    public readonly fadeoutOpacityAnimation: IAnimation<number> = undefined as any;
public constructor( props : {  crossAxisMargin? : number, mainAxisMargin? : number, minLength : number, minOverscrollLength? : number | undefined, padding? : IEdgeInsets, radius? : IRadius | undefined, scrollbarOrientation? : ScrollbarOrientation | undefined, shape? : IOutlinedBorder | undefined, textDirection? : TextDirection | undefined, thickness : number, trackBorderColor? : IColor, trackColor? : IColor, color : IColor, fadeoutOpacityAnimation : IAnimation<number>,}){
flutter.widgets.scrollbarPainter(this, {
...scrollbarPainterDefaultProps,
...props
});}
    private readonly _dart_getColor: () => IColor = undefined as any;
    private readonly _dart_setColor: (value: IColor) => void = undefined as any;
    private readonly _dart_getTrackColor: () => IColor = undefined as any;
    private readonly _dart_setTrackColor: (value: IColor) => void = undefined as any;
    private readonly _dart_getTrackBorderColor: () => IColor = undefined as any;
    private readonly _dart_setTrackBorderColor: (value: IColor) => void = undefined as any;
    private readonly _dart_getTextDirection: () => TextDirection | undefined = undefined as any;
    private readonly _dart_setTextDirection: (value?: TextDirection | undefined) => void = undefined as any;
    private readonly _dart_getThickness: () => number = undefined as any;
    private readonly _dart_setThickness: (value: number) => void = undefined as any;
    private readonly _dart_getMainAxisMargin: () => number = undefined as any;
    private readonly _dart_setMainAxisMargin: (value: number) => void = undefined as any;
    private readonly _dart_getCrossAxisMargin: () => number = undefined as any;
    private readonly _dart_setCrossAxisMargin: (value: number) => void = undefined as any;
    private readonly _dart_getRadius: () => IRadius | undefined = undefined as any;
    private readonly _dart_setRadius: (value?: IRadius | undefined) => void = undefined as any;
    private readonly _dart_getShape: () => IOutlinedBorder | undefined = undefined as any;
    private readonly _dart_setShape: (value?: IOutlinedBorder | undefined) => void = undefined as any;
    private readonly _dart_getPadding: () => IEdgeInsets = undefined as any;
    private readonly _dart_setPadding: (value: IEdgeInsets) => void = undefined as any;
    private readonly _dart_getMinLength: () => number = undefined as any;
    private readonly _dart_setMinLength: (value: number) => void = undefined as any;
    private readonly _dart_getMinOverscrollLength: () => number = undefined as any;
    private readonly _dart_setMinOverscrollLength: (value: number) => void = undefined as any;
    private readonly _dart_getScrollbarOrientation: () => ScrollbarOrientation | undefined = undefined as any;
    private readonly _dart_setScrollbarOrientation: (value?: ScrollbarOrientation | undefined) => void = undefined as any;
    private readonly _dart_update: (metrics: IScrollMetrics, axisDirection: AxisDirection) => void = undefined as any;
    private readonly _dart_updateThickness: (nextThickness: number, nextRadius: IRadius) => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_getTrackToScroll: (thumbOffsetLocal: number) => number = undefined as any;
    private readonly _dart_paint: (canvas: ICanvas, size: ISize) => void = undefined as any;
    private readonly _dart_hitTestInteractive: (position: IOffset, kind: PointerDeviceKind, props : {  forHover : boolean,}) => boolean = undefined as any;
    private readonly _dart_hitTestOnlyThumbInteractive: (position: IOffset, kind: PointerDeviceKind) => boolean = undefined as any;
    private readonly _dart_hitTest: (position?: IOffset | undefined) => boolean | undefined = undefined as any;
    private readonly _dart_shouldRepaint: (oldDelegate: any) => boolean = undefined as any;
    private readonly _dart_shouldRebuildSemantics: (oldDelegate: any) => boolean = undefined as any;
    private readonly _dart_getSemanticsBuilder: () => (size: ISize) => IList<ICustomPainterSemantics> | undefined = undefined as any;
    private readonly _dart_addListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_removeListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getColor() : IColor {
    return this._dart_getColor();
}
public setColor(value: IColor) : void {
    return this._dart_setColor(value);
}
public getTrackColor() : IColor {
    return this._dart_getTrackColor();
}
public setTrackColor(value: IColor) : void {
    return this._dart_setTrackColor(value);
}
public getTrackBorderColor() : IColor {
    return this._dart_getTrackBorderColor();
}
public setTrackBorderColor(value: IColor) : void {
    return this._dart_setTrackBorderColor(value);
}
public getTextDirection() : TextDirection | undefined {
    return this._dart_getTextDirection();
}
public setTextDirection(value?: TextDirection | undefined) : void {
    return this._dart_setTextDirection(value);
}
public getThickness() : number {
    return this._dart_getThickness();
}
public setThickness(value: number) : void {
    return this._dart_setThickness(value);
}
public getMainAxisMargin() : number {
    return this._dart_getMainAxisMargin();
}
public setMainAxisMargin(value: number) : void {
    return this._dart_setMainAxisMargin(value);
}
public getCrossAxisMargin() : number {
    return this._dart_getCrossAxisMargin();
}
public setCrossAxisMargin(value: number) : void {
    return this._dart_setCrossAxisMargin(value);
}
public getRadius() : IRadius | undefined {
    return this._dart_getRadius();
}
public setRadius(value?: IRadius | undefined) : void {
    return this._dart_setRadius(value);
}
public getShape() : IOutlinedBorder | undefined {
    return this._dart_getShape();
}
public setShape(value?: IOutlinedBorder | undefined) : void {
    return this._dart_setShape(value);
}
public getPadding() : IEdgeInsets {
    return this._dart_getPadding();
}
public setPadding(value: IEdgeInsets) : void {
    return this._dart_setPadding(value);
}
public getMinLength() : number {
    return this._dart_getMinLength();
}
public setMinLength(value: number) : void {
    return this._dart_setMinLength(value);
}
public getMinOverscrollLength() : number {
    return this._dart_getMinOverscrollLength();
}
public setMinOverscrollLength(value: number) : void {
    return this._dart_setMinOverscrollLength(value);
}
public getScrollbarOrientation() : ScrollbarOrientation | undefined {
    return this._dart_getScrollbarOrientation();
}
public setScrollbarOrientation(value?: ScrollbarOrientation | undefined) : void {
    return this._dart_setScrollbarOrientation(value);
}
public update(metrics: IScrollMetrics, axisDirection: AxisDirection) : void {
    return this._dart_update(metrics, axisDirection);
}
public updateThickness(nextThickness: number, nextRadius: IRadius) : void {
    return this._dart_updateThickness(nextThickness, nextRadius);
}
public dispose() : void {
    return this._dart_dispose();
}
public getTrackToScroll(thumbOffsetLocal: number) : number {
    return this._dart_getTrackToScroll(thumbOffsetLocal);
}
public paint(canvas: ICanvas, size: ISize) : void {
    return this._dart_paint(canvas, size);
}
public hitTestInteractive(position: IOffset, kind: PointerDeviceKind, props : {  forHover? : boolean,}) : boolean {
    return this._dart_hitTestInteractive(position, kind, {
...hitTestInteractiveDefaultProps,
...props
});
}
public hitTestOnlyThumbInteractive(position: IOffset, kind: PointerDeviceKind) : boolean {
    return this._dart_hitTestOnlyThumbInteractive(position, kind);
}
public hitTest(position?: IOffset | undefined) : boolean | undefined {
    return this._dart_hitTest(position);
}
public shouldRepaint(oldDelegate: any) : boolean {
    return this._dart_shouldRepaint(oldDelegate);
}
public shouldRebuildSemantics(oldDelegate: any) : boolean {
    return this._dart_shouldRebuildSemantics(oldDelegate);
}
public getSemanticsBuilder() : (size: ISize) => IList<ICustomPainterSemantics> | undefined {
    return this._dart_getSemanticsBuilder();
}
public addListener(listener : () => void) : void {
    return this._dart_addListener(listener);
}
public removeListener(listener : () => void) : void {
    return this._dart_removeListener(listener);
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
const scrollbarPainterDefaultProps = {
    crossAxisMargin: 0.0,
    mainAxisMargin: 0.0,
    padding: EdgeInsets.zero,
    trackBorderColor: new Color(0x00000000),
    trackColor: new Color(0x00000000),
};
const hitTestInteractiveDefaultProps = {
    forHover: false,
};
