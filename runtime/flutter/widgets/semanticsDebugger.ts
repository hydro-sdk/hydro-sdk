
import { IKey } from "../foundation/key";
import { ITextStyle,TextStyle } from "../painting/textStyle";
import { IWidget } from "./widget";
import { IStatefulWidget } from "./statefulWidget";
import { IStatefulElement } from "./statefulElement";
import { IState } from "./state";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
declare const flutter: {
widgets: {
semanticsDebugger: (this: void, semanticsDebugger: ISemanticsDebugger, props : {  key? : IKey | undefined, labelStyle : ITextStyle, child : IWidget,}) => ISemanticsDebugger
}
};
export interface ISemanticsDebugger


{
child: IWidget;
labelStyle: ITextStyle;
key: IKey | undefined;
createState: () => IState<ISemanticsDebugger>;
createElement: () => IStatefulElement;
toStringShort: () => string;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class SemanticsDebugger

 implements IStatefulWidget, IDiagnosticable
{    public readonly child: IWidget = undefined as any;
    public readonly labelStyle: ITextStyle = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  key? : IKey | undefined, labelStyle? : ITextStyle, child : IWidget,}){
flutter.widgets.semanticsDebugger(this, {
...semanticsDebuggerDefaultProps,
...props
});}
    private readonly _dart_createState: () => IState<ISemanticsDebugger> = undefined as any;
    private readonly _dart_createElement: () => IStatefulElement = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public createState() : IState<ISemanticsDebugger> {
    return this._dart_createState();
}
public createElement() : IStatefulElement {
    return this._dart_createElement();
}
public toStringShort() : string {
    return this._dart_toStringShort();
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
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
const semanticsDebuggerDefaultProps = {
    labelStyle: new TextStyle(),
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
