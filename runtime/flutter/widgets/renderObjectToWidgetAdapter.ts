
import { IRenderObject } from "../rendering/renderObject";
import { IWidget } from "./widget";
import { IRenderObjectWithChildMixin } from "../rendering/renderObjectWithChildMixin";
import { IRenderObjectWidget } from "./renderObjectWidget";
import { IRenderObjectElement } from "./renderObjectElement";
import { IBuildContext } from "./buildContext";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IRenderObjectToWidgetElement } from "./renderObjectToWidgetElement";
import { IBuildOwner } from "./buildOwner";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
import { IKey } from "../foundation/key";
declare const flutter: {
widgets: {
renderObjectToWidgetAdapter: <T>(this: void, renderObjectToWidgetAdapter: IRenderObjectToWidgetAdapter<T>, props : {  child? : IWidget | undefined, debugShortDescription? : string | undefined, container : IRenderObjectWithChildMixin<T>,}) => IRenderObjectToWidgetAdapter<T>
}
};
export interface IRenderObjectToWidgetAdapter
<T>

{
child: IWidget | undefined;
container: IRenderObjectWithChildMixin<T>;
debugShortDescription: string | undefined;
key: IKey | undefined;
createElement: () => IRenderObjectToWidgetElement<T>;
createRenderObject: (context: IBuildContext) => IRenderObjectWithChildMixin<T>;
updateRenderObject: (context: IBuildContext, renderObject: unknown) => void;
attachToRenderTree: (owner: IBuildOwner, element?: IRenderObjectToWidgetElement<T> | undefined) => IRenderObjectToWidgetElement<T>;
toStringShort: () => string;
didUnmountRenderObject: (renderObject: unknown) => void;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class RenderObjectToWidgetAdapter
<T>
 implements IRenderObjectWidget, IDiagnosticable
{    public readonly child: IWidget | undefined = undefined as any;
    public readonly container: IRenderObjectWithChildMixin<T> = undefined as any;
    public readonly debugShortDescription: string | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  child? : IWidget | undefined, debugShortDescription? : string | undefined, container : IRenderObjectWithChildMixin<T>,}){
flutter.widgets.renderObjectToWidgetAdapter(this, props);}
    private readonly _dart_createElement: () => IRenderObjectToWidgetElement<T> = undefined as any;
    private readonly _dart_createRenderObject: (context: IBuildContext) => IRenderObjectWithChildMixin<T> = undefined as any;
    private readonly _dart_updateRenderObject: (context: IBuildContext, renderObject: any) => void = undefined as any;
    private readonly _dart_attachToRenderTree: (owner: IBuildOwner, element?: IRenderObjectToWidgetElement<T> | undefined) => IRenderObjectToWidgetElement<T> = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_didUnmountRenderObject: (renderObject: any) => void = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public createElement() : IRenderObjectToWidgetElement<T> {
    return this._dart_createElement();
}
public createRenderObject(context: IBuildContext) : IRenderObjectWithChildMixin<T> {
    return this._dart_createRenderObject(context);
}
public updateRenderObject(context: IBuildContext, renderObject: any) : void {
    return this._dart_updateRenderObject(context, renderObject);
}
public attachToRenderTree(owner: IBuildOwner, element?: IRenderObjectToWidgetElement<T> | undefined) : IRenderObjectToWidgetElement<T> {
    return this._dart_attachToRenderTree(owner, element);
}
public toStringShort() : string {
    return this._dart_toStringShort();
}
public didUnmountRenderObject(renderObject: any) : void {
    return this._dart_didUnmountRenderObject(renderObject);
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
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
