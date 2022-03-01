
import { IIntent } from "./intent";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IBuildContext } from "./buildContext";
import { Type } from "../../dart/core/type";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
declare const flutter: {
widgets: {
action: <T>(this: void, action: IAction<T>) => IAction<T>;
actionOverridable: <T>( props : {  context : IBuildContext, defaultAction : IAction<T>,}) => IAction<T>
}
};
export interface IAction
<T>

{
getCallingAction: () => IAction<T> | undefined;
getIntentType: () => Type;
isEnabled: (intent: T) => boolean;
getIsActionEnabled: () => boolean;
consumesKey: (intent: T) => boolean;
invoke: (intent: T) => Object | undefined;
addActionListener: (listener : (action: IAction<IIntent>) => void) => void;
removeActionListener: (listener : (action: IAction<IIntent>) => void) => void;
toStringShort: () => string;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
}export class Action
<T>
 implements IDiagnosticable
{public constructor(){
flutter.widgets.action(this);}
public static overridable<T>( props : {  context : IBuildContext, defaultAction : IAction<T>,}) : IAction<T>{
return flutter.widgets.actionOverridable(props);
}    private readonly _dart_getCallingAction: () => IAction<T> | undefined = undefined as any;
    private readonly _dart_getIntentType: () => Type = undefined as any;
    private readonly _dart_isEnabled: (intent: T) => boolean = undefined as any;
    private readonly _dart_getIsActionEnabled: () => boolean = undefined as any;
    private readonly _dart_consumesKey: (intent: T) => boolean = undefined as any;
    private readonly _dart_invoke: (intent: T) => Object | undefined = undefined as any;
    private readonly _dart_addActionListener: (listener : (action: IAction<IIntent>) => void) => void = undefined as any;
    private readonly _dart_removeActionListener: (listener : (action: IAction<IIntent>) => void) => void = undefined as any;
    private readonly _dart_notifyActionListeners: () => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
public getCallingAction() : IAction<T> | undefined {
    return this._dart_getCallingAction();
}
public getIntentType() : Type {
    return this._dart_getIntentType();
}
public isEnabled(intent: T) : boolean {
    return this._dart_isEnabled(intent);
}
public getIsActionEnabled() : boolean {
    return this._dart_getIsActionEnabled();
}
public consumesKey(intent: T) : boolean {
    return this._dart_consumesKey(intent);
}
public invoke(intent: T) : Object | undefined {
    return this._dart_invoke(intent);
}
public addActionListener(listener : (action: IAction<IIntent>) => void) : void {
    return this._dart_addActionListener(listener);
}
public removeActionListener(listener : (action: IAction<IIntent>) => void) : void {
    return this._dart_removeActionListener(listener);
}
public notifyActionListeners() : void {
    return this._dart_notifyActionListeners();
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
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
