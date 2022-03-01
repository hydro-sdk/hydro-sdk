
import { IAlignmentGeometry } from "../painting/alignmentGeometry";
import { IList,List } from "../../dart/core/list";
import { IWidget } from "./widget";
import { Clip } from "../../dart/ui/clip";
import { StackFit } from "../rendering/stackFit";
import { IKey } from "../foundation/key";
import { Overflow } from "../rendering/overflow";
import { TextDirection } from "../../dart/ui/textDirection";
import { IMultiChildRenderObjectWidget } from "./multiChildRenderObjectWidget";
import { IMultiChildRenderObjectElement } from "./multiChildRenderObjectElement";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IBuildContext } from "./buildContext";
import { IRenderStack } from "../rendering/renderStack";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IRenderObject } from "../rendering/renderObject";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { AlignmentDirectional } from "../painting/alignmentDirectional";
declare const flutter: {
widgets: {
stack: (this: void, stack: IStack, props : {  alignment : IAlignmentGeometry, children : IList<IWidget>, clipBehavior : Clip, fit : StackFit, key? : IKey | undefined, overflow : Overflow, textDirection? : TextDirection | undefined,}) => IStack
}
};
export interface IStack


{
alignment: IAlignmentGeometry;
textDirection: TextDirection | undefined;
fit: StackFit;
overflow: Overflow;
clipBehavior: Clip;
children: IList<IWidget>;
key: IKey | undefined;
createRenderObject: (context: IBuildContext) => IRenderStack;
updateRenderObject: (context: IBuildContext, renderObject: unknown) => void;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
createElement: () => IMultiChildRenderObjectElement;
didUnmountRenderObject: (renderObject: unknown) => void;
toStringShort: () => string;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class Stack

 implements IMultiChildRenderObjectWidget, IDiagnosticable
{    public readonly alignment: IAlignmentGeometry = undefined as any;
    public readonly textDirection: TextDirection | undefined = undefined as any;
    public readonly fit: StackFit = undefined as any;
    public readonly overflow: Overflow = undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly children: IList<IWidget> = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  alignment? : IAlignmentGeometry, children? : IList<IWidget>, clipBehavior? : Clip, fit? : StackFit, key? : IKey | undefined, overflow? : Overflow, textDirection? : TextDirection | undefined,}){
flutter.widgets.stack(this, {
...stackDefaultProps,
...props
});}
    private readonly _dart_createRenderObject: (context: IBuildContext) => IRenderStack = undefined as any;
    private readonly _dart_updateRenderObject: (context: IBuildContext, renderObject: any) => void = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_createElement: () => IMultiChildRenderObjectElement = undefined as any;
    private readonly _dart_didUnmountRenderObject: (renderObject: any) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public createRenderObject(context: IBuildContext) : IRenderStack {
    return this._dart_createRenderObject(context);
}
public updateRenderObject(context: IBuildContext, renderObject: any) : void {
    return this._dart_updateRenderObject(context, renderObject);
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public createElement() : IMultiChildRenderObjectElement {
    return this._dart_createElement();
}
public didUnmountRenderObject(renderObject: any) : void {
    return this._dart_didUnmountRenderObject(renderObject);
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
const stackDefaultProps = {
    alignment: AlignmentDirectional.topStart,
    children: List.fromArray<IWidget>([]),
    clipBehavior: Clip.hardEdge,
    fit: StackFit.loose,
    overflow: Overflow.clip,
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
