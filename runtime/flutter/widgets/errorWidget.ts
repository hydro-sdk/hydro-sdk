
import { ILeafRenderObjectWidget } from "./leafRenderObjectWidget";
import { ILeafRenderObjectElement } from "./leafRenderObjectElement";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IBuildContext } from "./buildContext";
import { IRenderBox } from "../rendering/renderBox";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IRenderObject } from "../rendering/renderObject";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
import { IKey } from "../foundation/key";
declare const flutter: {
widgets: {
errorWidget: (this: void, errorWidget: IErrorWidget, exception: Object) => IErrorWidget
}
};
export interface IErrorWidget


{
message: string;
key: IKey | undefined;
createRenderObject: (context: IBuildContext) => IRenderBox;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
createElement: () => ILeafRenderObjectElement;
updateRenderObject: (context: IBuildContext, renderObject: unknown) => void;
didUnmountRenderObject: (renderObject: unknown) => void;
toStringShort: () => string;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class ErrorWidget

 implements ILeafRenderObjectWidget, IDiagnosticable
{    public readonly message: string = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor(exception: Object){
flutter.widgets.errorWidget(this, exception);}
    private readonly _dart_createRenderObject: (context: IBuildContext) => IRenderBox = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_createElement: () => ILeafRenderObjectElement = undefined as any;
    private readonly _dart_updateRenderObject: (context: IBuildContext, renderObject: any) => void = undefined as any;
    private readonly _dart_didUnmountRenderObject: (renderObject: any) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public createRenderObject(context: IBuildContext) : IRenderBox {
    return this._dart_createRenderObject(context);
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public createElement() : ILeafRenderObjectElement {
    return this._dart_createElement();
}
public updateRenderObject(context: IBuildContext, renderObject: any) : void {
    return this._dart_updateRenderObject(context, renderObject);
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
