
import { IKey } from "../foundation/key";
import { IShortcutManager } from "./shortcutManager";
import { IWidget } from "./widget";
import { IMap } from "../../dart/core/map";
import { IShortcutActivator } from "./shortcutActivator";
import { IIntent } from "./intent";
import { IStatefulWidget } from "./statefulWidget";
import { IStatefulElement } from "./statefulElement";
import { IState } from "./state";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IBuildContext } from "./buildContext";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
declare const flutter: {
widgets: {
shortcuts: (this: void, shortcuts: IShortcuts, props : {  debugLabel? : string | undefined, key? : IKey | undefined, manager? : IShortcutManager | undefined, child : IWidget, shortcuts : IMap<IShortcutActivator, IIntent>,}) => IShortcuts;
shortcutsOf: (context: IBuildContext) => IShortcutManager;
shortcutsMaybeOf: (context: IBuildContext) => IShortcutManager | undefined
}
};
export interface IShortcuts


{
manager: IShortcutManager | undefined;
shortcuts: IMap<IShortcutActivator, IIntent>;
child: IWidget;
debugLabel: string | undefined;
key: IKey | undefined;
createState: () => IState<IShortcuts>;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
createElement: () => IStatefulElement;
toStringShort: () => string;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class Shortcuts

 implements IStatefulWidget, IDiagnosticable
{    public readonly manager: IShortcutManager | undefined = undefined as any;
    public readonly shortcuts: IMap<IShortcutActivator, IIntent> = undefined as any;
    public readonly child: IWidget = undefined as any;
    public readonly debugLabel: string | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  debugLabel? : string | undefined, key? : IKey | undefined, manager? : IShortcutManager | undefined, child : IWidget, shortcuts : IMap<IShortcutActivator, IIntent>,}){
flutter.widgets.shortcuts(this, props);}
public static of(context: IBuildContext) : IShortcutManager{
return flutter.widgets.shortcutsOf(context);
}public static maybeOf(context: IBuildContext) : IShortcutManager | undefined{
return flutter.widgets.shortcutsMaybeOf(context);
}    private readonly _dart_createState: () => IState<IShortcuts> = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_createElement: () => IStatefulElement = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public createState() : IState<IShortcuts> {
    return this._dart_createState();
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public createElement() : IStatefulElement {
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
