
import { IList } from "../../dart/core/list";
import { IInlineSpan } from "./inlineSpan";
import { ILocale } from "../../dart/ui/locale";
import { IMouseCursor } from "../services/mouseCursor";
import { IPointerEnterEvent } from "../gestures/pointerEnterEvent";
import { IPointerExitEvent } from "../gestures/pointerExitEvent";
import { IGestureRecognizer } from "../gestures/gestureRecognizer";
import { ITextStyle } from "./textStyle";
import { IPlaceholderDimensions } from "./placeholderDimensions";
import { IParagraphBuilder } from "../../dart/ui/paragraphBuilder";
import { ITextPosition } from "../../dart/ui/textPosition";
import { IAccumulator } from "./accumulator";
import { IInlineSpanSemanticsInformation } from "./inlineSpanSemanticsInformation";
import { IStringBuffer } from "../../dart/core/stringBuffer";
import { RenderComparison } from "./renderComparison";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IHitTestTarget } from "../gestures/hitTestTarget";
import { IMouseTrackerAnnotation } from "../services/mouseTrackerAnnotation";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IPointerEvent } from "../gestures/pointerEvent";
import { IHitTestEntry } from "../gestures/hitTestEntry";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
declare const flutter: {
painting: {
textSpan: (this: void, textSpan: ITextSpan, props? : {  children? : IList<IInlineSpan> | undefined, locale? : ILocale | undefined, mouseCursor? : IMouseCursor | undefined, onEnter? : (event: IPointerEnterEvent) => void | undefined, onExit? : (event: IPointerExitEvent) => void | undefined, recognizer? : IGestureRecognizer | undefined, semanticsLabel? : string | undefined, spellOut? : boolean | undefined, style? : ITextStyle | undefined, text? : string | undefined,}) => ITextSpan
}
};
export interface ITextSpan


{
text: string | undefined;
children: IList<IInlineSpan> | undefined;
recognizer: IGestureRecognizer | undefined;
mouseCursor: IMouseCursor;
semanticsLabel: string | undefined;
locale: ILocale | undefined;
spellOut: boolean | undefined;
style: ITextStyle | undefined;
onEnter: (event: IPointerEnterEvent) => void | undefined;
onExit: (event: IPointerExitEvent) => void | undefined;
cursor: IMouseCursor;
validForMouseTracker: boolean;
getCursor: () => IMouseCursor;
getValidForMouseTracker: () => boolean;
handleEvent: (event: IPointerEvent, entry: IHitTestEntry) => void;
build: (builder: IParagraphBuilder, props : {  dimensions? : IList<IPlaceholderDimensions> | undefined, textScaleFactor : number,}) => void;
visitChildren: (visitor : (span: IInlineSpan) => boolean) => boolean;
getSpanForPositionVisitor: (position: ITextPosition, offset: IAccumulator) => IInlineSpan | undefined;
computeToPlainText: (buffer: IStringBuffer, props : {  includePlaceholders : boolean, includeSemanticsLabels : boolean,}) => void;
computeSemanticsInformation: (collector: IList<IInlineSpanSemanticsInformation>, props : {  inheritedLocale? : ILocale | undefined, inheritedSpellOut : boolean,}) => void;
codeUnitAtVisitor: (index: number, offset: IAccumulator) => number | undefined;
describeSemantics: (offset: IAccumulator, semanticsOffsets: IList<number>, semanticsElements: IList<any>) => void;
debugAssertIsValid: () => boolean;
compareTo: (other: IInlineSpan) => RenderComparison;
getHashCode: () => number;
toStringShort: () => string;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
getSpanForPosition: (position: ITextPosition) => IInlineSpan | undefined;
toPlainText: ( props : {  includePlaceholders : boolean, includeSemanticsLabels : boolean,}) => string;
getSemanticsInformation: () => IList<IInlineSpanSemanticsInformation>;
codeUnitAt: (index: number) => number | undefined;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class TextSpan

