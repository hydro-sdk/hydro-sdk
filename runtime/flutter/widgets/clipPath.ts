
import { IWidget } from "./widget";
import { Clip } from "../../dart/ui/clip";
import { ICustomClipper } from "../rendering/customClipper";
import { IPath } from "../../dart/ui/path";
import { IKey } from "../foundation/key";
import { ISingleChildRenderObjectWidget } from "./singleChildRenderObjectWidget";
import { ISingleChildRenderObjectElement } from "./singleChildRenderObjectElement";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IShapeBorder } from "../painting/shapeBorder";
import { IBuildContext } from "./buildContext";
import { IRenderClipPath } from "../rendering/renderClipPath";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
declare const flutter: {
widgets: {
clipPath: (this: void, clipPath: IClipPath, props : {  child? : IWidget | undefined, clipBehavior : Clip, clipper? : ICustomClipper<IPath> | undefined, key? : IKey | undefined,}) => IClipPath;
clipPathShape: ( props : {  child? : IWidget | undefined, clipBehavior : Clip, key? : IKey | undefined, shape : IShapeBorder,}) => IWidget
}
};
export interface IClipPath


{
clipper: ICustomClipper<IPath> | undefined;
clipBehavior: Clip;
child: IWidget | undefined;
key: IKey | undefined;
createRenderObject: (context: IBuildContext) => IRenderClipPath;
updateRenderObject: (context: IBuildContext, renderObject: unknown) => void;
didUnmountRenderObject: (renderObject: unknown) => void;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
createElement: () => ISingleChildRenderObjectElement;
toStringShort: () => string;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class ClipPath

 implements ISingleChildRenderObjectWidget, IDiagnosticable
{    public readonly clipper: ICustomClipper<IPath> | undefined = undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly child: IWidget | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  child? : IWidget | undefined, clipBehavior? : Clip, clipper? : ICustomClipper<IPath> | undefined, key? : IKey | undefined,}){
flutter.widgets.clipPath(this, {
...clipPathDefaultProps,
...props
});}
public static shape( props : {  child? : IWidget | undefined, clipBehavior? : Clip, key? : IKey | undefined, shape : IShapeBorder,}) : IWidget{
return flutter.widgets.clipPathShape({
...shapeDefaultProps,
...props
});
}    private readonly _dart_createRenderObject: (context: IBuildContext) => IRenderClipPath = undefined as any;
    private readonly _dart_updateRenderObject: (context: IBuildContext, renderObject: any) => void = undefined as any;
    private readonly _dart_didUnmountRenderObject: (renderObject: any) => void = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_createElement: () => ISingleChildRenderObjectElement = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public createRenderObject(context: IBuildContext) : IRenderClipPath {
    return this._dart_createRenderObject(context);
}
public updateRenderObject(context: IBuildContext, renderObject: any) : void {
    return this._dart_updateRenderObject(context, renderObject);
}
public didUnmountRenderObject(renderObject: any) : void {
    return this._dart_didUnmountRenderObject(renderObject);
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public createElement() : ISingleChildRenderObjectElement {
    return this._dart_createElement();
}
public toStringShort() : string {
    return this._dart_toStringShort();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
public toStringShallow( props : {  joiner? : string, minLevel? : DiagnosticLevel,}) : string {
    return this._dart_toStringShallow({
...toStringShallowDefaultProps,
...props
});
}
public toStringDeep( props : {  minLevel? : DiagnosticLevel, prefixLineOne? : string, prefixOtherLines? : string | undefined,}) : string {
    return this._dart_toStringDeep({
...toStringDeepDefaultProps,
...props
});
}
public toDiagnosticsNode( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) : IDiagnosticsNode {
    return this._dart_toDiagnosticsNode(props);
}
public debugDescribeChildren() : IList<IDiagnosticsNode> {
    return this._dart_debugDescribeChildren();
}
public toString( props : {  minLevel? : DiagnosticLevel,}) : string {
    return this._dart_toString({
...toStringDefaultProps,
...props
});
}
}
const clipPathDefaultProps = {
    clipBehavior: Clip.antiAlias,
};
const toStringShallowDefaultProps = {
    joiner: ", ",
    minLevel: DiagnosticLevel.debug,
};
const toStringDeepDefaultProps = {
    minLevel: DiagnosticLevel.debug,
    prefixLineOne: "",
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
const shapeDefaultProps = {
    clipBehavior: Clip.antiAlias,
};
