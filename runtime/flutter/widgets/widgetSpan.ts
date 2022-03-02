import { IList } from "../../dart/core/list";
import { IStringBuffer } from "../../dart/core/stringBuffer";
import { IParagraphBuilder } from "../../dart/ui/paragraphBuilder";
import { PlaceholderAlignment } from "../../dart/ui/placeholderAlignment";
import { TextBaseline } from "../../dart/ui/textBaseline";
import { ITextPosition } from "../../dart/ui/textPosition";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IAccumulator } from "../painting/accumulator";
import { IInlineSpan } from "../painting/inlineSpan";
import { IInlineSpanSemanticsInformation } from "../painting/inlineSpanSemanticsInformation";
import { IPlaceholderDimensions } from "../painting/placeholderDimensions";
import { IPlaceholderSpan } from "../painting/placeholderSpan";
import { RenderComparison } from "../painting/renderComparison";
import { ITextStyle } from "../painting/textStyle";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        widgetSpan: (
            this: void,
            widgetSpan: IWidgetSpan,
            props: {
                alignment: PlaceholderAlignment;
                baseline?: TextBaseline | undefined;
                style?: ITextStyle | undefined;
                child: IWidget;
            }
        ) => IWidgetSpan;
    };
};
export interface IWidgetSpan {
    child: IWidget;
    alignment: PlaceholderAlignment;
    baseline: TextBaseline | undefined;
    style: ITextStyle | undefined;
    build: (
        builder: IParagraphBuilder,
        props: {
            dimensions?: IList<IPlaceholderDimensions> | undefined;
            textScaleFactor: number;
        }
    ) => void;
    visitChildren: (visitor: (span: IInlineSpan) => boolean) => boolean;
    getSpanForPositionVisitor: (
        position: ITextPosition,
        offset: IAccumulator
    ) => IInlineSpan | undefined;
    codeUnitAtVisitor: (
        index: number,
        offset: IAccumulator
    ) => number | undefined;
    compareTo: (other: IInlineSpan) => RenderComparison;
    getHashCode: () => number;
    getSpanForPosition: (position: ITextPosition) => IInlineSpan | undefined;
    debugAssertIsValid: () => boolean;
    computeToPlainText: (
        buffer: IStringBuffer,
        props: { includePlaceholders: boolean; includeSemanticsLabels: boolean }
    ) => void;
    computeSemanticsInformation: (
        collector: IList<IInlineSpanSemanticsInformation>
    ) => void;
    describeSemantics: (
        offset: IAccumulator,
        semanticsOffsets: IList<number>,
        semanticsElements: IList<any>
    ) => void;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toPlainText: (props: {
        includePlaceholders: boolean;
        includeSemanticsLabels: boolean;
    }) => string;
    getSemanticsInformation: () => IList<IInlineSpanSemanticsInformation>;
    codeUnitAt: (index: number) => number | undefined;
    toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string;
    toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string;
    toStringShort: () => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    debugDescribeChildren: () => IList<IDiagnosticsNode>;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
}
export class WidgetSpan implements IPlaceholderSpan, IDiagnosticable {
    public readonly child: IWidget = undefined as any;
    public readonly alignment: PlaceholderAlignment = undefined as any;
    public readonly baseline: TextBaseline | undefined = undefined as any;
    public readonly style: ITextStyle | undefined = undefined as any;
    public constructor(props: {
        alignment?: PlaceholderAlignment;
        baseline?: TextBaseline | undefined;
        style?: ITextStyle | undefined;
        child: IWidget;
    }) {
        flutter.widgets.widgetSpan(this, {
            ...widgetSpanDefaultProps,
            ...props,
        });
    }
    private readonly _dart_build: (
        builder: IParagraphBuilder,
        props: {
            dimensions?: IList<IPlaceholderDimensions> | undefined;
            textScaleFactor: number;
        }
    ) => void = undefined as any;
    private readonly _dart_visitChildren: (
        visitor: (span: IInlineSpan) => boolean
    ) => boolean = undefined as any;
    private readonly _dart_getSpanForPositionVisitor: (
        position: ITextPosition,
        offset: IAccumulator
    ) => IInlineSpan | undefined = undefined as any;
    private readonly _dart_codeUnitAtVisitor: (
        index: number,
        offset: IAccumulator
    ) => number | undefined = undefined as any;
    private readonly _dart_compareTo: (other: IInlineSpan) => RenderComparison =
        undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_getSpanForPosition: (
        position: ITextPosition
    ) => IInlineSpan | undefined = undefined as any;
    private readonly _dart_debugAssertIsValid: () => boolean = undefined as any;
    private readonly _dart_computeToPlainText: (
        buffer: IStringBuffer,
        props: { includePlaceholders: boolean; includeSemanticsLabels: boolean }
    ) => void = undefined as any;
    private readonly _dart_computeSemanticsInformation: (
        collector: IList<IInlineSpanSemanticsInformation>
    ) => void = undefined as any;
    private readonly _dart_describeSemantics: (
        offset: IAccumulator,
        semanticsOffsets: IList<number>,
        semanticsElements: IList<any>
    ) => void = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_toPlainText: (props: {
        includePlaceholders: boolean;
        includeSemanticsLabels: boolean;
    }) => string = undefined as any;
    private readonly _dart_getSemanticsInformation: () => IList<IInlineSpanSemanticsInformation> =
        undefined as any;
    private readonly _dart_codeUnitAt: (index: number) => number | undefined =
        undefined as any;
    private readonly _dart_toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> =
        undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    public build(
        builder: IParagraphBuilder,
        props: {
            dimensions?: IList<IPlaceholderDimensions> | undefined;
            textScaleFactor?: number;
        }
    ): void {
        return this._dart_build(builder, {
            ...buildDefaultProps,
            ...props,
        });
    }
    public visitChildren(visitor: (span: IInlineSpan) => boolean): boolean {
        return this._dart_visitChildren(visitor);
    }
    public getSpanForPositionVisitor(
        position: ITextPosition,
        offset: IAccumulator
    ): IInlineSpan | undefined {
        return this._dart_getSpanForPositionVisitor(position, offset);
    }
    public codeUnitAtVisitor(
        index: number,
        offset: IAccumulator
    ): number | undefined {
        return this._dart_codeUnitAtVisitor(index, offset);
    }
    public compareTo(other: IInlineSpan): RenderComparison {
        return this._dart_compareTo(other);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public getSpanForPosition(
        position: ITextPosition
    ): IInlineSpan | undefined {
        return this._dart_getSpanForPosition(position);
    }
    public debugAssertIsValid(): boolean {
        return this._dart_debugAssertIsValid();
    }
    public computeToPlainText(
        buffer: IStringBuffer,
        props: {
            includePlaceholders?: boolean;
            includeSemanticsLabels?: boolean;
        }
    ): void {
        return this._dart_computeToPlainText(buffer, {
            ...computeToPlainTextDefaultProps,
            ...props,
        });
    }
    public computeSemanticsInformation(
        collector: IList<IInlineSpanSemanticsInformation>
    ): void {
        return this._dart_computeSemanticsInformation(collector);
    }
    public describeSemantics(
        offset: IAccumulator,
        semanticsOffsets: IList<number>,
        semanticsElements: IList<any>
    ): void {
        return this._dart_describeSemantics(
            offset,
            semanticsOffsets,
            semanticsElements
        );
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public toPlainText(props: {
        includePlaceholders?: boolean;
        includeSemanticsLabels?: boolean;
    }): string {
        return this._dart_toPlainText({
            ...toPlainTextDefaultProps,
            ...props,
        });
    }
    public getSemanticsInformation(): IList<IInlineSpanSemanticsInformation> {
        return this._dart_getSemanticsInformation();
    }
    public codeUnitAt(index: number): number | undefined {
        return this._dart_codeUnitAt(index);
    }
    public toStringShallow(props: {
        joiner?: string;
        minLevel?: DiagnosticLevel;
    }): string {
        return this._dart_toStringShallow({
            ...toStringShallowDefaultProps,
            ...props,
        });
    }
    public toStringDeep(props: {
        minLevel?: DiagnosticLevel;
        prefixLineOne?: string;
        prefixOtherLines?: string | undefined;
    }): string {
        return this._dart_toStringDeep({
            ...toStringDeepDefaultProps,
            ...props,
        });
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public toDiagnosticsNode(props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }): IDiagnosticsNode {
        return this._dart_toDiagnosticsNode(props);
    }
    public debugDescribeChildren(): IList<IDiagnosticsNode> {
        return this._dart_debugDescribeChildren();
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
}
const widgetSpanDefaultProps = {
    alignment: PlaceholderAlignment.bottom,
};
const buildDefaultProps = {
    textScaleFactor: 1.0,
};
const computeToPlainTextDefaultProps = {
    includePlaceholders: true,
    includeSemanticsLabels: true,
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
