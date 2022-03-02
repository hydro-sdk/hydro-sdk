import { IList } from "../../dart/core/list";
import { ILocale } from "../../dart/ui/locale";
import { TextAlign } from "../../dart/ui/textAlign";
import { TextDirection } from "../../dart/ui/textDirection";
import { ITextHeightBehavior } from "../../dart/ui/textHeightBehavior";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IInlineSpan } from "../painting/inlineSpan";
import { IStrutStyle } from "../painting/strutStyle";
import { TextOverflow } from "../painting/textOverflow";
import { TextWidthBasis } from "../painting/textWidthBasis";
import { IRenderObject } from "../rendering/renderObject";
import { IRenderParagraph } from "../rendering/renderParagraph";
import { IBuildContext } from "./buildContext";
import { IMultiChildRenderObjectElement } from "./multiChildRenderObjectElement";
import { IMultiChildRenderObjectWidget } from "./multiChildRenderObjectWidget";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        richText: (
            this: void,
            richText: IRichText,
            props: {
                key?: IKey | undefined;
                locale?: ILocale | undefined;
                maxLines?: number | undefined;
                overflow: TextOverflow;
                softWrap: boolean;
                strutStyle?: IStrutStyle | undefined;
                textAlign: TextAlign;
                textDirection?: TextDirection | undefined;
                textHeightBehavior?: ITextHeightBehavior | undefined;
                textScaleFactor: number;
                textWidthBasis: TextWidthBasis;
                text: IInlineSpan;
            }
        ) => IRichText;
    };
};
export interface IRichText {
    text: IInlineSpan;
    textAlign: TextAlign;
    textDirection: TextDirection | undefined;
    softWrap: boolean;
    overflow: TextOverflow;
    textScaleFactor: number;
    maxLines: number | undefined;
    locale: ILocale | undefined;
    strutStyle: IStrutStyle | undefined;
    textWidthBasis: TextWidthBasis;
    textHeightBehavior: ITextHeightBehavior | undefined;
    children: IList<IWidget>;
    key: IKey | undefined;
    createRenderObject: (context: IBuildContext) => IRenderParagraph;
    updateRenderObject: (context: IBuildContext, renderObject: unknown) => void;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    createElement: () => IMultiChildRenderObjectElement;
    didUnmountRenderObject: (renderObject: unknown) => void;
    toStringShort: () => string;
    getHashCode: () => number;
    toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string;
    toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    debugDescribeChildren: () => IList<IDiagnosticsNode>;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
}
export class RichText
    implements IMultiChildRenderObjectWidget, IDiagnosticable
{
    public readonly text: IInlineSpan = undefined as any;
    public readonly textAlign: TextAlign = undefined as any;
    public readonly textDirection: TextDirection | undefined = undefined as any;
    public readonly softWrap: boolean = undefined as any;
    public readonly overflow: TextOverflow = undefined as any;
    public readonly textScaleFactor: number = undefined as any;
    public readonly maxLines: number | undefined = undefined as any;
    public readonly locale: ILocale | undefined = undefined as any;
    public readonly strutStyle: IStrutStyle | undefined = undefined as any;
    public readonly textWidthBasis: TextWidthBasis = undefined as any;
    public readonly textHeightBehavior: ITextHeightBehavior | undefined =
        undefined as any;
    public readonly children: IList<IWidget> = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        key?: IKey | undefined;
        locale?: ILocale | undefined;
        maxLines?: number | undefined;
        overflow?: TextOverflow;
        softWrap?: boolean;
        strutStyle?: IStrutStyle | undefined;
        textAlign?: TextAlign;
        textDirection?: TextDirection | undefined;
        textHeightBehavior?: ITextHeightBehavior | undefined;
        textScaleFactor?: number;
        textWidthBasis?: TextWidthBasis;
        text: IInlineSpan;
    }) {
        flutter.widgets.richText(this, {
            ...richTextDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createRenderObject: (
        context: IBuildContext
    ) => IRenderParagraph = undefined as any;
    private readonly _dart_updateRenderObject: (
        context: IBuildContext,
        renderObject: any
    ) => void = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_createElement: () => IMultiChildRenderObjectElement =
        undefined as any;
    private readonly _dart_didUnmountRenderObject: (renderObject: any) => void =
        undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> =
        undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    public createRenderObject(context: IBuildContext): IRenderParagraph {
        return this._dart_createRenderObject(context);
    }
    public updateRenderObject(context: IBuildContext, renderObject: any): void {
        return this._dart_updateRenderObject(context, renderObject);
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public createElement(): IMultiChildRenderObjectElement {
        return this._dart_createElement();
    }
    public didUnmountRenderObject(renderObject: any): void {
        return this._dart_didUnmountRenderObject(renderObject);
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
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
const richTextDefaultProps = {
    overflow: TextOverflow.clip,
    softWrap: true,
    textAlign: TextAlign.start,
    textScaleFactor: 1.0,
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
