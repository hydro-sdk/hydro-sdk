
import { AxisDirection } from "../painting/axisDirection";
import { CacheExtentStyle } from "../rendering/cacheExtentStyle";
import { IKey } from "../foundation/key";
import { Clip } from "../../dart/ui/clip";
import { IList,List } from "../../dart/core/list";
import { IWidget } from "./widget";
import { IViewportOffset } from "../rendering/viewportOffset";
import { IMultiChildRenderObjectWidget } from "./multiChildRenderObjectWidget";
import { IMultiChildRenderObjectElement } from "./multiChildRenderObjectElement";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IBuildContext } from "./buildContext";
import { IRenderViewport } from "../rendering/renderViewport";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IRenderObject } from "../rendering/renderObject";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
declare const flutter: {
widgets: {
viewport: (this: void, viewport: IViewport, props : {  anchor : number, axisDirection : AxisDirection, cacheExtent? : number | undefined, cacheExtentStyle : CacheExtentStyle, center? : IKey | undefined, clipBehavior : Clip, crossAxisDirection? : AxisDirection | undefined, key? : IKey | undefined, slivers : IList<IWidget>, offset : IViewportOffset,}) => IViewport;
viewportGetDefaultCrossAxisDirection: (context: IBuildContext, axisDirection: AxisDirection) => AxisDirection
}
};
export interface IViewport


{
axisDirection: AxisDirection;
crossAxisDirection: AxisDirection | undefined;
anchor: number;
offset: IViewportOffset;
center: IKey | undefined;
cacheExtent: number | undefined;
cacheExtentStyle: CacheExtentStyle;
clipBehavior: Clip;
children: IList<IWidget>;
key: IKey | undefined;
createRenderObject: (context: IBuildContext) => IRenderViewport;
updateRenderObject: (context: IBuildContext, renderObject: unknown) => void;
createElement: () => IMultiChildRenderObjectElement;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
didUnmountRenderObject: (renderObject: unknown) => void;
toStringShort: () => string;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class Viewport

 implements IMultiChildRenderObjectWidget, IDiagnosticable
{    public readonly axisDirection: AxisDirection = undefined as any;
    public readonly crossAxisDirection: AxisDirection | undefined = undefined as any;
    public readonly anchor: number = undefined as any;
    public readonly offset: IViewportOffset = undefined as any;
    public readonly center: IKey | undefined = undefined as any;
    public readonly cacheExtent: number | undefined = undefined as any;
    public readonly cacheExtentStyle: CacheExtentStyle = undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly children: IList<IWidget> = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  anchor? : number, axisDirection? : AxisDirection, cacheExtent? : number | undefined, cacheExtentStyle? : CacheExtentStyle, center? : IKey | undefined, clipBehavior? : Clip, crossAxisDirection? : AxisDirection | undefined, key? : IKey | undefined, slivers? : IList<IWidget>, offset : IViewportOffset,}){
flutter.widgets.viewport(this, {
...viewportDefaultProps,
...props
});}
public static getDefaultCrossAxisDirection(context: IBuildContext, axisDirection: AxisDirection) : AxisDirection{
return flutter.widgets.viewportGetDefaultCrossAxisDirection(context, axisDirection);
}    private readonly _dart_createRenderObject: (context: IBuildContext) => IRenderViewport = undefined as any;
    private readonly _dart_updateRenderObject: (context: IBuildContext, renderObject: any) => void = undefined as any;
    private readonly _dart_createElement: () => IMultiChildRenderObjectElement = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_didUnmountRenderObject: (renderObject: any) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public createRenderObject(context: IBuildContext) : IRenderViewport {
    return this._dart_createRenderObject(context);
}
public updateRenderObject(context: IBuildContext, renderObject: any) : void {
    return this._dart_updateRenderObject(context, renderObject);
}
public createElement() : IMultiChildRenderObjectElement {
    return this._dart_createElement();
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
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
const viewportDefaultProps = {
    anchor: 0.0,
    axisDirection: AxisDirection.down,
    cacheExtentStyle: CacheExtentStyle.pixel,
    clipBehavior: Clip.hardEdge,
    slivers: List.fromArray<IWidget>([]),
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
