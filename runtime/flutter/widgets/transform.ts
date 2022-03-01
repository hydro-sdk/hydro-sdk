
import { IAlignmentGeometry } from "../painting/alignmentGeometry";
import { IWidget } from "./widget";
import { FilterQuality } from "../../dart/ui/filterQuality";
import { IKey } from "../foundation/key";
import { IOffset } from "../../dart/ui/offset";
import { IMatrix4 } from "../../vector_math/matrix4";
import { ISingleChildRenderObjectWidget } from "./singleChildRenderObjectWidget";
import { ISingleChildRenderObjectElement } from "./singleChildRenderObjectElement";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IBuildContext } from "./buildContext";
import { IRenderTransform } from "../rendering/renderTransform";
import { IRenderObject } from "../rendering/renderObject";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
declare const flutter: {
widgets: {
transform: (this: void, transform: ITransform, props : {  alignment? : IAlignmentGeometry | undefined, child? : IWidget | undefined, filterQuality? : FilterQuality | undefined, key? : IKey | undefined, origin? : IOffset | undefined, transformHitTests : boolean, transform : IMatrix4,}) => ITransform
}
};
export interface ITransform


{
transform: IMatrix4;
origin: IOffset | undefined;
alignment: IAlignmentGeometry | undefined;
transformHitTests: boolean;
filterQuality: FilterQuality | undefined;
child: IWidget | undefined;
key: IKey | undefined;
createRenderObject: (context: IBuildContext) => IRenderTransform;
updateRenderObject: (context: IBuildContext, renderObject: unknown) => void;
createElement: () => ISingleChildRenderObjectElement;
didUnmountRenderObject: (renderObject: unknown) => void;
toStringShort: () => string;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class Transform

 implements ISingleChildRenderObjectWidget, IDiagnosticable
{    public readonly transform: IMatrix4 = undefined as any;
    public readonly origin: IOffset | undefined = undefined as any;
    public readonly alignment: IAlignmentGeometry | undefined = undefined as any;
    public readonly transformHitTests: boolean = undefined as any;
    public readonly filterQuality: FilterQuality | undefined = undefined as any;
    public readonly child: IWidget | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  alignment? : IAlignmentGeometry | undefined, child? : IWidget | undefined, filterQuality? : FilterQuality | undefined, key? : IKey | undefined, origin? : IOffset | undefined, transformHitTests? : boolean, transform : IMatrix4,}){
flutter.widgets.transform(this, {
...transformDefaultProps,
...props
});}
    private readonly _dart_createRenderObject: (context: IBuildContext) => IRenderTransform = undefined as any;
    private readonly _dart_updateRenderObject: (context: IBuildContext, renderObject: any) => void = undefined as any;
    private readonly _dart_createElement: () => ISingleChildRenderObjectElement = undefined as any;
    private readonly _dart_didUnmountRenderObject: (renderObject: any) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public createRenderObject(context: IBuildContext) : IRenderTransform {
    return this._dart_createRenderObject(context);
}
public updateRenderObject(context: IBuildContext, renderObject: any) : void {
    return this._dart_updateRenderObject(context, renderObject);
}
public createElement() : ISingleChildRenderObjectElement {
    return this._dart_createElement();
}
public didUnmountRenderObject(renderObject: any) : void {
    return this._dart_didUnmountRenderObject(renderObject);
}
public toStringShort() : string {
    return this._dart_toStringShort();
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
const transformDefaultProps = {
    transformHitTests: true,
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
