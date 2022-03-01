
import { IKey } from "../foundation/key";
import { IWidget } from "./widget";
import { ITextHeightBehavior } from "../../dart/ui/textHeightBehavior";
import { IInheritedTheme } from "./inheritedTheme";
import { IBuildContext } from "./buildContext";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IInheritedElement } from "./inheritedElement";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
declare const flutter: {
widgets: {
defaultTextHeightBehavior: (this: void, defaultTextHeightBehavior: IDefaultTextHeightBehavior, props : {  key? : IKey | undefined, child : IWidget, textHeightBehavior : ITextHeightBehavior,}) => IDefaultTextHeightBehavior;
defaultTextHeightBehaviorOf: (context: IBuildContext) => ITextHeightBehavior | undefined
}
};
export interface IDefaultTextHeightBehavior


{
textHeightBehavior: ITextHeightBehavior;
child: IWidget;
key: IKey | undefined;
updateShouldNotify: (oldWidget: unknown) => boolean;
wrap: (context: IBuildContext, child: IWidget) => IWidget;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
createElement: () => IInheritedElement;
toStringShort: () => string;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class DefaultTextHeightBehavior

 implements IInheritedTheme, IDiagnosticable
{    public readonly textHeightBehavior: ITextHeightBehavior = undefined as any;
    public readonly child: IWidget = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  key? : IKey | undefined, child : IWidget, textHeightBehavior : ITextHeightBehavior,}){
flutter.widgets.defaultTextHeightBehavior(this, props);}
public static of(context: IBuildContext) : ITextHeightBehavior | undefined{
return flutter.widgets.defaultTextHeightBehaviorOf(context);
}    private readonly _dart_updateShouldNotify: (oldWidget: any) => boolean = undefined as any;
    private readonly _dart_wrap: (context: IBuildContext, child: IWidget) => IWidget = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_createElement: () => IInheritedElement = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public updateShouldNotify(oldWidget: any) : boolean {
    return this._dart_updateShouldNotify(oldWidget);
}
public wrap(context: IBuildContext, child: IWidget) : IWidget {
    return this._dart_wrap(context, child);
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public createElement() : IInheritedElement {
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
