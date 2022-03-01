
import { IBuildContext } from "./buildContext";
import { IDismissAction } from "./dismissAction";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IDismissIntent } from "./dismissIntent";
import { IAction } from "./action";
import { IIntent } from "./intent";
import { Type } from "../../dart/core/type";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
declare const flutter: {
widgets: {
_dismissModalAction: (this: void, _dismissModalAction: I_DismissModalAction, context: IBuildContext) => I_DismissModalAction
}
};
export interface I_DismissModalAction


{
context: IBuildContext;
isEnabled: (intent: IDismissIntent) => boolean;
invoke: (intent: IDismissIntent) => Object;
consumesKey: (intent: IDismissIntent) => boolean;
addActionListener: (listener : (action: IAction<IIntent>) => void) => void;
removeActionListener: (listener : (action: IAction<IIntent>) => void) => void;
getCallingAction: () => IAction<IDismissIntent> | undefined;
getIntentType: () => Type;
getIsActionEnabled: () => boolean;
toStringShort: () => string;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
getHashCode: () => number;
}export class _DismissModalAction

 implements IDismissAction, IDiagnosticable
{    public readonly context: IBuildContext = undefined as any;
public constructor(context: IBuildContext){
flutter.widgets._dismissModalAction(this, context);}
    private readonly _dart_isEnabled: (intent: IDismissIntent) => boolean = undefined as any;
    private readonly _dart_invoke: (intent: IDismissIntent) => Object = undefined as any;
    private readonly _dart_consumesKey: (intent: IDismissIntent) => boolean = undefined as any;
    private readonly _dart_addActionListener: (listener : (action: IAction<IIntent>) => void) => void = undefined as any;
    private readonly _dart_removeActionListener: (listener : (action: IAction<IIntent>) => void) => void = undefined as any;
    private readonly _dart_notifyActionListeners: () => void = undefined as any;
    private readonly _dart_getCallingAction: () => IAction<IDismissIntent> | undefined = undefined as any;
    private readonly _dart_getIntentType: () => Type = undefined as any;
    private readonly _dart_getIsActionEnabled: () => boolean = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public isEnabled(intent: IDismissIntent) : boolean {
    return this._dart_isEnabled(intent);
}
public invoke(intent: IDismissIntent) : Object {
    return this._dart_invoke(intent);
}
public consumesKey(intent: IDismissIntent) : boolean {
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
public getCallingAction() : IAction<IDismissIntent> | undefined {
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
