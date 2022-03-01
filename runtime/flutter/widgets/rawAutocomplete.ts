
import { IBuildContext } from "./buildContext";
import { ITextEditingController } from "./textEditingController";
import { IFocusNode } from "./focusNode";
import { IWidget } from "./widget";
import { ITextEditingValue } from "../services/textEditingValue";
import { IKey } from "../foundation/key";
import { IFutureOr } from "../../dart/async/futureOr";
import { IIterable } from "../../dart/core/iterable";
import { IStatefulWidget } from "./statefulWidget";
import { IStatefulElement } from "./statefulElement";
import { IState } from "./state";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IGlobalKey } from "./globalKey";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
declare const flutter: {
widgets: {
rawAutocomplete: <T>(this: void, rawAutocomplete: IRawAutocomplete<T>, props : {  displayStringForOption : (option: T) => string, fieldViewBuilder? : (context: IBuildContext, textEditingController: ITextEditingController, focusNode: IFocusNode, onFieldSubmitted : () => void) => IWidget | undefined, focusNode? : IFocusNode | undefined, initialValue? : ITextEditingValue | undefined, key? : IKey | undefined, onSelected? : (option: T) => void | undefined, textEditingController? : ITextEditingController | undefined, optionsBuilder : (textEditingValue: ITextEditingValue) => IFutureOr<IIterable<T>>, optionsViewBuilder : (context: IBuildContext, onSelected : (option: T) => void, options: IIterable<T>) => IWidget,}) => IRawAutocomplete<T>;
rawAutocompleteOnFieldSubmitted: <T>(key: IGlobalKey<IState<IStatefulWidget>>) => void;
rawAutocompleteDefaultStringForOption: (option: any) => string
}
};
export interface IRawAutocomplete
<T>

{
focusNode: IFocusNode | undefined;
textEditingController: ITextEditingController | undefined;
initialValue: ITextEditingValue | undefined;
key: IKey | undefined;
createState: () => IState<IRawAutocomplete<T>>;
createElement: () => IStatefulElement;
toStringShort: () => string;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class RawAutocomplete
<T>
 implements IStatefulWidget, IDiagnosticable
{    public readonly focusNode: IFocusNode | undefined = undefined as any;
    public readonly textEditingController: ITextEditingController | undefined = undefined as any;
    public readonly initialValue: ITextEditingValue | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  displayStringForOption : (option: T) => string, fieldViewBuilder? : (context: IBuildContext, textEditingController: ITextEditingController, focusNode: IFocusNode, onFieldSubmitted : () => void) => IWidget | undefined, focusNode? : IFocusNode | undefined, initialValue? : ITextEditingValue | undefined, key? : IKey | undefined, onSelected? : (option: T) => void | undefined, textEditingController? : ITextEditingController | undefined, optionsBuilder : (textEditingValue: ITextEditingValue) => IFutureOr<IIterable<T>>, optionsViewBuilder : (context: IBuildContext, onSelected : (option: T) => void, options: IIterable<T>) => IWidget,}){
flutter.widgets.rawAutocomplete(this, props);}
public static onFieldSubmitted<T>(key: IGlobalKey<IState<IStatefulWidget>>) : void{
return flutter.widgets.rawAutocompleteOnFieldSubmitted(key);
}public static defaultStringForOption(option: any) : string{
return flutter.widgets.rawAutocompleteDefaultStringForOption(option);
}    private readonly _dart_createState: () => IState<IRawAutocomplete<T>> = undefined as any;
    private readonly _dart_createElement: () => IStatefulElement = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public createState() : IState<IRawAutocomplete<T>> {
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
