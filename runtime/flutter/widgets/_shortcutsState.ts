
import { IState } from "./state";
import { IShortcuts } from "./shortcuts";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IBuildContext } from "./buildContext";
import { IWidget } from "./widget";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IShortcutManager } from "./shortcutManager";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
declare const flutter: {
widgets: {
_shortcutsState: (this: void, _shortcutsState: I_ShortcutsState) => I_ShortcutsState
}
};
export interface I_ShortcutsState


{
getManager: () => IShortcutManager;
dispose: () => void;
initState: () => void;
didUpdateWidget: (oldWidget: unknown) => void;
build: (context: IBuildContext) => IWidget;
reassemble: () => void;
setState: (fn : () => void) => void;
deactivate: () => void;
activate: () => void;
didChangeDependencies: () => void;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
getWidget: () => IShortcuts;
getContext: () => IBuildContext;
getMounted: () => boolean;
toStringShort: () => string;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
getHashCode: () => number;
}export class _ShortcutsState

 implements Omit<IState<IShortcuts>, "debugFillProperties">, IDiagnosticable
{public constructor(){
flutter.widgets._shortcutsState(this);}
    private readonly _dart_getManager: () => IShortcutManager = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void = undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget = undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn : () => void) => void = undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_getWidget: () => IShortcuts = undefined as any;
    private readonly _dart_getContext: () => IBuildContext = undefined as any;
    private readonly _dart_getMounted: () => boolean = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getManager() : IShortcutManager {
    return this._dart_getManager();
}
public dispose() : void {
    return this._dart_dispose();
}
public initState() : void {
    return this._dart_initState();
}
public didUpdateWidget(oldWidget: any) : void {
    return this._dart_didUpdateWidget(oldWidget);
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
public didChangeDependencies() : void {
    return this._dart_didChangeDependencies();
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public getWidget() : IShortcuts {
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
