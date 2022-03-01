
import { BlendMode } from "../../dart/ui/blendMode";
import { IBoxBorder } from "./boxBorder";
import { IBorderRadiusGeometry } from "./borderRadiusGeometry";
import { IList } from "../../dart/core/list";
import { IBoxShadow } from "./boxShadow";
import { IColor } from "../../dart/ui/color";
import { IGradient } from "./gradient";
import { IDecorationImage } from "./decorationImage";
import { BoxShape } from "./boxShape";
import { IDecoration } from "./decoration";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { TextDirection } from "../../dart/ui/textDirection";
import { ISize } from "../../dart/ui/size";
import { IOffset } from "../../dart/ui/offset";
import { IBoxPainter } from "./boxPainter";
import { IRect } from "../../dart/ui/rect";
import { IPath } from "../../dart/ui/path";
import { IEdgeInsetsGeometry } from "./edgeInsetsGeometry";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
declare const flutter: {
painting: {
boxDecoration: (this: void, boxDecoration: IBoxDecoration, props : {  backgroundBlendMode? : BlendMode | undefined, border? : IBoxBorder | undefined, borderRadius? : IBorderRadiusGeometry | undefined, boxShadow? : IList<IBoxShadow> | undefined, color? : IColor | undefined, gradient? : IGradient | undefined, image? : IDecorationImage | undefined, shape : BoxShape,}) => IBoxDecoration;
boxDecorationLerp: (a: IBoxDecoration | undefined, b: IBoxDecoration | undefined, t: number) => IBoxDecoration | undefined
}
};
export interface IBoxDecoration


