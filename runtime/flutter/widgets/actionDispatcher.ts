
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IAction } from "./action";
import { IIntent } from "./intent";
import { IBuildContext } from "./buildContext";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
declare const flutter: {
widgets: {
actionDispatcher: (this: void, actionDispatcher: IActionDispatcher) => IActionDispatcher
}
};
export interface IActionDispatcher


{
invokeAction: (action: unknown, intent: unknown, context?: IBuildContext | undefined) => Object | undefined;
toStringShort: () => string;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
}export class ActionDispatcher

 implements IDiagnosticable
{public constructor(){
flutter.widgets.actionDispatcher(this);}
    private readonly _dart_invokeAction: (action: any, intent: any, context?: IBuildContext | undefined) => Object | undefined = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
public invokeAction(action: any, intent: any, context?: IBuildContext | undefined) : Object | undefined {
    return this._dart_invokeAction(action, intent, context);
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
