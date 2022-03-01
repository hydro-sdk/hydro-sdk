
import { IKey } from "../foundation/key";
import { ISliverChildDelegate } from "./sliverChildDelegate";
import { ISliverMultiBoxAdaptorWidget } from "./sliverMultiBoxAdaptorWidget";
import { ISliverMultiBoxAdaptorElement } from "./sliverMultiBoxAdaptorElement";
import { IBuildContext } from "./buildContext";
import { IRenderSliverMultiBoxAdaptor } from "../rendering/renderSliverMultiBoxAdaptor";
import { ISliverConstraints } from "../rendering/sliverConstraints";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IRenderSliverFillViewport } from "../rendering/renderSliverFillViewport";
import { IRenderObject } from "../rendering/renderObject";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
declare const flutter: {
widgets: {
_sliverFillViewportRenderObjectWidget: (this: void, _sliverFillViewportRenderObjectWidget: I_SliverFillViewportRenderObjectWidget, props : {  key? : IKey | undefined, viewportFraction : number, delegate : ISliverChildDelegate,}) => I_SliverFillViewportRenderObjectWidget
}
};
export interface I_SliverFillViewportRenderObjectWidget


{
viewportFraction: number;
delegate: ISliverChildDelegate;
key: IKey | undefined;
createRenderObject: (context: IBuildContext) => IRenderSliverFillViewport;
updateRenderObject: (context: IBuildContext, renderObject: unknown) => void;
createElement: () => ISliverMultiBoxAdaptorElement;
estimateMaxScrollOffset: (constraints: ISliverConstraints | undefined, firstIndex: number, lastIndex: number, leadingScrollOffset: number, trailingScrollOffset: number) => number | undefined;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
didUnmountRenderObject: (renderObject: unknown) => void;
toStringShort: () => string;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class _SliverFillViewportRenderObjectWidget

 implements ISliverMultiBoxAdaptorWidget, IDiagnosticable
{    public readonly viewportFraction: number = undefined as any;
    public readonly delegate: ISliverChildDelegate = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  key? : IKey | undefined, viewportFraction? : number, delegate : ISliverChildDelegate,}){
flutter.widgets._sliverFillViewportRenderObjectWidget(this, {
..._sliverFillViewportRenderObjectWidgetDefaultProps,
...props
});}
    private readonly _dart_createRenderObject: (context: IBuildContext) => IRenderSliverFillViewport = undefined as any;
    private readonly _dart_updateRenderObject: (context: IBuildContext, renderObject: any) => void = undefined as any;
    private readonly _dart_createElement: () => ISliverMultiBoxAdaptorElement = undefined as any;
    private readonly _dart_estimateMaxScrollOffset: (constraints: ISliverConstraints | undefined, firstIndex: number, lastIndex: number, leadingScrollOffset: number, trailingScrollOffset: number) => number | undefined = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_didUnmountRenderObject: (renderObject: any) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public createRenderObject(context: IBuildContext) : IRenderSliverFillViewport {
    return this._dart_createRenderObject(context);
}
public updateRenderObject(context: IBuildContext, renderObject: any) : void {
    return this._dart_updateRenderObject(context, renderObject);
}
public createElement() : ISliverMultiBoxAdaptorElement {
    return this._dart_createElement();
}
public estimateMaxScrollOffset(constraints: ISliverConstraints | undefined, firstIndex: number, lastIndex: number, leadingScrollOffset: number, trailingScrollOffset: number) : number | undefined {
    return this._dart_estimateMaxScrollOffset(constraints, firstIndex, lastIndex, leadingScrollOffset, trailingScrollOffset);
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
const _sliverFillViewportRenderObjectWidgetDefaultProps = {
    viewportFraction: 1.0,
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
