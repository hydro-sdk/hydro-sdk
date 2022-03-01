
import { IDiagnosticableTree } from "../foundation/diagnosticableTree";
import { IListenable } from "../foundation/listenable";
import { IDiagnosticableTreeMixin } from "../foundation/diagnosticableTreeMixin";
import { IChangeNotifier } from "../foundation/changeNotifier";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { FocusHighlightStrategy } from "./focusHighlightStrategy";
import { FocusHighlightMode } from "./focusHighlightMode";
import { IFocusNode } from "./focusNode";
import { IList } from "../../dart/core/list";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IFocusScopeNode } from "./focusScopeNode";
declare const flutter: {
widgets: {
focusManager: (this: void, focusManager: IFocusManager) => IFocusManager;
focusManagerInstance: () => IFocusManager
}
};
export interface IFocusManager


{
rootScope: IFocusScopeNode;
registerGlobalHandlers: () => void;
dispose: () => void;
getHighlightStrategy: () => FocusHighlightStrategy;
setHighlightStrategy: (highlightStrategy: FocusHighlightStrategy) => void;
getHighlightMode: () => FocusHighlightMode;
addHighlightModeListener: (listener : (value: FocusHighlightMode) => void) => void;
removeHighlightModeListener: (listener : (value: FocusHighlightMode) => void) => void;
getPrimaryFocus: () => IFocusNode | undefined;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toStringShort: () => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
addListener: (listener : () => void) => void;
removeListener: (listener : () => void) => void;
getHasListeners: () => boolean;
}export class FocusManager

 implements IDiagnosticableTreeMixin, IChangeNotifier, IDiagnosticable, Omit<IDiagnosticableTree, "toStringShallow" | "toStringDeep" | "debugDescribeChildren" | "debugFillProperties" | "toString" | "toStringShort" | "toDiagnosticsNode">, IListenable
{    public readonly rootScope: IFocusScopeNode = undefined as any;
public constructor(){
flutter.widgets.focusManager(this);}
public static instance() : IFocusManager{
return flutter.widgets.focusManagerInstance();
}    private readonly _dart_registerGlobalHandlers: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_getHighlightStrategy: () => FocusHighlightStrategy = undefined as any;
    private readonly _dart_setHighlightStrategy: (highlightStrategy: FocusHighlightStrategy) => void = undefined as any;
    private readonly _dart_getHighlightMode: () => FocusHighlightMode = undefined as any;
    private readonly _dart_addHighlightModeListener: (listener : (value: FocusHighlightMode) => void) => void = undefined as any;
    private readonly _dart_removeHighlightModeListener: (listener : (value: FocusHighlightMode) => void) => void = undefined as any;
    private readonly _dart_getPrimaryFocus: () => IFocusNode | undefined = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_addListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_removeListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
public registerGlobalHandlers() : void {
    return this._dart_registerGlobalHandlers();
}
public dispose() : void {
    return this._dart_dispose();
}
public getHighlightStrategy() : FocusHighlightStrategy {
    return this._dart_getHighlightStrategy();
}
public setHighlightStrategy(highlightStrategy: FocusHighlightStrategy) : void {
    return this._dart_setHighlightStrategy(highlightStrategy);
}
public getHighlightMode() : FocusHighlightMode {
    return this._dart_getHighlightMode();
}
public addHighlightModeListener(listener : (value: FocusHighlightMode) => void) : void {
    return this._dart_addHighlightModeListener(listener);
}
public removeHighlightModeListener(listener : (value: FocusHighlightMode) => void) : void {
    return this._dart_removeHighlightModeListener(listener);
}
public getPrimaryFocus() : IFocusNode | undefined {
    return this._dart_getPrimaryFocus();
}
public debugDescribeChildren() : IList<IDiagnosticsNode> {
    return this._dart_debugDescribeChildren();
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public toString( props : {  minLevel? : DiagnosticLevel,}) : string {
    return this._dart_toString({
...toStringDefaultProps,
...props
});
}
public toStringShallow( props : {  joiner? : string, minLevel? : DiagnosticLevel,}) : string {
    return this._dart_toStringShallow({
...toStringShallowDefaultProps,
...props
});
}
public toStringDeep( props : {  minLevel? : DiagnosticLevel, prefixLineOne? : string, prefixOtherLines? : string | undefined,}) : string {
    return this._dart_toStringDeep({
...toStringDeepDefaultProps,
...props
});
}
public toStringShort() : string {
    return this._dart_toStringShort();
}
public toDiagnosticsNode( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) : IDiagnosticsNode {
    return this._dart_toDiagnosticsNode(props);
}
public addListener(listener : () => void) : void {
    return this._dart_addListener(listener);
}
public removeListener(listener : () => void) : void {
    return this._dart_removeListener(listener);
}
public notifyListeners() : void {
    return this._dart_notifyListeners();
}
public getHasListeners() : boolean {
    return this._dart_getHasListeners();
}
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
const toStringShallowDefaultProps = {
    joiner: ", ",
    minLevel: DiagnosticLevel.debug,
};
const toStringDeepDefaultProps = {
    minLevel: DiagnosticLevel.debug,
    prefixLineOne: "",
};
