
import { IList,List } from "../../dart/core/list";
import { IWidget } from "./widget";
import { Clip } from "../../dart/ui/clip";
import { IPageController } from "./pageController";
import { DragStartBehavior } from "../gestures/dragStartBehavior";
import { IKey } from "../foundation/key";
import { IScrollPhysics } from "./scrollPhysics";
import { IScrollBehavior } from "./scrollBehavior";
import { Axis } from "../painting/axis";
import { IStatefulWidget } from "./statefulWidget";
import { IStatefulElement } from "./statefulElement";
import { IState } from "./state";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { ISliverChildDelegate } from "./sliverChildDelegate";
declare const flutter: {
widgets: {
pageView: (this: void, pageView: IPageView, props : {  allowImplicitScrolling : boolean, children : IList<IWidget>, clipBehavior : Clip, controller? : IPageController | undefined, dragStartBehavior : DragStartBehavior, key? : IKey | undefined, onPageChanged? : (value: number) => void | undefined, padEnds : boolean, pageSnapping : boolean, physics? : IScrollPhysics | undefined, restorationId? : string | undefined, reverse : boolean, scrollBehavior? : IScrollBehavior | undefined, scrollDirection : Axis,}) => IPageView
}
};
export interface IPageView


{
allowImplicitScrolling: boolean;
restorationId: string | undefined;
scrollDirection: Axis;
reverse: boolean;
controller: IPageController;
physics: IScrollPhysics | undefined;
pageSnapping: boolean;
childrenDelegate: ISliverChildDelegate;
dragStartBehavior: DragStartBehavior;
clipBehavior: Clip;
scrollBehavior: IScrollBehavior | undefined;
padEnds: boolean;
key: IKey | undefined;
createState: () => IState<IPageView>;
createElement: () => IStatefulElement;
toStringShort: () => string;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class PageView

 implements IStatefulWidget, IDiagnosticable
{    public readonly allowImplicitScrolling: boolean = undefined as any;
    public readonly restorationId: string | undefined = undefined as any;
    public readonly scrollDirection: Axis = undefined as any;
    public readonly reverse: boolean = undefined as any;
    public readonly controller: IPageController = undefined as any;
    public readonly physics: IScrollPhysics | undefined = undefined as any;
    public readonly pageSnapping: boolean = undefined as any;
    public readonly childrenDelegate: ISliverChildDelegate = undefined as any;
    public readonly dragStartBehavior: DragStartBehavior = undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly scrollBehavior: IScrollBehavior | undefined = undefined as any;
    public readonly padEnds: boolean = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  allowImplicitScrolling? : boolean, children? : IList<IWidget>, clipBehavior? : Clip, controller? : IPageController | undefined, dragStartBehavior? : DragStartBehavior, key? : IKey | undefined, onPageChanged? : (value: number) => void | undefined, padEnds? : boolean, pageSnapping? : boolean, physics? : IScrollPhysics | undefined, restorationId? : string | undefined, reverse? : boolean, scrollBehavior? : IScrollBehavior | undefined, scrollDirection? : Axis,}){
flutter.widgets.pageView(this, {
...pageViewDefaultProps,
...props
});}
    private readonly _dart_createState: () => IState<IPageView> = undefined as any;
    private readonly _dart_createElement: () => IStatefulElement = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public createState() : IState<IPageView> {
    return this._dart_createState();
}
public createElement() : IStatefulElement {
    return this._dart_createElement();
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
const pageViewDefaultProps = {
    allowImplicitScrolling: false,
    children: List.fromArray<IWidget>([]),
    clipBehavior: Clip.hardEdge,
    dragStartBehavior: DragStartBehavior.start,
    padEnds: true,
    pageSnapping: true,
    reverse: false,
    scrollDirection: Axis.horizontal,
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
