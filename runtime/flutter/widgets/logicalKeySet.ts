
import { ILogicalKeyboardKey } from "../services/logicalKeyboardKey";
import { IKeySet } from "./keySet";
import { ISet } from "../../dart/core/set";
import { IShortcutActivator } from "./shortcutActivator";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IIterable } from "../../dart/core/iterable";
import { IRawKeyEvent } from "../services/rawKeyEvent";
import { IRawKeyboard } from "../services/rawKeyboard";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
declare const flutter: {
widgets: {
logicalKeySet: (this: void, logicalKeySet: ILogicalKeySet, key1: ILogicalKeyboardKey, key2?: ILogicalKeyboardKey | undefined, key3?: ILogicalKeyboardKey | undefined, key4?: ILogicalKeyboardKey | undefined) => ILogicalKeySet
}
};
export interface ILogicalKeySet


{
hashCode: number;
getTriggers: () => IIterable<ILogicalKeyboardKey>;
accepts: (event: IRawKeyEvent, state: IRawKeyboard) => boolean;
debugDescribeKeys: () => string;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
toStringShort: () => string;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
getKeys: () => ISet<ILogicalKeyboardKey>;
getHashCode: () => number;
}export class LogicalKeySet

 implements IKeySet<ILogicalKeyboardKey>, IDiagnosticable, IShortcutActivator
{    public readonly hashCode: number = undefined as any;
public constructor(key1: ILogicalKeyboardKey, key2?: ILogicalKeyboardKey | undefined, key3?: ILogicalKeyboardKey | undefined, key4?: ILogicalKeyboardKey | undefined){
flutter.widgets.logicalKeySet(this, key1, key2, key3, key4);}
    private readonly _dart_getTriggers: () => IIterable<ILogicalKeyboardKey> = undefined as any;
    private readonly _dart_accepts: (event: IRawKeyEvent, state: IRawKeyboard) => boolean = undefined as any;
    private readonly _dart_debugDescribeKeys: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_getKeys: () => ISet<ILogicalKeyboardKey> = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getTriggers() : IIterable<ILogicalKeyboardKey> {
    return this._dart_getTriggers();
}
public accepts(event: IRawKeyEvent, state: IRawKeyboard) : boolean {
    return this._dart_accepts(event, state);
}
public debugDescribeKeys() : string {
    return this._dart_debugDescribeKeys();
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
public getKeys() : ISet<ILogicalKeyboardKey> {
    return this._dart_getKeys();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
