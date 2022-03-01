
import { IWidget } from "./widget";
import { IKey } from "../foundation/key";
import { IList } from "../../dart/core/list";
import { ILocalizationsDelegate } from "./localizationsDelegate";
import { ILocale } from "../../dart/ui/locale";
import { IStatefulWidget } from "./statefulWidget";
import { IStatefulElement } from "./statefulElement";
import { IState } from "./state";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IBuildContext } from "./buildContext";
import { Type } from "../../dart/core/type";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
declare const flutter: {
widgets: {
localizations: (this: void, localizations: ILocalizations, props : {  child? : IWidget | undefined, key? : IKey | undefined, delegates : IList<ILocalizationsDelegate<any>>, locale : ILocale,}) => ILocalizations;
localizationsOverride: ( props : {  child? : IWidget | undefined, delegates? : IList<ILocalizationsDelegate<any>> | undefined, key? : IKey | undefined, locale? : ILocale | undefined, context : IBuildContext,}) => ILocalizations;
localizationsLocaleOf: (context: IBuildContext) => ILocale;
localizationsMaybeLocaleOf: (context: IBuildContext) => ILocale | undefined;
localizationsOf: <T>(context: IBuildContext, type: Type) => T | undefined
}
};
export interface ILocalizations


{
locale: ILocale;
delegates: IList<ILocalizationsDelegate<any>>;
child: IWidget | undefined;
key: IKey | undefined;
createState: () => IState<ILocalizations>;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
createElement: () => IStatefulElement;
toStringShort: () => string;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class Localizations

 implements IStatefulWidget, IDiagnosticable
{    public readonly locale: ILocale = undefined as any;
    public readonly delegates: IList<ILocalizationsDelegate<any>> = undefined as any;
    public readonly child: IWidget | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  child? : IWidget | undefined, key? : IKey | undefined, delegates : IList<ILocalizationsDelegate<any>>, locale : ILocale,}){
flutter.widgets.localizations(this, props);}
public static override( props : {  child? : IWidget | undefined, delegates? : IList<ILocalizationsDelegate<any>> | undefined, key? : IKey | undefined, locale? : ILocale | undefined, context : IBuildContext,}) : ILocalizations{
return flutter.widgets.localizationsOverride(props);
}public static localeOf(context: IBuildContext) : ILocale{
return flutter.widgets.localizationsLocaleOf(context);
}public static maybeLocaleOf(context: IBuildContext) : ILocale | undefined{
return flutter.widgets.localizationsMaybeLocaleOf(context);
}public static of<T>(context: IBuildContext, type: Type) : T | undefined{
return flutter.widgets.localizationsOf(context, type);
}    private readonly _dart_createState: () => IState<ILocalizations> = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_createElement: () => IStatefulElement = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public createState() : IState<ILocalizations> {
    return this._dart_createState();
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
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
