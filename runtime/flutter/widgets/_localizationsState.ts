
import { IState } from "./state";
import { ILocalizations } from "./localizations";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IBuildContext } from "./buildContext";
import { IWidget } from "./widget";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { ILocale } from "../../dart/ui/locale";
import { Type } from "../../dart/core/type";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
declare const flutter: {
widgets: {
_localizationsState: (this: void, _localizationsState: I_LocalizationsState) => I_LocalizationsState
}
};
export interface I_LocalizationsState


{
getLocale: () => ILocale | undefined;
initState: () => void;
didUpdateWidget: (old: unknown) => void;
load: (locale: ILocale) => void;
resourcesFor: <T>(type: Type) => T;
build: (context: IBuildContext) => IWidget;
reassemble: () => void;
setState: (fn : () => void) => void;
deactivate: () => void;
activate: () => void;
dispose: () => void;
didChangeDependencies: () => void;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
getWidget: () => ILocalizations;
getContext: () => IBuildContext;
getMounted: () => boolean;
toStringShort: () => string;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
getHashCode: () => number;
}export class _LocalizationsState

 implements Omit<IState<ILocalizations>, "debugFillProperties">, IDiagnosticable
{public constructor(){
flutter.widgets._localizationsState(this);}
    private readonly _dart_getLocale: () => ILocale | undefined = undefined as any;
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_didUpdateWidget: (old: any) => void = undefined as any;
    private readonly _dart_load: (locale: ILocale) => void = undefined as any;
    private readonly _dart_resourcesFor: <T>(type: Type) => T = undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget = undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn : () => void) => void = undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_getWidget: () => ILocalizations = undefined as any;
    private readonly _dart_getContext: () => IBuildContext = undefined as any;
    private readonly _dart_getMounted: () => boolean = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getLocale() : ILocale | undefined {
    return this._dart_getLocale();
}
public initState() : void {
    return this._dart_initState();
}
public didUpdateWidget(old: any) : void {
    return this._dart_didUpdateWidget(old);
}
public load(locale: ILocale) : void {
    return this._dart_load(locale);
}
public resourcesFor<T>(type: Type) : T {
    return this._dart_resourcesFor(type);
}
public build(context: IBuildContext) : IWidget {
    return this._dart_build(context);
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
public dispose() : void {
    return this._dart_dispose();
}
public didChangeDependencies() : void {
    return this._dart_didChangeDependencies();
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public getWidget() : ILocalizations {
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
