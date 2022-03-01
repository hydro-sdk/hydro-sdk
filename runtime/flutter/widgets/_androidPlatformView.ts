
import { Clip } from "../../dart/ui/clip";
import { IKey } from "../foundation/key";
import { IAndroidViewController } from "../services/androidViewController";
import { ISet } from "../../dart/core/set";
import { IFactory } from "../foundation/factory";
import { IOneSequenceGestureRecognizer } from "../gestures/oneSequenceGestureRecognizer";
import { PlatformViewHitTestBehavior } from "../rendering/platformViewHitTestBehavior";
import { ILeafRenderObjectWidget } from "./leafRenderObjectWidget";
import { ILeafRenderObjectElement } from "./leafRenderObjectElement";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IBuildContext } from "./buildContext";
import { IRenderObject } from "../rendering/renderObject";
import { IRenderAndroidView } from "../rendering/renderAndroidView";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
declare const flutter: {
widgets: {
_androidPlatformView: (this: void, _androidPlatformView: I_AndroidPlatformView, props : {  clipBehavior : Clip, key? : IKey | undefined, controller : IAndroidViewController, gestureRecognizers : ISet<IFactory<IOneSequenceGestureRecognizer>>, hitTestBehavior : PlatformViewHitTestBehavior,}) => I_AndroidPlatformView
}
};
export interface I_AndroidPlatformView


{
controller: IAndroidViewController;
hitTestBehavior: PlatformViewHitTestBehavior;
gestureRecognizers: ISet<IFactory<IOneSequenceGestureRecognizer>>;
clipBehavior: Clip;
key: IKey | undefined;
createRenderObject: (context: IBuildContext) => IRenderObject;
updateRenderObject: (context: IBuildContext, renderObject: unknown) => void;
createElement: () => ILeafRenderObjectElement;
didUnmountRenderObject: (renderObject: unknown) => void;
toStringShort: () => string;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class _AndroidPlatformView

 implements ILeafRenderObjectWidget, IDiagnosticable
{    public readonly controller: IAndroidViewController = undefined as any;
    public readonly hitTestBehavior: PlatformViewHitTestBehavior = undefined as any;
    public readonly gestureRecognizers: ISet<IFactory<IOneSequenceGestureRecognizer>> = undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  clipBehavior? : Clip, key? : IKey | undefined, controller : IAndroidViewController, gestureRecognizers : ISet<IFactory<IOneSequenceGestureRecognizer>>, hitTestBehavior : PlatformViewHitTestBehavior,}){
flutter.widgets._androidPlatformView(this, {
..._androidPlatformViewDefaultProps,
...props
});}
    private readonly _dart_createRenderObject: (context: IBuildContext) => IRenderObject = undefined as any;
    private readonly _dart_updateRenderObject: (context: IBuildContext, renderObject: any) => void = undefined as any;
    private readonly _dart_createElement: () => ILeafRenderObjectElement = undefined as any;
    private readonly _dart_didUnmountRenderObject: (renderObject: any) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
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
public createElement() : ILeafRenderObjectElement {
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
const _androidPlatformViewDefaultProps = {
    clipBehavior: Clip.hardEdge,
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
