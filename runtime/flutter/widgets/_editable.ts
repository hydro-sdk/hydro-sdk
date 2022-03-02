import { IList } from "../../dart/core/list";
import { BoxHeightStyle } from "../../dart/ui/boxHeightStyle";
import { BoxWidthStyle } from "../../dart/ui/boxWidthStyle";
import { Clip } from "../../dart/ui/clip";
import { IColor } from "../../dart/ui/color";
import { ILocale } from "../../dart/ui/locale";
import { IOffset } from "../../dart/ui/offset";
import { IRadius } from "../../dart/ui/radius";
import { IRect } from "../../dart/ui/rect";
import { TextAlign } from "../../dart/ui/textAlign";
import { TextDirection } from "../../dart/ui/textDirection";
import { ITextHeightBehavior } from "../../dart/ui/textHeightBehavior";
import { ITextRange } from "../../dart/ui/textRange";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IValueNotifier } from "../foundation/valueNotifier";
import { IInlineSpan } from "../painting/inlineSpan";
import { IStrutStyle } from "../painting/strutStyle";
import { TextWidthBasis } from "../painting/textWidthBasis";
import { ILayerLink } from "../rendering/layerLink";
import { IRenderEditable } from "../rendering/renderEditable";
import { IRenderObject } from "../rendering/renderObject";
import { IViewportOffset } from "../rendering/viewportOffset";
import { SmartDashesType } from "../services/smartDashesType";
import { SmartQuotesType } from "../services/smartQuotesType";
import { ITextEditingValue } from "../services/textEditingValue";
import { ITextSelectionDelegate } from "../services/textSelectionDelegate";
import { IBuildContext } from "./buildContext";
import { IMultiChildRenderObjectElement } from "./multiChildRenderObjectElement";
import { IMultiChildRenderObjectWidget } from "./multiChildRenderObjectWidget";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        _editable: (
            this: void,
            _editable: I_Editable,
            props: {
                backgroundCursorColor?: IColor | undefined;
                cursorColor?: IColor | undefined;
                cursorHeight?: number | undefined;
                cursorRadius?: IRadius | undefined;
                enableInteractiveSelection: boolean;
                key?: IKey | undefined;
                locale?: ILocale | undefined;
                minLines?: number | undefined;
                onCaretChanged?: (caretRect: IRect) => void | undefined;
                promptRectColor?: IColor | undefined;
                promptRectRange?: ITextRange | undefined;
                rendererIgnoresPointer: boolean;
                selectionColor?: IColor | undefined;
                selectionHeightStyle: BoxHeightStyle;
                selectionWidthStyle: BoxWidthStyle;
                strutStyle?: IStrutStyle | undefined;
                textHeightBehavior?: ITextHeightBehavior | undefined;
                autocorrect: boolean;
                clipBehavior: Clip;
                cursorOffset: IOffset;
                cursorWidth: number;
                devicePixelRatio: number;
                enableSuggestions: boolean;
                endHandleLayerLink: ILayerLink;
                expands: boolean;
                forceLine: boolean;
                hasFocus: boolean;
                inlineSpan: IInlineSpan;
                maxLines?: number | undefined;
                obscureText: boolean;
                obscuringCharacter: string;
                offset: IViewportOffset;
                paintCursorAboveText: boolean;
                readOnly: boolean;
                showCursor: IValueNotifier<boolean>;
                smartDashesType: SmartDashesType;
                smartQuotesType: SmartQuotesType;
                startHandleLayerLink: ILayerLink;
                textAlign: TextAlign;
                textDirection: TextDirection;
                textScaleFactor: number;
                textSelectionDelegate: ITextSelectionDelegate;
                textWidthBasis: TextWidthBasis;
                value: ITextEditingValue;
            }
        ) => I_Editable;
    };
};
export interface I_Editable {
    inlineSpan: IInlineSpan;
    value: ITextEditingValue;
    cursorColor: IColor | undefined;
    startHandleLayerLink: ILayerLink;
    endHandleLayerLink: ILayerLink;
    backgroundCursorColor: IColor | undefined;
    showCursor: IValueNotifier<boolean>;
    forceLine: boolean;
    readOnly: boolean;
    hasFocus: boolean;
    maxLines: number | undefined;
    minLines: number | undefined;
    expands: boolean;
    strutStyle: IStrutStyle | undefined;
    selectionColor: IColor | undefined;
    textScaleFactor: number;
    textAlign: TextAlign;
    textDirection: TextDirection;
    locale: ILocale | undefined;
    obscuringCharacter: string;
    obscureText: boolean;
    textHeightBehavior: ITextHeightBehavior | undefined;
    textWidthBasis: TextWidthBasis;
    autocorrect: boolean;
    smartDashesType: SmartDashesType;
    smartQuotesType: SmartQuotesType;
    enableSuggestions: boolean;
    offset: IViewportOffset;
    rendererIgnoresPointer: boolean;
    cursorWidth: number;
    cursorHeight: number | undefined;
    cursorRadius: IRadius | undefined;
    cursorOffset: IOffset;
    paintCursorAboveText: boolean;
    selectionHeightStyle: BoxHeightStyle;
    selectionWidthStyle: BoxWidthStyle;
    enableInteractiveSelection: boolean;
    textSelectionDelegate: ITextSelectionDelegate;
    devicePixelRatio: number;
    promptRectRange: ITextRange | undefined;
    promptRectColor: IColor | undefined;
    clipBehavior: Clip;
    children: IList<IWidget>;
    key: IKey | undefined;
    createRenderObject: (context: IBuildContext) => IRenderEditable;
    updateRenderObject: (context: IBuildContext, renderObject: unknown) => void;
    createElement: () => IMultiChildRenderObjectElement;
    didUnmountRenderObject: (renderObject: unknown) => void;
    toStringShort: () => string;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
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
export class _Editable
    implements IMultiChildRenderObjectWidget, IDiagnosticable
{
    public readonly inlineSpan: IInlineSpan = undefined as any;
    public readonly value: ITextEditingValue = undefined as any;
    public readonly cursorColor: IColor | undefined = undefined as any;
    public readonly startHandleLayerLink: ILayerLink = undefined as any;
    public readonly endHandleLayerLink: ILayerLink = undefined as any;
    public readonly backgroundCursorColor: IColor | undefined =
        undefined as any;
    public readonly showCursor: IValueNotifier<boolean> = undefined as any;
    public readonly forceLine: boolean = undefined as any;
    public readonly readOnly: boolean = undefined as any;
    public readonly hasFocus: boolean = undefined as any;
    public readonly maxLines: number | undefined = undefined as any;
    public readonly minLines: number | undefined = undefined as any;
    public readonly expands: boolean = undefined as any;
    public readonly strutStyle: IStrutStyle | undefined = undefined as any;
    public readonly selectionColor: IColor | undefined = undefined as any;
    public readonly textScaleFactor: number = undefined as any;
    public readonly textAlign: TextAlign = undefined as any;
    public readonly textDirection: TextDirection = undefined as any;
    public readonly locale: ILocale | undefined = undefined as any;
    public readonly obscuringCharacter: string = undefined as any;
    public readonly obscureText: boolean = undefined as any;
    public readonly textHeightBehavior: ITextHeightBehavior | undefined =
        undefined as any;
    public readonly textWidthBasis: TextWidthBasis = undefined as any;
    public readonly autocorrect: boolean = undefined as any;
    public readonly smartDashesType: SmartDashesType = undefined as any;
    public readonly smartQuotesType: SmartQuotesType = undefined as any;
    public readonly enableSuggestions: boolean = undefined as any;
    public readonly offset: IViewportOffset = undefined as any;
    public readonly rendererIgnoresPointer: boolean = undefined as any;
    public readonly cursorWidth: number = undefined as any;
    public readonly cursorHeight: number | undefined = undefined as any;
    public readonly cursorRadius: IRadius | undefined = undefined as any;
    public readonly cursorOffset: IOffset = undefined as any;
    public readonly paintCursorAboveText: boolean = undefined as any;
    public readonly selectionHeightStyle: BoxHeightStyle = undefined as any;
    public readonly selectionWidthStyle: BoxWidthStyle = undefined as any;
    public readonly enableInteractiveSelection: boolean = undefined as any;
    public readonly textSelectionDelegate: ITextSelectionDelegate =
        undefined as any;
    public readonly devicePixelRatio: number = undefined as any;
    public readonly promptRectRange: ITextRange | undefined = undefined as any;
    public readonly promptRectColor: IColor | undefined = undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly children: IList<IWidget> = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        backgroundCursorColor?: IColor | undefined;
        cursorColor?: IColor | undefined;
        cursorHeight?: number | undefined;
        cursorRadius?: IRadius | undefined;
        enableInteractiveSelection?: boolean;
        key?: IKey | undefined;
        locale?: ILocale | undefined;
        minLines?: number | undefined;
        onCaretChanged?: (caretRect: IRect) => void | undefined;
        promptRectColor?: IColor | undefined;
        promptRectRange?: ITextRange | undefined;
        rendererIgnoresPointer?: boolean;
        selectionColor?: IColor | undefined;
        selectionHeightStyle?: BoxHeightStyle;
        selectionWidthStyle?: BoxWidthStyle;
        strutStyle?: IStrutStyle | undefined;
        textHeightBehavior?: ITextHeightBehavior | undefined;
        autocorrect: boolean;
        clipBehavior: Clip;
        cursorOffset: IOffset;
        cursorWidth: number;
        devicePixelRatio: number;
        enableSuggestions: boolean;
        endHandleLayerLink: ILayerLink;
        expands: boolean;
        forceLine: boolean;
        hasFocus: boolean;
        inlineSpan: IInlineSpan;
        maxLines?: number | undefined;
        obscureText: boolean;
        obscuringCharacter: string;
        offset: IViewportOffset;
        paintCursorAboveText: boolean;
        readOnly: boolean;
        showCursor: IValueNotifier<boolean>;
        smartDashesType: SmartDashesType;
        smartQuotesType: SmartQuotesType;
        startHandleLayerLink: ILayerLink;
        textAlign: TextAlign;
        textDirection: TextDirection;
        textScaleFactor: number;
        textSelectionDelegate: ITextSelectionDelegate;
        textWidthBasis: TextWidthBasis;
        value: ITextEditingValue;
    }) {
        flutter.widgets._editable(this, {
            ..._editableDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createRenderObject: (
        context: IBuildContext
    ) => IRenderEditable = undefined as any;
    private readonly _dart_updateRenderObject: (
        context: IBuildContext,
        renderObject: any
    ) => void = undefined as any;
    private readonly _dart_createElement: () => IMultiChildRenderObjectElement =
        undefined as any;
    private readonly _dart_didUnmountRenderObject: (renderObject: any) => void =
        undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
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
    public createRenderObject(context: IBuildContext): IRenderEditable {
        return this._dart_createRenderObject(context);
    }
    public updateRenderObject(context: IBuildContext, renderObject: any): void {
        return this._dart_updateRenderObject(context, renderObject);
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
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
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
const _editableDefaultProps = {
    enableInteractiveSelection: true,
    rendererIgnoresPointer: false,
    selectionHeightStyle: BoxHeightStyle.tight,
    selectionWidthStyle: BoxWidthStyle.tight,
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
