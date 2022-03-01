
import { IMap,Map } from "../../dart/core/map";
import { IShortcutActivator } from "./shortcutActivator";
import { IIntent } from "./intent";
import { IChangeNotifier } from "../foundation/changeNotifier";
import { IListenable } from "../foundation/listenable";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IBuildContext } from "./buildContext";
import { IRawKeyEvent } from "../services/rawKeyEvent";
import { KeyEventResult } from "./keyEventResult";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IIterable } from "../../dart/core/iterable";
import { IMapEntry } from "../../dart/core/mapEntry";
import { List } from "../../dart/core/list";
declare const flutter: {
widgets: {
shortcutManager: (this: void, shortcutManager: IShortcutManager, props : {  modal : boolean, shortcuts : IMap<IShortcutActivator, IIntent>,}) => IShortcutManager
}
};
export interface IShortcutManager


{
modal: boolean;
getShortcuts: () => IMap<IShortcutActivator, IIntent>;
setShortcuts: (value: IMap<IShortcutActivator, IIntent>) => void;
handleKeypress: (context: IBuildContext, event: IRawKeyEvent) => KeyEventResult;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
toStringShort: () => string;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
addListener: (listener : () => void) => void;
removeListener: (listener : () => void) => void;
dispose: () => void;
getHasListeners: () => boolean;
getHashCode: () => number;
}export class ShortcutManager

 implements IChangeNotifier, IDiagnosticable, IListenable
{    public readonly modal: boolean = undefined as any;
public constructor( props : {  modal? : boolean, shortcuts? : IMap<IShortcutActivator, IIntent>,}){
flutter.widgets.shortcutManager(this, {
...shortcutManagerDefaultProps,
...props
});}
    private readonly _dart_getShortcuts: () => IMap<IShortcutActivator, IIntent> = undefined as any;
    private readonly _dart_setShortcuts: (value: IMap<IShortcutActivator, IIntent>) => void = undefined as any;
    private readonly _dart_handleKeypress: (context: IBuildContext, event: IRawKeyEvent) => KeyEventResult = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_addListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_removeListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getShortcuts() : IMap<IShortcutActivator, IIntent> {
    return this._dart_getShortcuts();
}
public setShortcuts(value: IMap<IShortcutActivator, IIntent>) : void {
    return this._dart_setShortcuts(value);
}
public handleKeypress(context: IBuildContext, event: IRawKeyEvent) : KeyEventResult {
    return this._dart_handleKeypress(context, event);
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public toStringShort() : string {
    return this._dart_toStringShort();
}
public toString( props : {  minLevel? : DiagnosticLevel,}) : string {
    return this._dart_toString({
...toStringDefaultProps,
...props
});
}
public toDiagnosticsNode( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) : IDiagnosticsNode {
    return this._dart_toDiagnosticsNode(props);
}
public addListener(listener : () => void) : void {
    return this._dart_addListener(listener);
}
public removeListener(listener : () => void) : void {
    return this._dart_removeListener(listener);
}
public dispose() : void {
    return this._dart_dispose();
}
public notifyListeners() : void {
    return this._dart_notifyListeners();
}
public getHasListeners() : boolean {
    return this._dart_getHasListeners();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
const shortcutManagerDefaultProps = {
    modal: false,
    shortcuts:  Map.fromEntries(<IIterable<IMapEntry<IShortcutActivator,IIntent>>><unknown>List.fromArray([])),
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
