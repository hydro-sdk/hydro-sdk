
import { IState } from "./state";
import { IAutofillGroup } from "./autofillGroup";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IBuildContext } from "./buildContext";
import { IWidget } from "./widget";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IAutofillScope } from "../services/autofillScope";
import { IAutofillScopeMixin } from "../services/autofillScopeMixin";
import { IAutofillClient } from "../services/autofillClient";
import { IIterable } from "../../dart/core/iterable";
import { ITextInputClient } from "../services/textInputClient";
import { ITextInputConfiguration } from "../services/textInputConfiguration";
import { ITextInputConnection } from "../services/textInputConnection";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
declare const flutter: {
widgets: {
autofillGroupState: (this: void, autofillGroupState: IAutofillGroupState) => IAutofillGroupState
}
};
export interface IAutofillGroupState


{
getAutofillClient: (autofillId: string) => IAutofillClient | undefined;
getAutofillClients: () => IIterable<IAutofillClient>;
register: (client: IAutofillClient) => void;
unregister: (autofillId: string) => void;
didChangeDependencies: () => void;
build: (context: IBuildContext) => IWidget;
dispose: () => void;
attach: (trigger: ITextInputClient, configuration: ITextInputConfiguration) => ITextInputConnection;
initState: () => void;
didUpdateWidget: (oldWidget: unknown) => void;
reassemble: () => void;
setState: (fn : () => void) => void;
deactivate: () => void;
activate: () => void;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
getWidget: () => IAutofillGroup;
getContext: () => IBuildContext;
getMounted: () => boolean;
toStringShort: () => string;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
getHashCode: () => number;
}export class AutofillGroupState

 implements Omit<IState<IAutofillGroup>, "debugFillProperties">, IAutofillScopeMixin, IDiagnosticable, IAutofillScope
{public constructor(){
flutter.widgets.autofillGroupState(this);}
    private readonly _dart_getAutofillClient: (autofillId: string) => IAutofillClient | undefined = undefined as any;
    private readonly _dart_getAutofillClients: () => IIterable<IAutofillClient> = undefined as any;
    private readonly _dart_register: (client: IAutofillClient) => void = undefined as any;
    private readonly _dart_unregister: (autofillId: string) => void = undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_attach: (trigger: ITextInputClient, configuration: ITextInputConfiguration) => ITextInputConnection = undefined as any;
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void = undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn : () => void) => void = undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_getWidget: () => IAutofillGroup = undefined as any;
    private readonly _dart_getContext: () => IBuildContext = undefined as any;
    private readonly _dart_getMounted: () => boolean = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getAutofillClient(autofillId: string) : IAutofillClient | undefined {
    return this._dart_getAutofillClient(autofillId);
}
public getAutofillClients() : IIterable<IAutofillClient> {
    return this._dart_getAutofillClients();
}
public register(client: IAutofillClient) : void {
    return this._dart_register(client);
}
public unregister(autofillId: string) : void {
    return this._dart_unregister(autofillId);
}
public didChangeDependencies() : void {
    return this._dart_didChangeDependencies();
}
public build(context: IBuildContext) : IWidget {
    return this._dart_build(context);
}
public dispose() : void {
    return this._dart_dispose();
}
public attach(trigger: ITextInputClient, configuration: ITextInputConfiguration) : ITextInputConnection {
    return this._dart_attach(trigger, configuration);
}
public initState() : void {
    return this._dart_initState();
}
public didUpdateWidget(oldWidget: any) : void {
    return this._dart_didUpdateWidget(oldWidget);
}
public reassemble() : void {
    return this._dart_reassemble();
}
public setState(fn : () => void) : void {
    return this._dart_setState(fn);
}
public deactivate() : void {
    return this._dart_deactivate();
}
public activate() : void {
    return this._dart_activate();
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public getWidget() : IAutofillGroup {
    return this._dart_getWidget();
}
public getContext() : IBuildContext {
    return this._dart_getContext();
}
public getMounted() : boolean {
    return this._dart_getMounted();
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
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
