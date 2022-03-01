
import { IIntent } from "./intent";
import { IAction } from "./action";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { Type } from "../../dart/core/type";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
declare const flutter: {
widgets: {
callbackAction: <T>(this: void, callbackAction: ICallbackAction<T>, props : {  onInvoke : (intent: T) => Object | undefined,}) => ICallbackAction<T>
}
};
export interface ICallbackAction
<T>

{
invoke: (intent: T) => Object | undefined;
isEnabled: (intent: T) => boolean;
consumesKey: (intent: T) => boolean;
addActionListener: (listener : (action: IAction<IIntent>) => void) => void;
removeActionListener: (listener : (action: IAction<IIntent>) => void) => void;
getCallingAction: () => IAction<T> | undefined;
getIntentType: () => Type;
getIsActionEnabled: () => boolean;
toStringShort: () => string;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
getHashCode: () => number;
}export class CallbackAction
<T>
 implements Omit<IAction<T>, >, IDiagnosticable
{public constructor( props : {  onInvoke : (intent: T) => Object | undefined,}){
flutter.widgets.callbackAction(this, props);}
    private readonly _dart_invoke: (intent: T) => Object | undefined = undefined as any;
    private readonly _dart_isEnabled: (intent: T) => boolean = undefined as any;
    private readonly _dart_consumesKey: (intent: T) => boolean = undefined as any;
    private readonly _dart_addActionListener: (listener : (action: IAction<IIntent>) => void) => void = undefined as any;
    private readonly _dart_removeActionListener: (listener : (action: IAction<IIntent>) => void) => void = undefined as any;
    private readonly _dart_notifyActionListeners: () => void = undefined as any;
    private readonly _dart_getCallingAction: () => IAction<T> | undefined = undefined as any;
    private readonly _dart_getIntentType: () => Type = undefined as any;
    private readonly _dart_getIsActionEnabled: () => boolean = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public invoke(intent: T) : Object | undefined {
    return this._dart_invoke(intent);
}
public isEnabled(intent: T) : boolean {
    return this._dart_isEnabled(intent);
}
public consumesKey(intent: T) : boolean {
    return this._dart_consumesKey(intent);
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
public getCallingAction() : IAction<T> | undefined {
    return this._dart_getCallingAction();
}
public getIntentType() : Type {
    return this._dart_getIntentType();
}
public getIsActionEnabled() : boolean {
    return this._dart_getIsActionEnabled();
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
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
