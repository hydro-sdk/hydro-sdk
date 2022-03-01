
import { IKey } from "../foundation/key";
import { IKeyEvent } from "../services/keyEvent";
import { IWidget } from "./widget";
import { IFocusNode } from "./focusNode";
import { IStatelessWidget } from "./statelessWidget";
import { IStatelessElement } from "./statelessElement";
import { IBuildContext } from "./buildContext";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
declare const flutter: {
widgets: {
keyboardListener: (this: void, keyboardListener: IKeyboardListener, props : {  autofocus : boolean, includeSemantics : boolean, key? : IKey | undefined, onKeyEvent? : (value: IKeyEvent) => void | undefined, child : IWidget, focusNode : IFocusNode,}) => IKeyboardListener
}
};
export interface IKeyboardListener


{
focusNode: IFocusNode;
autofocus: boolean;
includeSemantics: boolean;
child: IWidget;
key: IKey | undefined;
build: (context: IBuildContext) => IWidget;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
createElement: () => IStatelessElement;
toStringShort: () => string;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class KeyboardListener

 implements IStatelessWidget, IDiagnosticable
{    public readonly focusNode: IFocusNode = undefined as any;
    public readonly autofocus: boolean = undefined as any;
    public readonly includeSemantics: boolean = undefined as any;
    public readonly child: IWidget = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  autofocus? : boolean, includeSemantics? : boolean, key? : IKey | undefined, onKeyEvent? : (value: IKeyEvent) => void | undefined, child : IWidget, focusNode : IFocusNode,}){
flutter.widgets.keyboardListener(this, {
...keyboardListenerDefaultProps,
...props
});}
    private readonly _dart_build: (context: IBuildContext) => IWidget = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_createElement: () => IStatelessElement = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public build(context: IBuildContext) : IWidget {
    return this._dart_build(context);
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public createElement() : IStatelessElement {
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
const keyboardListenerDefaultProps = {
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
