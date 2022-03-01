
import { IList,List } from "../../dart/core/list";
import { IWidget } from "./widget";
import { CrossAxisAlignment } from "../rendering/crossAxisAlignment";
import { IKey } from "../foundation/key";
import { MainAxisAlignment } from "../rendering/mainAxisAlignment";
import { MainAxisSize } from "../rendering/mainAxisSize";
import { TextBaseline } from "../../dart/ui/textBaseline";
import { TextDirection } from "../../dart/ui/textDirection";
import { VerticalDirection } from "../painting/verticalDirection";
import { IFlex } from "./flex";
import { IBuildContext } from "./buildContext";
import { IRenderFlex } from "../rendering/renderFlex";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { Axis } from "../painting/axis";
import { Clip } from "../../dart/ui/clip";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IMultiChildRenderObjectElement } from "./multiChildRenderObjectElement";
import { IRenderObject } from "../rendering/renderObject";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
declare const flutter: {
widgets: {
row: (this: void, row: IRow, props : {  children : IList<IWidget>, crossAxisAlignment : CrossAxisAlignment, key? : IKey | undefined, mainAxisAlignment : MainAxisAlignment, mainAxisSize : MainAxisSize, textBaseline? : TextBaseline | undefined, textDirection? : TextDirection | undefined, verticalDirection : VerticalDirection,}) => IRow
}
};
export interface IRow


{
direction: Axis;
mainAxisAlignment: MainAxisAlignment;
mainAxisSize: MainAxisSize;
crossAxisAlignment: CrossAxisAlignment;
textDirection: TextDirection | undefined;
verticalDirection: VerticalDirection;
textBaseline: TextBaseline | undefined;
clipBehavior: Clip;
children: IList<IWidget>;
key: IKey | undefined;
getEffectiveTextDirection: (context: IBuildContext) => TextDirection | undefined;
createRenderObject: (context: IBuildContext) => IRenderFlex;
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
}export class Row

 implements IFlex, IDiagnosticable
{    public readonly direction: Axis = undefined as any;
    public readonly mainAxisAlignment: MainAxisAlignment = undefined as any;
    public readonly mainAxisSize: MainAxisSize = undefined as any;
    public readonly crossAxisAlignment: CrossAxisAlignment = undefined as any;
    public readonly textDirection: TextDirection | undefined = undefined as any;
    public readonly verticalDirection: VerticalDirection = undefined as any;
    public readonly textBaseline: TextBaseline | undefined = undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly children: IList<IWidget> = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  children? : IList<IWidget>, crossAxisAlignment? : CrossAxisAlignment, key? : IKey | undefined, mainAxisAlignment? : MainAxisAlignment, mainAxisSize? : MainAxisSize, textBaseline? : TextBaseline | undefined, textDirection? : TextDirection | undefined, verticalDirection? : VerticalDirection,}){
flutter.widgets.row(this, {
...rowDefaultProps,
...props
});}
    private readonly _dart_getEffectiveTextDirection: (context: IBuildContext) => TextDirection | undefined = undefined as any;
    private readonly _dart_createRenderObject: (context: IBuildContext) => IRenderFlex = undefined as any;
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
public getEffectiveTextDirection(context: IBuildContext) : TextDirection | undefined {
    return this._dart_getEffectiveTextDirection(context);
}
public createRenderObject(context: IBuildContext) : IRenderFlex {
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
const rowDefaultProps = {
    children: List.fromArray<IWidget>([]),
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    verticalDirection: VerticalDirection.down,
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
