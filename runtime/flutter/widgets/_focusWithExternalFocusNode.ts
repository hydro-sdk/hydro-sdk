
import { IKey } from "../foundation/key";
import { IWidget } from "./widget";
import { IFocusNode } from "./focusNode";
import { IFocus } from "./focus";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IState } from "./state";
import { IKeyEvent } from "../services/keyEvent";
import { KeyEventResult } from "./keyEventResult";
import { IRawKeyEvent } from "../services/rawKeyEvent";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IStatefulElement } from "./statefulElement";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
declare const flutter: {
widgets: {
_focusWithExternalFocusNode: (this: void, _focusWithExternalFocusNode: I_FocusWithExternalFocusNode, props : {  autofocus : boolean, includeSemantics : boolean, key? : IKey | undefined, onFocusChange? : (value: boolean) => void | undefined, child : IWidget, focusNode : IFocusNode,}) => I_FocusWithExternalFocusNode
}
};
export interface I_FocusWithExternalFocusNode


{
child: IWidget;
focusNode: IFocusNode | undefined;
autofocus: boolean;
onFocusChange: (value: boolean) => void | undefined;
includeSemantics: boolean;
key: IKey | undefined;
getOnKeyEvent: () => (node: IFocusNode, event: IKeyEvent) => KeyEventResult | undefined;
getOnKey: () => (node: IFocusNode, event: IRawKeyEvent) => KeyEventResult | undefined;
getCanRequestFocus: () => boolean;
getSkipTraversal: () => boolean;
getDescendantsAreFocusable: () => boolean;
getDebugLabel: () => string | undefined;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
createState: () => IState<IFocus>;
createElement: () => IStatefulElement;
toStringShort: () => string;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class _FocusWithExternalFocusNode

 implements IFocus, IDiagnosticable
{    public readonly child: IWidget = undefined as any;
    public readonly focusNode: IFocusNode | undefined = undefined as any;
    public readonly autofocus: boolean = undefined as any;
    public readonly onFocusChange: (value: boolean) => void | undefined = undefined as any;
    public readonly includeSemantics: boolean = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  autofocus? : boolean, includeSemantics? : boolean, key? : IKey | undefined, onFocusChange? : (value: boolean) => void | undefined, child : IWidget, focusNode : IFocusNode,}){
flutter.widgets._focusWithExternalFocusNode(this, {
..._focusWithExternalFocusNodeDefaultProps,
...props
});}
    private readonly _dart_getOnKeyEvent: () => (node: IFocusNode, event: IKeyEvent) => KeyEventResult | undefined = undefined as any;
    private readonly _dart_getOnKey: () => (node: IFocusNode, event: IRawKeyEvent) => KeyEventResult | undefined = undefined as any;
    private readonly _dart_getCanRequestFocus: () => boolean = undefined as any;
    private readonly _dart_getSkipTraversal: () => boolean = undefined as any;
    private readonly _dart_getDescendantsAreFocusable: () => boolean = undefined as any;
    private readonly _dart_getDebugLabel: () => string | undefined = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_createState: () => IState<IFocus> = undefined as any;
    private readonly _dart_createElement: () => IStatefulElement = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public getOnKeyEvent() : (node: IFocusNode, event: IKeyEvent) => KeyEventResult | undefined {
    return this._dart_getOnKeyEvent();
}
public getOnKey() : (node: IFocusNode, event: IRawKeyEvent) => KeyEventResult | undefined {
    return this._dart_getOnKey();
}
public getCanRequestFocus() : boolean {
    return this._dart_getCanRequestFocus();
}
public getSkipTraversal() : boolean {
    return this._dart_getSkipTraversal();
}
public getDescendantsAreFocusable() : boolean {
    return this._dart_getDescendantsAreFocusable();
}
public getDebugLabel() : string | undefined {
    return this._dart_getDebugLabel();
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public createState() : IState<IFocus> {
    return this._dart_createState();
}
public createElement() : IStatefulElement {
    return this._dart_createElement();
}
public toStringShort() : string {
    return this._dart_toStringShort();
}
public getHashCode() : number {
    return this._dart_getHashCode();
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
public toDiagnosticsNode( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) : IDiagnosticsNode {
    return this._dart_toDiagnosticsNode(props);
}
public debugDescribeChildren() : IList<IDiagnosticsNode> {
    return this._dart_debugDescribeChildren();
}
public toString( props : {  minLevel? : DiagnosticLevel,}) : string {
    return this._dart_toString({
...toStringDefaultProps,
...props
});
}
}
const _focusWithExternalFocusNodeDefaultProps = {
    autofocus: false,
    includeSemantics: true,
};
const toStringShallowDefaultProps = {
    joiner: ", ",
    minLevel: DiagnosticLevel.debug,
};
const toStringDeepDefaultProps = {
    minLevel: DiagnosticLevel.debug,
    prefixLineOne: "",
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
