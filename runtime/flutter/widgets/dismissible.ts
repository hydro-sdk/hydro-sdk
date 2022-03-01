
import { IWidget } from "./widget";
import { HitTestBehavior } from "../rendering/hitTestBehavior";
import { DismissDirection } from "./dismissDirection";
import { IFuture } from "../../dart/async/future";
import { IMap,Map } from "../../dart/core/map";
import { DragStartBehavior } from "../gestures/dragStartBehavior";
import { IDuration,Duration } from "../../dart/core/duration";
import { IDismissUpdateDetails } from "./dismissUpdateDetails";
import { IKey } from "../foundation/key";
import { IStatefulWidget } from "./statefulWidget";
import { IStatefulElement } from "./statefulElement";
import { IState } from "./state";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList,List } from "../../dart/core/list";
import { IIterable } from "../../dart/core/iterable";
import { IMapEntry } from "../../dart/core/mapEntry";
declare const flutter: {
widgets: {
dismissible: (this: void, dismissible: IDismissible, props : {  background? : IWidget | undefined, behavior : HitTestBehavior, confirmDismiss? : (direction: DismissDirection) => IFuture<boolean | undefined> | undefined, crossAxisEndOffset : number, direction : DismissDirection, dismissThresholds : IMap<DismissDirection, number>, dragStartBehavior : DragStartBehavior, movementDuration : IDuration, onDismissed? : (direction: DismissDirection) => void | undefined, onResize? : () => void | undefined, onUpdate? : (details: IDismissUpdateDetails) => void | undefined, resizeDuration? : IDuration | undefined, secondaryBackground? : IWidget | undefined, child : IWidget, key : IKey,}) => IDismissible
}
};
export interface IDismissible


{
child: IWidget;
background: IWidget | undefined;
secondaryBackground: IWidget | undefined;
direction: DismissDirection;
resizeDuration: IDuration | undefined;
dismissThresholds: IMap<DismissDirection, number>;
movementDuration: IDuration;
crossAxisEndOffset: number;
dragStartBehavior: DragStartBehavior;
behavior: HitTestBehavior;
key: IKey | undefined;
createState: () => IState<IDismissible>;
createElement: () => IStatefulElement;
toStringShort: () => string;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class Dismissible

 implements IStatefulWidget, IDiagnosticable
{    public readonly child: IWidget = undefined as any;
    public readonly background: IWidget | undefined = undefined as any;
    public readonly secondaryBackground: IWidget | undefined = undefined as any;
    public readonly direction: DismissDirection = undefined as any;
    public readonly resizeDuration: IDuration | undefined = undefined as any;
    public readonly dismissThresholds: IMap<DismissDirection, number> = undefined as any;
    public readonly movementDuration: IDuration = undefined as any;
    public readonly crossAxisEndOffset: number = undefined as any;
    public readonly dragStartBehavior: DragStartBehavior = undefined as any;
    public readonly behavior: HitTestBehavior = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  background? : IWidget | undefined, behavior? : HitTestBehavior, confirmDismiss? : (direction: DismissDirection) => IFuture<boolean | undefined> | undefined, crossAxisEndOffset? : number, direction? : DismissDirection, dismissThresholds? : IMap<DismissDirection, number>, dragStartBehavior? : DragStartBehavior, movementDuration? : IDuration, onDismissed? : (direction: DismissDirection) => void | undefined, onResize? : () => void | undefined, onUpdate? : (details: IDismissUpdateDetails) => void | undefined, resizeDuration? : IDuration | undefined, secondaryBackground? : IWidget | undefined, child : IWidget, key : IKey,}){
flutter.widgets.dismissible(this, {
...dismissibleDefaultProps,
...props
});}
    private readonly _dart_createState: () => IState<IDismissible> = undefined as any;
    private readonly _dart_createElement: () => IStatefulElement = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public createState() : IState<IDismissible> {
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
const dismissibleDefaultProps = {
    behavior: HitTestBehavior.opaque,
    crossAxisEndOffset: 0.0,
    direction: DismissDirection.horizontal,
    dismissThresholds:  Map.fromEntries(<IIterable<IMapEntry<DismissDirection,number>>><unknown>List.fromArray([])),
    dragStartBehavior: DragStartBehavior.start,
    movementDuration: new Duration({ milliseconds: 200 }),
    resizeDuration: new Duration({ milliseconds: 300 }),
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
