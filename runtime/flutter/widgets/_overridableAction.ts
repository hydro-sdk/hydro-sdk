
import { IIntent } from "./intent";
import { IAction } from "./action";
import { IBuildContext } from "./buildContext";
import { IContextAction } from "./contextAction";
import { I_OverridableActionMixin } from "./_overridableActionMixin";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { Type } from "../../dart/core/type";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
declare const flutter: {
widgets: {
_overridableAction: <T>(this: void, _overridableAction: I_OverridableAction<T>, props : {  defaultAction : IAction<T>, lookupContext : IBuildContext,}) => I_OverridableAction<T>
}
};
export interface I_OverridableAction
<T>

{
defaultAction: IAction<T>;
lookupContext: IBuildContext;
debugAssertMutuallyRecursive: boolean;
debugAssertIsActionEnabledMutuallyRecursive: boolean;
debugAssertIsEnabledMutuallyRecursive: boolean;
debugAssertConsumeKeyMutuallyRecursive: boolean;
invokeDefaultAction: (intent: T, fromAction?: IAction<T> | undefined, context?: IBuildContext | undefined) => Object | undefined;
getOverrideAction: ( props : {  declareDependency : boolean,}) => IAction<T> | undefined;
invoke: (intent: T, context?: IBuildContext | undefined) => Object | undefined;
isOverrideActionEnabled: (overrideAction: IAction<T>) => boolean;
isEnabled: (intent: T) => boolean;
consumesKey: (intent: T) => boolean;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
getDefaultAction: () => IAction<T>;
getLookupContext: () => IBuildContext;
getIsActionEnabled: () => boolean;
addActionListener: (listener : (action: IAction<IIntent>) => void) => void;
removeActionListener: (listener : (action: IAction<IIntent>) => void) => void;
getCallingAction: () => IAction<T> | undefined;
getIntentType: () => Type;
toStringShort: () => string;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
getHashCode: () => number;
}export class _OverridableAction
<T>
 implements IContextAction<T>, I_OverridableActionMixin<T>, IDiagnosticable
{    public readonly defaultAction: IAction<T> = undefined as any;
    public readonly lookupContext: IBuildContext = undefined as any;
    public readonly debugAssertMutuallyRecursive: boolean = undefined as any;
    public readonly debugAssertIsActionEnabledMutuallyRecursive: boolean = undefined as any;
    public readonly debugAssertIsEnabledMutuallyRecursive: boolean = undefined as any;
    public readonly debugAssertConsumeKeyMutuallyRecursive: boolean = undefined as any;
public constructor( props : {  defaultAction : IAction<T>, lookupContext : IBuildContext,}){
flutter.widgets._overridableAction(this, props);}
    private readonly _dart_invokeDefaultAction: (intent: T, fromAction?: IAction<T> | undefined, context?: IBuildContext | undefined) => Object | undefined = undefined as any;
    private readonly _dart_getOverrideAction: ( props : {  declareDependency : boolean,}) => IAction<T> | undefined = undefined as any;
    private readonly _dart_invoke: (intent: T, context?: IBuildContext | undefined) => Object | undefined = undefined as any;
    private readonly _dart_isOverrideActionEnabled: (overrideAction: IAction<T>) => boolean = undefined as any;
    private readonly _dart_isEnabled: (intent: T) => boolean = undefined as any;
    private readonly _dart_consumesKey: (intent: T) => boolean = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_getDefaultAction: () => IAction<T> = undefined as any;
    private readonly _dart_getLookupContext: () => IBuildContext = undefined as any;
    private readonly _dart_getIsActionEnabled: () => boolean = undefined as any;
    private readonly _dart_addActionListener: (listener : (action: IAction<IIntent>) => void) => void = undefined as any;
    private readonly _dart_removeActionListener: (listener : (action: IAction<IIntent>) => void) => void = undefined as any;
    private readonly _dart_notifyActionListeners: () => void = undefined as any;
    private readonly _dart_getCallingAction: () => IAction<T> | undefined = undefined as any;
    private readonly _dart_getIntentType: () => Type = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public invokeDefaultAction(intent: T, fromAction?: IAction<T> | undefined, context?: IBuildContext | undefined) : Object | undefined {
    return this._dart_invokeDefaultAction(intent, fromAction, context);
}
public getOverrideAction( props : {  declareDependency? : boolean,}) : IAction<T> | undefined {
    return this._dart_getOverrideAction({
...getOverrideActionDefaultProps,
...props
});
}
public invoke(intent: T, context?: IBuildContext | undefined) : Object | undefined {
    return this._dart_invoke(intent, context);
}
public isOverrideActionEnabled(overrideAction: IAction<T>) : boolean {
    return this._dart_isOverrideActionEnabled(overrideAction);
}
public isEnabled(intent: T) : boolean {
    return this._dart_isEnabled(intent);
}
public consumesKey(intent: T) : boolean {
    return this._dart_consumesKey(intent);
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public getDefaultAction() : IAction<T> {
    return this._dart_getDefaultAction();
}
public getLookupContext() : IBuildContext {
    return this._dart_getLookupContext();
}
public getIsActionEnabled() : boolean {
    return this._dart_getIsActionEnabled();
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
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
const getOverrideActionDefaultProps = {
    declareDependency: false,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
