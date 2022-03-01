
import { IKey } from "../foundation/key";
import { IWidget } from "./widget";
import { IAnimation } from "../animation/animation";
import { IBuildContext } from "./buildContext";
import { IStatefulWidget } from "./statefulWidget";
import { IStatefulElement } from "./statefulElement";
import { IState } from "./state";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { ISliverReorderableListState } from "./sliverReorderableListState";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
declare const flutter: {
widgets: {
sliverReorderableList: (this: void, sliverReorderableList: ISliverReorderableList, props : {  itemExtent? : number | undefined, key? : IKey | undefined, prototypeItem? : IWidget | undefined, proxyDecorator? : (child: IWidget, index: number, animation: IAnimation<number>) => IWidget | undefined, itemBuilder : (context: IBuildContext, index: number) => IWidget, itemCount : number, onReorder : (oldIndex: number, newIndex: number) => void,}) => ISliverReorderableList;
sliverReorderableListOf: (context: IBuildContext) => ISliverReorderableListState;
sliverReorderableListMaybeOf: (context: IBuildContext) => ISliverReorderableListState | undefined
}
};
export interface ISliverReorderableList


{
itemCount: number;
itemExtent: number | undefined;
prototypeItem: IWidget | undefined;
key: IKey | undefined;
createState: () => ISliverReorderableListState;
createElement: () => IStatefulElement;
toStringShort: () => string;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class SliverReorderableList

 implements IStatefulWidget, IDiagnosticable
{    public readonly itemCount: number = undefined as any;
    public readonly itemExtent: number | undefined = undefined as any;
    public readonly prototypeItem: IWidget | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  itemExtent? : number | undefined, key? : IKey | undefined, prototypeItem? : IWidget | undefined, proxyDecorator? : (child: IWidget, index: number, animation: IAnimation<number>) => IWidget | undefined, itemBuilder : (context: IBuildContext, index: number) => IWidget, itemCount : number, onReorder : (oldIndex: number, newIndex: number) => void,}){
flutter.widgets.sliverReorderableList(this, props);}
public static of(context: IBuildContext) : ISliverReorderableListState{
return flutter.widgets.sliverReorderableListOf(context);
}public static maybeOf(context: IBuildContext) : ISliverReorderableListState | undefined{
return flutter.widgets.sliverReorderableListMaybeOf(context);
}    private readonly _dart_createState: () => ISliverReorderableListState = undefined as any;
    private readonly _dart_createElement: () => IStatefulElement = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public createState() : ISliverReorderableListState {
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
