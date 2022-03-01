
import { DragStartBehavior } from "../gestures/dragStartBehavior";
import { Clip } from "../../dart/ui/clip";
import { IScrollController } from "./scrollController";
import { ISliverOverlapAbsorberHandle } from "./sliverOverlapAbsorberHandle";
import { IScrollPhysics } from "./scrollPhysics";
import { IScrollBehavior } from "./scrollBehavior";
import { Axis } from "../painting/axis";
import { IList } from "../../dart/core/list";
import { IWidget } from "./widget";
import { ICustomScrollView } from "./customScrollView";
import { IBuildContext } from "./buildContext";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IViewportOffset } from "../rendering/viewportOffset";
import { AxisDirection } from "../painting/axisDirection";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IStatelessElement } from "./statelessElement";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IKey } from "../foundation/key";
import { ScrollViewKeyboardDismissBehavior } from "./scrollViewKeyboardDismissBehavior";
declare const flutter: {
widgets: {
_nestedScrollViewCustomScrollView: (this: void, _nestedScrollViewCustomScrollView: I_NestedScrollViewCustomScrollView, props : {  dragStartBehavior : DragStartBehavior, restorationId? : string | undefined, clipBehavior : Clip, controller : IScrollController, handle : ISliverOverlapAbsorberHandle, physics : IScrollPhysics, reverse : boolean, scrollBehavior : IScrollBehavior, scrollDirection : Axis, slivers : IList<IWidget>,}) => I_NestedScrollViewCustomScrollView
}
};
export interface I_NestedScrollViewCustomScrollView


{
handle: ISliverOverlapAbsorberHandle;
slivers: IList<IWidget>;
scrollDirection: Axis;
reverse: boolean;
controller: IScrollController | undefined;
primary: boolean;
physics: IScrollPhysics | undefined;
scrollBehavior: IScrollBehavior | undefined;
shrinkWrap: boolean;
center: IKey | undefined;
anchor: number;
cacheExtent: number | undefined;
semanticChildCount: number | undefined;
dragStartBehavior: DragStartBehavior;
keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior;
restorationId: string | undefined;
clipBehavior: Clip;
key: IKey | undefined;
buildViewport: (context: IBuildContext, offset: IViewportOffset, axisDirection: AxisDirection, slivers: IList<IWidget>) => IWidget;
buildSlivers: (context: IBuildContext) => IList<IWidget>;
getDirection: (context: IBuildContext) => AxisDirection;
build: (context: IBuildContext) => IWidget;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
createElement: () => IStatelessElement;
toStringShort: () => string;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class _NestedScrollViewCustomScrollView

 implements ICustomScrollView, IDiagnosticable
{    public readonly handle: ISliverOverlapAbsorberHandle = undefined as any;
    public readonly slivers: IList<IWidget> = undefined as any;
    public readonly scrollDirection: Axis = undefined as any;
    public readonly reverse: boolean = undefined as any;
    public readonly controller: IScrollController | undefined = undefined as any;
    public readonly primary: boolean = undefined as any;
    public readonly physics: IScrollPhysics | undefined = undefined as any;
    public readonly scrollBehavior: IScrollBehavior | undefined = undefined as any;
    public readonly shrinkWrap: boolean = undefined as any;
    public readonly center: IKey | undefined = undefined as any;
    public readonly anchor: number = undefined as any;
    public readonly cacheExtent: number | undefined = undefined as any;
    public readonly semanticChildCount: number | undefined = undefined as any;
    public readonly dragStartBehavior: DragStartBehavior = undefined as any;
    public readonly keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior = undefined as any;
    public readonly restorationId: string | undefined = undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  dragStartBehavior? : DragStartBehavior, restorationId? : string | undefined, clipBehavior : Clip, controller : IScrollController, handle : ISliverOverlapAbsorberHandle, physics : IScrollPhysics, reverse : boolean, scrollBehavior : IScrollBehavior, scrollDirection : Axis, slivers : IList<IWidget>,}){
flutter.widgets._nestedScrollViewCustomScrollView(this, {
..._nestedScrollViewCustomScrollViewDefaultProps,
...props
});}
    private readonly _dart_buildViewport: (context: IBuildContext, offset: IViewportOffset, axisDirection: AxisDirection, slivers: IList<IWidget>) => IWidget = undefined as any;
    private readonly _dart_buildSlivers: (context: IBuildContext) => IList<IWidget> = undefined as any;
    private readonly _dart_getDirection: (context: IBuildContext) => AxisDirection = undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_createElement: () => IStatelessElement = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public buildViewport(context: IBuildContext, offset: IViewportOffset, axisDirection: AxisDirection, slivers: IList<IWidget>) : IWidget {
    return this._dart_buildViewport(context, offset, axisDirection, slivers);
}
public buildSlivers(context: IBuildContext) : IList<IWidget> {
    return this._dart_buildSlivers(context);
}
public getDirection(context: IBuildContext) : AxisDirection {
    return this._dart_getDirection(context);
}
public build(context: IBuildContext) : IWidget {
    return this._dart_build(context);
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public createElement() : IStatelessElement {
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
const _nestedScrollViewCustomScrollViewDefaultProps = {
    dragStartBehavior: DragStartBehavior.start,
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
