
import { ITextStyle } from "./textStyle";
import { IDiagnosticableTree } from "../foundation/diagnosticableTree";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
import { IPlaceholderDimensions } from "./placeholderDimensions";
import { IParagraphBuilder } from "../../dart/ui/paragraphBuilder";
import { ITextPosition } from "../../dart/ui/textPosition";
import { IAccumulator } from "./accumulator";
import { IInlineSpanSemanticsInformation } from "./inlineSpanSemanticsInformation";
import { IStringBuffer } from "../../dart/core/stringBuffer";
import { RenderComparison } from "./renderComparison";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
declare const flutter: {
painting: {
inlineSpan: (this: void, inlineSpan: IInlineSpan, props? : {  style? : ITextStyle | undefined,}) => IInlineSpan
}
};
export interface IInlineSpan


{
style: ITextStyle | undefined;
build: (builder: IParagraphBuilder, props : {  dimensions? : IList<IPlaceholderDimensions> | undefined, textScaleFactor : number,}) => void;
visitChildren: (visitor : (span: IInlineSpan) => boolean) => boolean;
getSpanForPosition: (position: ITextPosition) => IInlineSpan | undefined;
getSpanForPositionVisitor: (position: ITextPosition, offset: IAccumulator) => IInlineSpan | undefined;
toPlainText: ( props : {  includePlaceholders : boolean, includeSemanticsLabels : boolean,}) => string;
getSemanticsInformation: () => IList<IInlineSpanSemanticsInformation>;
computeSemanticsInformation: (collector: IList<IInlineSpanSemanticsInformation>) => void;
computeToPlainText: (buffer: IStringBuffer, props : {  includePlaceholders : boolean, includeSemanticsLabels : boolean,}) => void;
codeUnitAt: (index: number) => number | undefined;
codeUnitAtVisitor: (index: number, offset: IAccumulator) => number | undefined;
debugAssertIsValid: () => boolean;
compareTo: (other: IInlineSpan) => RenderComparison;
getHashCode: () => number;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toStringShort: () => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class InlineSpan

 implements Omit<IDiagnosticableTree, "toStringShort" | "toDiagnosticsNode">, IDiagnosticable
{    public readonly style: ITextStyle | undefined = undefined as any;
public constructor( props? : {  style? : ITextStyle | undefined,}){
flutter.painting.inlineSpan(this, props);}
    private readonly _dart_build: (builder: IParagraphBuilder, props : {  dimensions? : IList<IPlaceholderDimensions> | undefined, textScaleFactor : number,}) => void = undefined as any;
    private readonly _dart_visitChildren: (visitor : (span: IInlineSpan) => boolean) => boolean = undefined as any;
    private readonly _dart_getSpanForPosition: (position: ITextPosition) => IInlineSpan | undefined = undefined as any;
    private readonly _dart_getSpanForPositionVisitor: (position: ITextPosition, offset: IAccumulator) => IInlineSpan | undefined = undefined as any;
    private readonly _dart_toPlainText: ( props : {  includePlaceholders : boolean, includeSemanticsLabels : boolean,}) => string = undefined as any;
    private readonly _dart_getSemanticsInformation: () => IList<IInlineSpanSemanticsInformation> = undefined as any;
    private readonly _dart_computeSemanticsInformation: (collector: IList<IInlineSpanSemanticsInformation>) => void = undefined as any;
    private readonly _dart_computeToPlainText: (buffer: IStringBuffer, props : {  includePlaceholders : boolean, includeSemanticsLabels : boolean,}) => void = undefined as any;
    private readonly _dart_codeUnitAt: (index: number) => number | undefined = undefined as any;
    private readonly _dart_codeUnitAtVisitor: (index: number, offset: IAccumulator) => number | undefined = undefined as any;
    private readonly _dart_debugAssertIsValid: () => boolean = undefined as any;
    private readonly _dart_compareTo: (other: IInlineSpan) => RenderComparison = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public build(builder: IParagraphBuilder, props : {  dimensions? : IList<IPlaceholderDimensions> | undefined, textScaleFactor? : number,}) : void {
    return this._dart_build(builder, {
...buildDefaultProps,
...props
});
}
public visitChildren(visitor : (span: IInlineSpan) => boolean) : boolean {
    return this._dart_visitChildren(visitor);
}
public getSpanForPosition(position: ITextPosition) : IInlineSpan | undefined {
    return this._dart_getSpanForPosition(position);
}
public getSpanForPositionVisitor(position: ITextPosition, offset: IAccumulator) : IInlineSpan | undefined {
    return this._dart_getSpanForPositionVisitor(position, offset);
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
public computeSemanticsInformation(collector: IList<IInlineSpanSemanticsInformation>) : void {
    return this._dart_computeSemanticsInformation(collector);
}
public computeToPlainText(buffer: IStringBuffer, props : {  includePlaceholders? : boolean, includeSemanticsLabels? : boolean,}) : void {
    return this._dart_computeToPlainText(buffer, {
...computeToPlainTextDefaultProps,
...props
});
}
public codeUnitAt(index: number) : number | undefined {
    return this._dart_codeUnitAt(index);
}
public codeUnitAtVisitor(index: number, offset: IAccumulator) : number | undefined {
    return this._dart_codeUnitAtVisitor(index, offset);
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
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
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
const buildDefaultProps = {
    textScaleFactor: 1.0,
};
const toPlainTextDefaultProps = {
    includePlaceholders: true,
    includeSemanticsLabels: true,
};
const computeToPlainTextDefaultProps = {
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
