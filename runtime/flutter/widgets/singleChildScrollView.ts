
import { IWidget } from "./widget";
import { Clip } from "../../dart/ui/clip";
import { IScrollController } from "./scrollController";
import { DragStartBehavior } from "../gestures/dragStartBehavior";
import { IKey } from "../foundation/key";
import { ScrollViewKeyboardDismissBehavior } from "./scrollViewKeyboardDismissBehavior";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IScrollPhysics } from "./scrollPhysics";
import { Axis } from "../painting/axis";
import { IStatelessWidget } from "./statelessWidget";
import { IStatelessElement } from "./statelessElement";
import { IBuildContext } from "./buildContext";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
declare const flutter: {
widgets: {
singleChildScrollView: (this: void, singleChildScrollView: ISingleChildScrollView, props : {  child? : IWidget | undefined, clipBehavior : Clip, controller? : IScrollController | undefined, dragStartBehavior : DragStartBehavior, key? : IKey | undefined, keyboardDismissBehavior : ScrollViewKeyboardDismissBehavior, padding? : IEdgeInsetsGeometry | undefined, physics? : IScrollPhysics | undefined, primary? : boolean | undefined, restorationId? : string | undefined, reverse : boolean, scrollDirection : Axis,}) => ISingleChildScrollView
}
};
export interface ISingleChildScrollView


{
scrollDirection: Axis;
reverse: boolean;
padding: IEdgeInsetsGeometry | undefined;
controller: IScrollController | undefined;
primary: boolean;
physics: IScrollPhysics | undefined;
child: IWidget | undefined;
dragStartBehavior: DragStartBehavior;
clipBehavior: Clip;
restorationId: string | undefined;
keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior;
key: IKey | undefined;
build: (context: IBuildContext) => IWidget;
createElement: () => IStatelessElement;
toStringShort: () => string;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class SingleChildScrollView

 implements IStatelessWidget, IDiagnosticable
{    public readonly scrollDirection: Axis = undefined as any;
    public readonly reverse: boolean = undefined as any;
    public readonly padding: IEdgeInsetsGeometry | undefined = undefined as any;
    public readonly controller: IScrollController | undefined = undefined as any;
    public readonly primary: boolean = undefined as any;
    public readonly physics: IScrollPhysics | undefined = undefined as any;
    public readonly child: IWidget | undefined = undefined as any;
    public readonly dragStartBehavior: DragStartBehavior = undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly restorationId: string | undefined = undefined as any;
    public readonly keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  child? : IWidget | undefined, clipBehavior? : Clip, controller? : IScrollController | undefined, dragStartBehavior? : DragStartBehavior, key? : IKey | undefined, keyboardDismissBehavior? : ScrollViewKeyboardDismissBehavior, padding? : IEdgeInsetsGeometry | undefined, physics? : IScrollPhysics | undefined, primary? : boolean | undefined, restorationId? : string | undefined, reverse? : boolean, scrollDirection? : Axis,}){
flutter.widgets.singleChildScrollView(this, {
...singleChildScrollViewDefaultProps,
...props
});}
    private readonly _dart_build: (context: IBuildContext) => IWidget = undefined as any;
    private readonly _dart_createElement: () => IStatelessElement = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public build(context: IBuildContext) : IWidget {
    return this._dart_build(context);
}
public createElement() : IStatelessElement {
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
const singleChildScrollViewDefaultProps = {
    clipBehavior: Clip.hardEdge,
    dragStartBehavior: DragStartBehavior.start,
    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
    reverse: false,
    scrollDirection: Axis.vertical,
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
