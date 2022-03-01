
import { IColor } from "../../dart/ui/color";
import { ICustomPainter } from "../rendering/customPainter";
import { ICanvas } from "../../dart/ui/canvas";
import { ISize } from "../../dart/ui/size";
import { IOffset } from "../../dart/ui/offset";
import { IList } from "../../dart/core/list";
import { ICustomPainterSemantics } from "../rendering/customPainterSemantics";
declare const flutter: {
widgets: {
_placeholderPainter: (this: void, _placeholderPainter: I_PlaceholderPainter, props : {  color : IColor, strokeWidth : number,}) => I_PlaceholderPainter
}
};
export interface I_PlaceholderPainter


{
color: IColor;
strokeWidth: number;
paint: (canvas: ICanvas, size: ISize) => void;
shouldRepaint: (oldPainter: unknown) => boolean;
hitTest: (position: IOffset) => boolean;
addListener: (listener : () => void) => void;
removeListener: (listener : () => void) => void;
shouldRebuildSemantics: (oldDelegate: unknown) => boolean;
toString: () => string;
getSemanticsBuilder: () => (size: ISize) => IList<ICustomPainterSemantics> | undefined;
getHashCode: () => number;
}export class _PlaceholderPainter

 implements ICustomPainter
{    public readonly color: IColor = undefined as any;
    public readonly strokeWidth: number = undefined as any;
public constructor( props : {  color : IColor, strokeWidth : number,}){
flutter.widgets._placeholderPainter(this, props);}
    private readonly _dart_paint: (canvas: ICanvas, size: ISize) => void = undefined as any;
    private readonly _dart_shouldRepaint: (oldPainter: any) => boolean = undefined as any;
    private readonly _dart_hitTest: (position: IOffset) => boolean = undefined as any;
    private readonly _dart_addListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_removeListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_shouldRebuildSemantics: (oldDelegate: any) => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getSemanticsBuilder: () => (size: ISize) => IList<ICustomPainterSemantics> | undefined = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public paint(canvas: ICanvas, size: ISize) : void {
    return this._dart_paint(canvas, size);
}
public shouldRepaint(oldPainter: any) : boolean {
    return this._dart_shouldRepaint(oldPainter);
}
public hitTest(position: IOffset) : boolean {
    return this._dart_hitTest(position);
}
public addListener(listener : () => void) : void {
    return this._dart_addListener(listener);
}
public removeListener(listener : () => void) : void {
    return this._dart_removeListener(listener);
}
public shouldRebuildSemantics(oldDelegate: any) : boolean {
    return this._dart_shouldRebuildSemantics(oldDelegate);
}
public toString() : string {
    return this._dart_toString();
}
public getSemanticsBuilder() : (size: ISize) => IList<ICustomPainterSemantics> | undefined {
    return this._dart_getSemanticsBuilder();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