{
color: IColor | undefined;
image: IDecorationImage | undefined;
border: IBoxBorder | undefined;
borderRadius: IBorderRadiusGeometry | undefined;
boxShadow: IList<IBoxShadow> | undefined;
gradient: IGradient | undefined;
backgroundBlendMode: BlendMode | undefined;
shape: BoxShape;
copyWith: ( props? : {  backgroundBlendMode? : BlendMode | undefined, border? : IBoxBorder | undefined, borderRadius? : IBorderRadiusGeometry | undefined, boxShadow? : IList<IBoxShadow> | undefined, color? : IColor | undefined, gradient? : IGradient | undefined, image? : IDecorationImage | undefined, shape? : BoxShape | undefined,}) => IBoxDecoration;
debugAssertIsValid: () => boolean;
getPadding: () => IEdgeInsetsGeometry | undefined;
getClipPath: (rect: IRect, textDirection: TextDirection) => IPath;
scale: (factor: number) => IBoxDecoration;
getIsComplex: () => boolean;
lerpFrom: (a: IDecoration | undefined, t: number) => IBoxDecoration | undefined;
lerpTo: (b: IDecoration | undefined, t: number) => IBoxDecoration | undefined;
getHashCode: () => number;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
hitTest: (size: ISize, position: IOffset, props? : {  textDirection? : TextDirection | undefined,}) => boolean;
createBoxPainter: (onChanged? : () => void) => IBoxPainter;
toStringShort: () => string;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
}export class BoxDecoration

 implements Omit<IDecoration, "toStringShort">, IDiagnosticable
{    public readonly color: IColor | undefined = undefined as any;
    public readonly image: IDecorationImage | undefined = undefined as any;
    public readonly border: IBoxBorder | undefined = undefined as any;
    public readonly borderRadius: IBorderRadiusGeometry | undefined = undefined as any;
    public readonly boxShadow: IList<IBoxShadow> | undefined = undefined as any;
    public readonly gradient: IGradient | undefined = undefined as any;
    public readonly backgroundBlendMode: BlendMode | undefined = undefined as any;
    public readonly shape: BoxShape = undefined as any;
public constructor( props : {  backgroundBlendMode? : BlendMode | undefined, border? : IBoxBorder | undefined, borderRadius? : IBorderRadiusGeometry | undefined, boxShadow? : IList<IBoxShadow> | undefined, color? : IColor | undefined, gradient? : IGradient | undefined, image? : IDecorationImage | undefined, shape? : BoxShape,}){
flutter.painting.boxDecoration(this, {
...boxDecorationDefaultProps,
...props
});}
public static lerp(a: IBoxDecoration | undefined, b: IBoxDecoration | undefined, t: number) : IBoxDecoration | undefined{
return flutter.painting.boxDecorationLerp(a, b, t);
}    private readonly _dart_copyWith: ( props? : {  backgroundBlendMode? : BlendMode | undefined, border? : IBoxBorder | undefined, borderRadius? : IBorderRadiusGeometry | undefined, boxShadow? : IList<IBoxShadow> | undefined, color? : IColor | undefined, gradient? : IGradient | undefined, image? : IDecorationImage | undefined, shape? : BoxShape | undefined,}) => IBoxDecoration = undefined as any;
    private readonly _dart_debugAssertIsValid: () => boolean = undefined as any;
    private readonly _dart_getPadding: () => IEdgeInsetsGeometry | undefined = undefined as any;
    private readonly _dart_getClipPath: (rect: IRect, textDirection: TextDirection) => IPath = undefined as any;
    private readonly _dart_scale: (factor: number) => IBoxDecoration = undefined as any;
    private readonly _dart_getIsComplex: () => boolean = undefined as any;
    private readonly _dart_lerpFrom: (a: IDecoration | undefined, t: number) => IBoxDecoration | undefined = undefined as any;
    private readonly _dart_lerpTo: (b: IDecoration | undefined, t: number) => IBoxDecoration | undefined = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_hitTest: (size: ISize, position: IOffset, props? : {  textDirection? : TextDirection | undefined,}) => boolean = undefined as any;
    private readonly _dart_createBoxPainter: (onChanged? : () => void) => IBoxPainter = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
public copyWith( props? : {  backgroundBlendMode? : BlendMode | undefined, border? : IBoxBorder | undefined, borderRadius? : IBorderRadiusGeometry | undefined, boxShadow? : IList<IBoxShadow> | undefined, color? : IColor | undefined, gradient? : IGradient | undefined, image? : IDecorationImage | undefined, shape? : BoxShape | undefined,}) : IBoxDecoration {
    return this._dart_copyWith(props);
}
public debugAssertIsValid() : boolean {
    return this._dart_debugAssertIsValid();
}
public getPadding() : IEdgeInsetsGeometry | undefined {
    return this._dart_getPadding();
}
public getClipPath(rect: IRect, textDirection: TextDirection) : IPath {
    return this._dart_getClipPath(rect, textDirection);
}
public scale(factor: number) : IBoxDecoration {
    return this._dart_scale(factor);
}
public getIsComplex() : boolean {
    return this._dart_getIsComplex();
}
public lerpFrom(a: IDecoration | undefined, t: number) : IBoxDecoration | undefined {
    return this._dart_lerpFrom(a, t);
}
public lerpTo(b: IDecoration | undefined, t: number) : IBoxDecoration | undefined {
    return this._dart_lerpTo(b, t);
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public hitTest(size: ISize, position: IOffset, props? : {  textDirection? : TextDirection | undefined,}) : boolean {
    return this._dart_hitTest(size, position, props);
}
public createBoxPainter(onChanged? : () => void) : IBoxPainter {
    return this._dart_createBoxPainter(onChanged);
}
public toStringShort() : string {
    return this._dart_toStringShort();
}
public toString( props : {  minLevel? : DiagnosticLevel,}) : string {
    return this._dart_toString({
...toStringDefaultProps,
...props
});
}
public toDiagnosticsNode( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) : IDiagnosticsNode {
    return this._dart_toDiagnosticsNode(props);
}
}
const boxDecorationDefaultProps = {
    shape: BoxShape.rectangle,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
