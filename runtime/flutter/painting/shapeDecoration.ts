
import { IColor } from "../../dart/ui/color";
import { IGradient } from "./gradient";
import { IDecorationImage } from "./decorationImage";
import { IList } from "../../dart/core/list";
import { IBoxShadow } from "./boxShadow";
import { IShapeBorder } from "./shapeBorder";
import { IDecoration } from "./decoration";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { TextDirection } from "../../dart/ui/textDirection";
import { ISize } from "../../dart/ui/size";
import { IOffset } from "../../dart/ui/offset";
import { IBoxPainter } from "./boxPainter";
import { IRect } from "../../dart/ui/rect";
import { IPath } from "../../dart/ui/path";
import { IEdgeInsetsGeometry } from "./edgeInsetsGeometry";
import { IBoxDecoration } from "./boxDecoration";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
declare const flutter: {
painting: {
shapeDecoration: (this: void, shapeDecoration: IShapeDecoration, props : {  color? : IColor | undefined, gradient? : IGradient | undefined, image? : IDecorationImage | undefined, shadows? : IList<IBoxShadow> | undefined, shape : IShapeBorder,}) => IShapeDecoration;
shapeDecorationFromBoxDecoration: (source: IBoxDecoration) => IShapeDecoration;
shapeDecorationLerp: (a: IShapeDecoration | undefined, b: IShapeDecoration | undefined, t: number) => IShapeDecoration | undefined
}
};
export interface IShapeDecoration


{
color: IColor | undefined;
gradient: IGradient | undefined;
image: IDecorationImage | undefined;
shadows: IList<IBoxShadow> | undefined;
shape: IShapeBorder;
getClipPath: (rect: IRect, textDirection: TextDirection) => IPath;
getPadding: () => IEdgeInsetsGeometry;
getIsComplex: () => boolean;
lerpFrom: (a: IDecoration | undefined, t: number) => IShapeDecoration | undefined;
lerpTo: (b: IDecoration | undefined, t: number) => IShapeDecoration | undefined;
getHashCode: () => number;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
hitTest: (size: ISize, position: IOffset, props? : {  textDirection? : TextDirection | undefined,}) => boolean;
createBoxPainter: (onChanged? : () => void) => IBoxPainter;
toStringShort: () => string;
debugAssertIsValid: () => boolean;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
}export class ShapeDecoration

 implements Omit<IDecoration, "toStringShort">, IDiagnosticable
{    public readonly color: IColor | undefined = undefined as any;
    public readonly gradient: IGradient | undefined = undefined as any;
    public readonly image: IDecorationImage | undefined = undefined as any;
    public readonly shadows: IList<IBoxShadow> | undefined = undefined as any;
    public readonly shape: IShapeBorder = undefined as any;
public constructor( props : {  color? : IColor | undefined, gradient? : IGradient | undefined, image? : IDecorationImage | undefined, shadows? : IList<IBoxShadow> | undefined, shape : IShapeBorder,}){
flutter.painting.shapeDecoration(this, props);}
public static fromBoxDecoration(source: IBoxDecoration) : IShapeDecoration{
return flutter.painting.shapeDecorationFromBoxDecoration(source);
}public static lerp(a: IShapeDecoration | undefined, b: IShapeDecoration | undefined, t: number) : IShapeDecoration | undefined{
return flutter.painting.shapeDecorationLerp(a, b, t);
}    private readonly _dart_getClipPath: (rect: IRect, textDirection: TextDirection) => IPath = undefined as any;
    private readonly _dart_getPadding: () => IEdgeInsetsGeometry = undefined as any;
    private readonly _dart_getIsComplex: () => boolean = undefined as any;
    private readonly _dart_lerpFrom: (a: IDecoration | undefined, t: number) => IShapeDecoration | undefined = undefined as any;
    private readonly _dart_lerpTo: (b: IDecoration | undefined, t: number) => IShapeDecoration | undefined = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_hitTest: (size: ISize, position: IOffset, props? : {  textDirection? : TextDirection | undefined,}) => boolean = undefined as any;
    private readonly _dart_createBoxPainter: (onChanged? : () => void) => IBoxPainter = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugAssertIsValid: () => boolean = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
public getClipPath(rect: IRect, textDirection: TextDirection) : IPath {
    return this._dart_getClipPath(rect, textDirection);
}
public getPadding() : IEdgeInsetsGeometry {
    return this._dart_getPadding();
}
public getIsComplex() : boolean {
    return this._dart_getIsComplex();
}
public lerpFrom(a: IDecoration | undefined, t: number) : IShapeDecoration | undefined {
    return this._dart_lerpFrom(a, t);
}
public lerpTo(b: IDecoration | undefined, t: number) : IShapeDecoration | undefined {
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
public debugAssertIsValid() : boolean {
    return this._dart_debugAssertIsValid();
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
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
