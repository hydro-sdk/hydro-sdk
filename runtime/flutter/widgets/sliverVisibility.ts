
import { IKey } from "../foundation/key";
import { IWidget } from "./widget";
import { IStatelessWidget } from "./statelessWidget";
import { IStatelessElement } from "./statelessElement";
import { IBuildContext } from "./buildContext";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
import { SliverToBoxAdapter } from "./sliverToBoxAdapter";
declare const flutter: {
widgets: {
sliverVisibility: (this: void, sliverVisibility: ISliverVisibility, props : {  key? : IKey | undefined, maintainAnimation : boolean, maintainInteractivity : boolean, maintainSemantics : boolean, maintainSize : boolean, maintainState : boolean, replacementSliver : IWidget, visible : boolean, sliver : IWidget,}) => ISliverVisibility
}
};
export interface ISliverVisibility


{
sliver: IWidget;
replacementSliver: IWidget;
visible: boolean;
maintainState: boolean;
maintainAnimation: boolean;
maintainSize: boolean;
maintainSemantics: boolean;
maintainInteractivity: boolean;
key: IKey | undefined;
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
}export class SliverVisibility

 implements IStatelessWidget, IDiagnosticable
{    public readonly sliver: IWidget = undefined as any;
    public readonly replacementSliver: IWidget = undefined as any;
    public readonly visible: boolean = undefined as any;
    public readonly maintainState: boolean = undefined as any;
    public readonly maintainAnimation: boolean = undefined as any;
    public readonly maintainSize: boolean = undefined as any;
    public readonly maintainSemantics: boolean = undefined as any;
    public readonly maintainInteractivity: boolean = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  key? : IKey | undefined, maintainAnimation? : boolean, maintainInteractivity? : boolean, maintainSemantics? : boolean, maintainSize? : boolean, maintainState? : boolean, replacementSliver? : IWidget, visible? : boolean, sliver : IWidget,}){
flutter.widgets.sliverVisibility(this, {
...sliverVisibilityDefaultProps,
...props
});}
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
const sliverVisibilityDefaultProps = {
    maintainAnimation: false,
    maintainInteractivity: false,
    maintainSemantics: false,
    maintainSize: false,
    maintainState: false,
    replacementSliver: new SliverToBoxAdapter(),
    visible: true,
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
