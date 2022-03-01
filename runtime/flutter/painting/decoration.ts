
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IEdgeInsetsGeometry } from "./edgeInsetsGeometry";
import { TextDirection } from "../../dart/ui/textDirection";
import { ISize } from "../../dart/ui/size";
import { IOffset } from "../../dart/ui/offset";
import { IBoxPainter } from "./boxPainter";
import { IRect } from "../../dart/ui/rect";
import { IPath } from "../../dart/ui/path";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
declare const flutter: {
painting: {
decoration: (this: void, decoration: IDecoration) => IDecoration;
decorationLerp: (a: IDecoration | undefined, b: IDecoration | undefined, t: number) => IDecoration | undefined
}
};
export interface IDecoration


{
toStringShort: () => string;
debugAssertIsValid: () => boolean;
getPadding: () => IEdgeInsetsGeometry | undefined;
getIsComplex: () => boolean;
lerpFrom: (a: IDecoration | undefined, t: number) => IDecoration | undefined;
lerpTo: (b: IDecoration | undefined, t: number) => IDecoration | undefined;
hitTest: (size: ISize, position: IOffset, props? : {  textDirection? : TextDirection | undefined,}) => boolean;
createBoxPainter: (onChanged : () => void) => IBoxPainter;
getClipPath: (rect: IRect, textDirection: TextDirection) => IPath;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
}export class Decoration

 implements IDiagnosticable
{public constructor(){
flutter.painting.decoration(this);}
public static lerp(a: IDecoration | undefined, b: IDecoration | undefined, t: number) : IDecoration | undefined{
return flutter.painting.decorationLerp(a, b, t);
}    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugAssertIsValid: () => boolean = undefined as any;
    private readonly _dart_getPadding: () => IEdgeInsetsGeometry | undefined = undefined as any;
    private readonly _dart_getIsComplex: () => boolean = undefined as any;
    private readonly _dart_lerpFrom: (a: IDecoration | undefined, t: number) => IDecoration | undefined = undefined as any;
    private readonly _dart_lerpTo: (b: IDecoration | undefined, t: number) => IDecoration | undefined = undefined as any;
    private readonly _dart_hitTest: (size: ISize, position: IOffset, props? : {  textDirection? : TextDirection | undefined,}) => boolean = undefined as any;
    private readonly _dart_createBoxPainter: (onChanged : () => void) => IBoxPainter = undefined as any;
    private readonly _dart_getClipPath: (rect: IRect, textDirection: TextDirection) => IPath = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
public toStringShort() : string {
    return this._dart_toStringShort();
}
public debugAssertIsValid() : boolean {
    return this._dart_debugAssertIsValid();
}
public getPadding() : IEdgeInsetsGeometry | undefined {
    return this._dart_getPadding();
}
public getIsComplex() : boolean {
    return this._dart_getIsComplex();
}
public lerpFrom(a: IDecoration | undefined, t: number) : IDecoration | undefined {
    return this._dart_lerpFrom(a, t);
}
public lerpTo(b: IDecoration | undefined, t: number) : IDecoration | undefined {
    return this._dart_lerpTo(b, t);
}
public hitTest(size: ISize, position: IOffset, props? : {  textDirection? : TextDirection | undefined,}) : boolean {
    return this._dart_hitTest(size, position, props);
}
public createBoxPainter(onChanged : () => void) : IBoxPainter {
    return this._dart_createBoxPainter(onChanged);
}
public getClipPath(rect: IRect, textDirection: TextDirection) : IPath {
    return this._dart_getClipPath(rect, textDirection);
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
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
