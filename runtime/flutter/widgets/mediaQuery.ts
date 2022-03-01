
import { IKey } from "../foundation/key";
import { IWidget } from "./widget";
import { IMediaQueryData } from "./mediaQueryData";
import { IInheritedWidget } from "./inheritedWidget";
import { IInheritedElement } from "./inheritedElement";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IBuildContext } from "./buildContext";
import { Brightness } from "../../dart/ui/brightness";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
declare const flutter: {
widgets: {
mediaQuery: (this: void, mediaQuery: IMediaQuery, props : {  key? : IKey | undefined, child : IWidget, data : IMediaQueryData,}) => IMediaQuery;
mediaQueryRemovePadding: ( props : {  key? : IKey | undefined, removeBottom : boolean, removeLeft : boolean, removeRight : boolean, removeTop : boolean, child : IWidget, context : IBuildContext,}) => IMediaQuery;
mediaQueryRemoveViewInsets: ( props : {  key? : IKey | undefined, removeBottom : boolean, removeLeft : boolean, removeRight : boolean, removeTop : boolean, child : IWidget, context : IBuildContext,}) => IMediaQuery;
mediaQueryRemoveViewPadding: ( props : {  key? : IKey | undefined, removeBottom : boolean, removeLeft : boolean, removeRight : boolean, removeTop : boolean, child : IWidget, context : IBuildContext,}) => IMediaQuery;
mediaQueryFromWindow: ( props : {  key? : IKey | undefined, child : IWidget,}) => IWidget;
mediaQueryOf: (context: IBuildContext) => IMediaQueryData;
mediaQueryMaybeOf: (context: IBuildContext) => IMediaQueryData | undefined;
mediaQueryTextScaleFactorOf: (context: IBuildContext) => number;
mediaQueryPlatformBrightnessOf: (context: IBuildContext) => Brightness;
mediaQueryHighContrastOf: (context: IBuildContext) => boolean;
mediaQueryBoldTextOverride: (context: IBuildContext) => boolean
}
};
export interface IMediaQuery


{
data: IMediaQueryData;
child: IWidget;
key: IKey | undefined;
updateShouldNotify: (oldWidget: unknown) => boolean;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
createElement: () => IInheritedElement;
toStringShort: () => string;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class MediaQuery

 implements IInheritedWidget, IDiagnosticable
{    public readonly data: IMediaQueryData = undefined as any;
    public readonly child: IWidget = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  key? : IKey | undefined, child : IWidget, data : IMediaQueryData,}){
flutter.widgets.mediaQuery(this, props);}
public static removePadding( props : {  key? : IKey | undefined, removeBottom? : boolean, removeLeft? : boolean, removeRight? : boolean, removeTop? : boolean, child : IWidget, context : IBuildContext,}) : IMediaQuery{
return flutter.widgets.mediaQueryRemovePadding({
...removePaddingDefaultProps,
...props
});
}public static removeViewInsets( props : {  key? : IKey | undefined, removeBottom? : boolean, removeLeft? : boolean, removeRight? : boolean, removeTop? : boolean, child : IWidget, context : IBuildContext,}) : IMediaQuery{
return flutter.widgets.mediaQueryRemoveViewInsets({
...removeViewInsetsDefaultProps,
...props
});
}public static removeViewPadding( props : {  key? : IKey | undefined, removeBottom? : boolean, removeLeft? : boolean, removeRight? : boolean, removeTop? : boolean, child : IWidget, context : IBuildContext,}) : IMediaQuery{
return flutter.widgets.mediaQueryRemoveViewPadding({
...removeViewPaddingDefaultProps,
...props
});
}public static fromWindow( props : {  key? : IKey | undefined, child : IWidget,}) : IWidget{
return flutter.widgets.mediaQueryFromWindow(props);
}public static of(context: IBuildContext) : IMediaQueryData{
return flutter.widgets.mediaQueryOf(context);
}public static maybeOf(context: IBuildContext) : IMediaQueryData | undefined{
return flutter.widgets.mediaQueryMaybeOf(context);
}public static textScaleFactorOf(context: IBuildContext) : number{
return flutter.widgets.mediaQueryTextScaleFactorOf(context);
}public static platformBrightnessOf(context: IBuildContext) : Brightness{
return flutter.widgets.mediaQueryPlatformBrightnessOf(context);
}public static highContrastOf(context: IBuildContext) : boolean{
return flutter.widgets.mediaQueryHighContrastOf(context);
}public static boldTextOverride(context: IBuildContext) : boolean{
return flutter.widgets.mediaQueryBoldTextOverride(context);
}    private readonly _dart_updateShouldNotify: (oldWidget: any) => boolean = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_createElement: () => IInheritedElement = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public updateShouldNotify(oldWidget: any) : boolean {
    return this._dart_updateShouldNotify(oldWidget);
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public createElement() : IInheritedElement {
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
const removePaddingDefaultProps = {
    removeBottom: false,
    removeLeft: false,
    removeRight: false,
    removeTop: false,
};
const removeViewInsetsDefaultProps = {
    removeBottom: false,
    removeLeft: false,
    removeRight: false,
    removeTop: false,
};
const removeViewPaddingDefaultProps = {
    removeBottom: false,
    removeLeft: false,
    removeRight: false,
    removeTop: false,
};