 implements IInlineSpan, IDiagnosticable, IHitTestTarget, Omit<IMouseTrackerAnnotation, "debugFillProperties">
{    public readonly text: string | undefined = undefined as any;
    public readonly children: IList<IInlineSpan> | undefined = undefined as any;
    public readonly recognizer: IGestureRecognizer | undefined = undefined as any;
    public readonly mouseCursor: IMouseCursor = undefined as any;
    public readonly semanticsLabel: string | undefined = undefined as any;
    public readonly locale: ILocale | undefined = undefined as any;
    public readonly spellOut: boolean | undefined = undefined as any;
    public readonly style: ITextStyle | undefined = undefined as any;
    public readonly onEnter: (event: IPointerEnterEvent) => void | undefined = undefined as any;
    public readonly onExit: (event: IPointerExitEvent) => void | undefined = undefined as any;
    public readonly cursor: IMouseCursor = undefined as any;
    public readonly validForMouseTracker: boolean = undefined as any;
public constructor( props? : {  children? : IList<IInlineSpan> | undefined, locale? : ILocale | undefined, mouseCursor? : IMouseCursor | undefined, onEnter? : (event: IPointerEnterEvent) => void | undefined, onExit? : (event: IPointerExitEvent) => void | undefined, recognizer? : IGestureRecognizer | undefined, semanticsLabel? : string | undefined, spellOut? : boolean | undefined, style? : ITextStyle | undefined, text? : string | undefined,}){
flutter.painting.textSpan(this, props);}
    private readonly _dart_getCursor: () => IMouseCursor = undefined as any;
    private readonly _dart_getValidForMouseTracker: () => boolean = undefined as any;
    private readonly _dart_handleEvent: (event: IPointerEvent, entry: IHitTestEntry) => void = undefined as any;
    private readonly _dart_build: (builder: IParagraphBuilder, props : {  dimensions? : IList<IPlaceholderDimensions> | undefined, textScaleFactor : number,}) => void = undefined as any;
    private readonly _dart_visitChildren: (visitor : (span: IInlineSpan) => boolean) => boolean = undefined as any;
    private readonly _dart_getSpanForPositionVisitor: (position: ITextPosition, offset: IAccumulator) => IInlineSpan | undefined = undefined as any;
    private readonly _dart_computeToPlainText: (buffer: IStringBuffer, props : {  includePlaceholders : boolean, includeSemanticsLabels : boolean,}) => void = undefined as any;
    private readonly _dart_computeSemanticsInformation: (collector: IList<IInlineSpanSemanticsInformation>, props : {  inheritedLocale? : ILocale | undefined, inheritedSpellOut : boolean,}) => void = undefined as any;
    private readonly _dart_codeUnitAtVisitor: (index: number, offset: IAccumulator) => number | undefined = undefined as any;
    private readonly _dart_describeSemantics: (offset: IAccumulator, semanticsOffsets: IList<number>, semanticsElements: IList<any>) => void = undefined as any;
    private readonly _dart_debugAssertIsValid: () => boolean = undefined as any;
    private readonly _dart_compareTo: (other: IInlineSpan) => RenderComparison = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_getSpanForPosition: (position: ITextPosition) => IInlineSpan | undefined = undefined as any;
    private readonly _dart_toPlainText: ( props : {  includePlaceholders : boolean, includeSemanticsLabels : boolean,}) => string = undefined as any;
    private readonly _dart_getSemanticsInformation: () => IList<IInlineSpanSemanticsInformation> = undefined as any;
    private readonly _dart_codeUnitAt: (index: number) => number | undefined = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public getCursor() : IMouseCursor {
    return this._dart_getCursor();
}
public getValidForMouseTracker() : boolean {
    return this._dart_getValidForMouseTracker();
}
public handleEvent(event: IPointerEvent, entry: IHitTestEntry) : void {
    return this._dart_handleEvent(event, entry);
}
public build(builder: IParagraphBuilder, props : {  dimensions? : IList<IPlaceholderDimensions> | undefined, textScaleFactor? : number,}) : void {
    return this._dart_build(builder, {
...buildDefaultProps,
...props
});
}
public visitChildren(visitor : (span: IInlineSpan) => boolean) : boolean {
    return this._dart_visitChildren(visitor);
}
public getSpanForPositionVisitor(position: ITextPosition, offset: IAccumulator) : IInlineSpan | undefined {
    return this._dart_getSpanForPositionVisitor(position, offset);
}
public computeToPlainText(buffer: IStringBuffer, props : {  includePlaceholders? : boolean, includeSemanticsLabels? : boolean,}) : void {
    return this._dart_computeToPlainText(buffer, {
...computeToPlainTextDefaultProps,
...props
});
}
public computeSemanticsInformation(collector: IList<IInlineSpanSemanticsInformation>, props : {  inheritedLocale? : ILocale | undefined, inheritedSpellOut? : boolean,}) : void {
    return this._dart_computeSemanticsInformation(collector, {
...computeSemanticsInformationDefaultProps,
...props
});
}
public codeUnitAtVisitor(index: number, offset: IAccumulator) : number | undefined {
    return this._dart_codeUnitAtVisitor(index, offset);
}
public describeSemantics(offset: IAccumulator, semanticsOffsets: IList<number>, semanticsElements: IList<any>) : void {
    return this._dart_describeSemantics(offset, semanticsOffsets, semanticsElements);
}
public debugAssertIsValid() : boolean {
    return this._dart_debugAssertIsValid();
}
public compareTo(other: IInlineSpan) : RenderComparison {
    return this._dart_compareTo(other);
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
public toStringShort() : string {
    return this._dart_toStringShort();
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public debugDescribeChildren() : IList<IDiagnosticsNode> {
    return this._dart_debugDescribeChildren();
}
public getSpanForPosition(position: ITextPosition) : IInlineSpan | undefined {
    return this._dart_getSpanForPosition(position);
}
public toPlainText( props : {  includePlaceholders? : boolean, includeSemanticsLabels? : boolean,}) : string {
    return this._dart_toPlainText({
...toPlainTextDefaultProps,
...props
});
}
public getSemanticsInformation() : IList<IInlineSpanSemanticsInformation> {
    return this._dart_getSemanticsInformation();
}
public codeUnitAt(index: number) : number | undefined {
    return this._dart_codeUnitAt(index);
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
public toString( props : {  minLevel? : DiagnosticLevel,}) : string {
    return this._dart_toString({
...toStringDefaultProps,
...props
});
}
}
const buildDefaultProps = {
    textScaleFactor: 1.0,
};
const computeToPlainTextDefaultProps = {
    includePlaceholders: true,
    includeSemanticsLabels: true,
};
const computeSemanticsInformationDefaultProps = {
    inheritedSpellOut: false,
};
const toPlainTextDefaultProps = {
    includePlaceholders: true,
    includeSemanticsLabels: true,
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
