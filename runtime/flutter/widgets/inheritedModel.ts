
import { IKey } from "../foundation/key";
import { IWidget } from "./widget";
import { IInheritedWidget } from "./inheritedWidget";
import { IInheritedElement } from "./inheritedElement";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IBuildContext } from "./buildContext";
import { IInheritedModelElement } from "./inheritedModelElement";
import { ISet } from "../../dart/core/set";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
declare const flutter: {
widgets: {
inheritedModel: <T>(this: void, inheritedModel: IInheritedModel<T>, props : {  key? : IKey | undefined, child : IWidget,}) => IInheritedModel<T>;
inheritedModelInheritFrom: <T>(context: IBuildContext, props? : {  aspect? : Object | undefined,}) => T | undefined
}
};
export interface IInheritedModel
<T>

{
child: IWidget;
key: IKey | undefined;
createElement: () => IInheritedModelElement<T>;
updateShouldNotifyDependent: (oldWidget: unknown, dependencies: ISet<T>) => boolean;
isSupportedAspect: (aspect: Object) => boolean;
updateShouldNotify: (oldWidget: unknown) => boolean;
toStringShort: () => string;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class InheritedModel
<T>
 implements IInheritedWidget, IDiagnosticable
{    public readonly child: IWidget = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  key? : IKey | undefined, child : IWidget,}){
flutter.widgets.inheritedModel(this, props);}
public static inheritFrom<T>(context: IBuildContext, props? : {  aspect? : Object | undefined,}) : T | undefined{
return flutter.widgets.inheritedModelInheritFrom(context, props);
}    private readonly _dart_createElement: () => IInheritedModelElement<T> = undefined as any;
    private readonly _dart_updateShouldNotifyDependent: (oldWidget: any, dependencies: ISet<T>) => boolean = undefined as any;
    private readonly _dart_isSupportedAspect: (aspect: Object) => boolean = undefined as any;
    private readonly _dart_updateShouldNotify: (oldWidget: any) => boolean = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public createElement() : IInheritedModelElement<T> {
    return this._dart_createElement();
}
public updateShouldNotifyDependent(oldWidget: any, dependencies: ISet<T>) : boolean {
    return this._dart_updateShouldNotifyDependent(oldWidget, dependencies);
}
public isSupportedAspect(aspect: Object) : boolean {
    return this._dart_isSupportedAspect(aspect);
}
public updateShouldNotify(oldWidget: any) : boolean {
    return this._dart_updateShouldNotify(oldWidget);
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
