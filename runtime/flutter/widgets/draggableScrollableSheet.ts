
import { IKey } from "../foundation/key";
import { IList } from "../../dart/core/list";
import { IBuildContext } from "./buildContext";
import { IScrollController } from "./scrollController";
import { IWidget } from "./widget";
import { IStatefulWidget } from "./statefulWidget";
import { IStatefulElement } from "./statefulElement";
import { IState } from "./state";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
declare const flutter: {
widgets: {
draggableScrollableSheet: (this: void, draggableScrollableSheet: IDraggableScrollableSheet, props : {  expand : boolean, initialChildSize : number, key? : IKey | undefined, maxChildSize : number, minChildSize : number, snap : boolean, snapSizes? : IList<number> | undefined, builder : (context: IBuildContext, scrollController: IScrollController) => IWidget,}) => IDraggableScrollableSheet
}
};
export interface IDraggableScrollableSheet


{
initialChildSize: number;
minChildSize: number;
maxChildSize: number;
expand: boolean;
snap: boolean;
snapSizes: IList<number> | undefined;
key: IKey | undefined;
createState: () => IState<IDraggableScrollableSheet>;
createElement: () => IStatefulElement;
toStringShort: () => string;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class DraggableScrollableSheet

 implements IStatefulWidget, IDiagnosticable
{    public readonly initialChildSize: number = undefined as any;
    public readonly minChildSize: number = undefined as any;
    public readonly maxChildSize: number = undefined as any;
    public readonly expand: boolean = undefined as any;
    public readonly snap: boolean = undefined as any;
    public readonly snapSizes: IList<number> | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  expand? : boolean, initialChildSize? : number, key? : IKey | undefined, maxChildSize? : number, minChildSize? : number, snap? : boolean, snapSizes? : IList<number> | undefined, builder : (context: IBuildContext, scrollController: IScrollController) => IWidget,}){
flutter.widgets.draggableScrollableSheet(this, {
...draggableScrollableSheetDefaultProps,
...props
});}
    private readonly _dart_createState: () => IState<IDraggableScrollableSheet> = undefined as any;
    private readonly _dart_createElement: () => IStatefulElement = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public createState() : IState<IDraggableScrollableSheet> {
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
const draggableScrollableSheetDefaultProps = {
    expand: true,
    initialChildSize: 0.5,
    maxChildSize: 1.0,
    minChildSize: 0.25,
    snap: false,
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
