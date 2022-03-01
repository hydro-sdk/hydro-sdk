
import { IShortcutActivator } from "./shortcutActivator";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IIterable } from "../../dart/core/iterable";
import { ILogicalKeyboardKey } from "../services/logicalKeyboardKey";
import { IRawKeyEvent } from "../services/rawKeyEvent";
import { IRawKeyboard } from "../services/rawKeyboard";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
declare const flutter: {
widgets: {
characterActivator: (this: void, characterActivator: ICharacterActivator, character: string) => ICharacterActivator
}
};
export interface ICharacterActivator


{
character: string;
getTriggers: () => IIterable<ILogicalKeyboardKey> | undefined;
accepts: (event: IRawKeyEvent, state: IRawKeyboard) => boolean;
debugDescribeKeys: () => string;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
toStringShort: () => string;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
}export class CharacterActivator

 implements IDiagnosticable, IShortcutActivator
{    public readonly character: string = undefined as any;
public constructor(character: string){
flutter.widgets.characterActivator(this, character);}
    private readonly _dart_getTriggers: () => IIterable<ILogicalKeyboardKey> | undefined = undefined as any;
    private readonly _dart_accepts: (event: IRawKeyEvent, state: IRawKeyboard) => boolean = undefined as any;
    private readonly _dart_debugDescribeKeys: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
public getTriggers() : IIterable<ILogicalKeyboardKey> | undefined {
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
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
