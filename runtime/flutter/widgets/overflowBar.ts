
import { MainAxisAlignment } from "../rendering/mainAxisAlignment";
import { IList,List } from "../../dart/core/list";
import { IWidget } from "./widget";
import { Clip } from "../../dart/ui/clip";
import { IKey } from "../foundation/key";
import { OverflowBarAlignment } from "./overflowBarAlignment";
import { VerticalDirection } from "../painting/verticalDirection";
import { TextDirection } from "../../dart/ui/textDirection";
import { IMultiChildRenderObjectWidget } from "./multiChildRenderObjectWidget";
import { IMultiChildRenderObjectElement } from "./multiChildRenderObjectElement";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IBuildContext } from "./buildContext";
import { IRenderObject } from "../rendering/renderObject";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
declare const flutter: {
widgets: {
overflowBar: (this: void, overflowBar: IOverflowBar, props : {  alignment? : MainAxisAlignment | undefined, children : IList<IWidget>, clipBehavior : Clip, key? : IKey | undefined, overflowAlignment : OverflowBarAlignment, overflowDirection : VerticalDirection, overflowSpacing : number, spacing : number, textDirection? : TextDirection | undefined,}) => IOverflowBar
}
};
export interface IOverflowBar


{
spacing: number;
alignment: MainAxisAlignment | undefined;
overflowSpacing: number;
overflowAlignment: OverflowBarAlignment;
overflowDirection: VerticalDirection;
textDirection: TextDirection | undefined;
clipBehavior: Clip;
children: IList<IWidget>;
key: IKey | undefined;
createRenderObject: (context: IBuildContext) => IRenderObject;
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
}export class OverflowBar

 implements IMultiChildRenderObjectWidget, IDiagnosticable
{    public readonly spacing: number = undefined as any;
    public readonly alignment: MainAxisAlignment | undefined = undefined as any;
    public readonly overflowSpacing: number = undefined as any;
    public readonly overflowAlignment: OverflowBarAlignment = undefined as any;
    public readonly overflowDirection: VerticalDirection = undefined as any;
    public readonly textDirection: TextDirection | undefined = undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly children: IList<IWidget> = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  alignment? : MainAxisAlignment | undefined, children? : IList<IWidget>, clipBehavior? : Clip, key? : IKey | undefined, overflowAlignment? : OverflowBarAlignment, overflowDirection? : VerticalDirection, overflowSpacing? : number, spacing? : number, textDirection? : TextDirection | undefined,}){
flutter.widgets.overflowBar(this, {
...overflowBarDefaultProps,
...props
});}
    private readonly _dart_createRenderObject: (context: IBuildContext) => IRenderObject = undefined as any;
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
public createRenderObject(context: IBuildContext) : IRenderObject {
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
const overflowBarDefaultProps = {
    children: List.fromArray<IWidget>([]),
    clipBehavior: Clip.none,
    overflowAlignment: OverflowBarAlignment.start,
    overflowDirection: VerticalDirection.down,
    overflowSpacing: 0.0,
    spacing: 0.0,
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
