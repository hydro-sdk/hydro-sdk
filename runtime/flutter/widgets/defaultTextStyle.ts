
import { IKey } from "../foundation/key";
import { TextOverflow } from "../painting/textOverflow";
import { TextAlign } from "../../dart/ui/textAlign";
import { ITextHeightBehavior } from "../../dart/ui/textHeightBehavior";
import { TextWidthBasis } from "../painting/textWidthBasis";
import { IWidget } from "./widget";
import { ITextStyle } from "../painting/textStyle";
import { IInheritedTheme } from "./inheritedTheme";
import { IBuildContext } from "./buildContext";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IInheritedElement } from "./inheritedElement";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
declare const flutter: {
widgets: {
defaultTextStyle: (this: void, defaultTextStyle: IDefaultTextStyle, props : {  key? : IKey | undefined, maxLines? : number | undefined, overflow : TextOverflow, softWrap : boolean, textAlign? : TextAlign | undefined, textHeightBehavior? : ITextHeightBehavior | undefined, textWidthBasis : TextWidthBasis, child : IWidget, style : ITextStyle,}) => IDefaultTextStyle;
defaultTextStyleMerge: ( props : {  key? : IKey | undefined, maxLines? : number | undefined, overflow? : TextOverflow | undefined, softWrap? : boolean | undefined, style? : ITextStyle | undefined, textAlign? : TextAlign | undefined, textWidthBasis? : TextWidthBasis | undefined, child : IWidget,}) => IWidget;
defaultTextStyleOf: (context: IBuildContext) => IDefaultTextStyle
}
};
export interface IDefaultTextStyle


{
style: ITextStyle;
textAlign: TextAlign | undefined;
softWrap: boolean;
overflow: TextOverflow;
maxLines: number | undefined;
textWidthBasis: TextWidthBasis;
textHeightBehavior: ITextHeightBehavior | undefined;
child: IWidget;
key: IKey | undefined;
updateShouldNotify: (oldWidget: unknown) => boolean;
wrap: (context: IBuildContext, child: IWidget) => IWidget;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
createElement: () => IInheritedElement;
toStringShort: () => string;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class DefaultTextStyle

 implements IInheritedTheme, IDiagnosticable
{    public readonly style: ITextStyle = undefined as any;
    public readonly textAlign: TextAlign | undefined = undefined as any;
    public readonly softWrap: boolean = undefined as any;
    public readonly overflow: TextOverflow = undefined as any;
    public readonly maxLines: number | undefined = undefined as any;
    public readonly textWidthBasis: TextWidthBasis = undefined as any;
    public readonly textHeightBehavior: ITextHeightBehavior | undefined = undefined as any;
    public readonly child: IWidget = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  key? : IKey | undefined, maxLines? : number | undefined, overflow? : TextOverflow, softWrap? : boolean, textAlign? : TextAlign | undefined, textHeightBehavior? : ITextHeightBehavior | undefined, textWidthBasis? : TextWidthBasis, child : IWidget, style : ITextStyle,}){
flutter.widgets.defaultTextStyle(this, {
...defaultTextStyleDefaultProps,
...props
});}
public static merge( props : {  key? : IKey | undefined, maxLines? : number | undefined, overflow? : TextOverflow | undefined, softWrap? : boolean | undefined, style? : ITextStyle | undefined, textAlign? : TextAlign | undefined, textWidthBasis? : TextWidthBasis | undefined, child : IWidget,}) : IWidget{
return flutter.widgets.defaultTextStyleMerge(props);
}public static of(context: IBuildContext) : IDefaultTextStyle{
return flutter.widgets.defaultTextStyleOf(context);
}    private readonly _dart_updateShouldNotify: (oldWidget: any) => boolean = undefined as any;
    private readonly _dart_wrap: (context: IBuildContext, child: IWidget) => IWidget = undefined as any;
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
public wrap(context: IBuildContext, child: IWidget) : IWidget {
    return this._dart_wrap(context, child);
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
const defaultTextStyleDefaultProps = {
    overflow: TextOverflow.clip,
    softWrap: true,
    textWidthBasis: TextWidthBasis.parent,
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
