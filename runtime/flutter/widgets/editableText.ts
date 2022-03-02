import { IIterable } from "../../dart/core/iterable";
import { IList, List } from "../../dart/core/list";
import { BoxHeightStyle } from "../../dart/ui/boxHeightStyle";
import { BoxWidthStyle } from "../../dart/ui/boxWidthStyle";
import { Brightness } from "../../dart/ui/brightness";
import { Clip } from "../../dart/ui/clip";
import { IColor } from "../../dart/ui/color";
import { ILocale } from "../../dart/ui/locale";
import { IOffset } from "../../dart/ui/offset";
import { IRadius } from "../../dart/ui/radius";
import { TextAlign } from "../../dart/ui/textAlign";
import { TextDirection } from "../../dart/ui/textDirection";
import { ITextHeightBehavior } from "../../dart/ui/textHeightBehavior";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { DragStartBehavior } from "../gestures/dragStartBehavior";
import { EdgeInsets, IEdgeInsets } from "../painting/edgeInsets";
import { IStrutStyle } from "../painting/strutStyle";
import { ITextStyle } from "../painting/textStyle";
import { TextWidthBasis } from "../painting/textWidthBasis";
import { IAutofillClient } from "../services/autofillClient";
import { IMouseCursor } from "../services/mouseCursor";
import { SelectionChangedCause } from "../services/selectionChangedCause";
import { SmartDashesType } from "../services/smartDashesType";
import { SmartQuotesType } from "../services/smartQuotesType";
import { TextCapitalization } from "../services/textCapitalization";
import { TextInputAction } from "../services/textInputAction";
import { ITextInputFormatter } from "../services/textInputFormatter";
import { ITextInputType } from "../services/textInputType";
import { ITextSelection } from "../services/textSelection";
import { IEditableTextState } from "./editableTextState";
import { IFocusNode } from "./focusNode";
import { IScrollBehavior } from "./scrollBehavior";
import { IScrollController } from "./scrollController";
import { IScrollPhysics } from "./scrollPhysics";
import { IState } from "./state";
import { IStatefulElement } from "./statefulElement";
import { IStatefulWidget } from "./statefulWidget";
import { ITextEditingController } from "./textEditingController";
import { ITextSelectionControls } from "./textSelectionControls";
import { IToolbarOptions, ToolbarOptions } from "./toolbarOptions";
declare const flutter: {
    widgets: {
        editableText: (
            this: void,
            editableText: IEditableText,
            props: {
                autocorrect: boolean;
                autocorrectionTextRectColor?: IColor | undefined;
                autofillClient?: IAutofillClient | undefined;
                autofillHints?: IIterable<string> | undefined;
                autofocus: boolean;
                clipBehavior: Clip;
                cursorHeight?: number | undefined;
                cursorOffset?: IOffset | undefined;
                cursorOpacityAnimates: boolean;
                cursorRadius?: IRadius | undefined;
                cursorWidth: number;
                dragStartBehavior: DragStartBehavior;
                enableIMEPersonalizedLearning: boolean;
                enableInteractiveSelection: boolean;
                enableSuggestions: boolean;
                expands: boolean;
                forceLine: boolean;
                inputFormatters?: IList<ITextInputFormatter> | undefined;
                key?: IKey | undefined;
                keyboardAppearance: Brightness;
                keyboardType?: ITextInputType | undefined;
                locale?: ILocale | undefined;
                maxLines?: number | undefined;
                minLines?: number | undefined;
                mouseCursor?: IMouseCursor | undefined;
                obscureText: boolean;
                obscuringCharacter: string;
                onAppPrivateCommand?: (__: {
                    [index: string]: any;
                }) => void | undefined;
                onChanged?: (value: string) => void | undefined;
                onEditingComplete?: () => void | undefined;
                onSelectionChanged?: (
                    selection: ITextSelection,
                    cause?: SelectionChangedCause | undefined
                ) => void | undefined;
                onSelectionHandleTapped?: () => void | undefined;
                onSubmitted?: (value: string) => void | undefined;
                paintCursorAboveText: boolean;
                readOnly: boolean;
                rendererIgnoresPointer: boolean;
                restorationId?: string | undefined;
                scrollBehavior?: IScrollBehavior | undefined;
                scrollController?: IScrollController | undefined;
                scrollPadding: IEdgeInsets;
                scrollPhysics?: IScrollPhysics | undefined;
                selectionColor?: IColor | undefined;
                selectionControls?: ITextSelectionControls | undefined;
                selectionHeightStyle: BoxHeightStyle;
                selectionWidthStyle: BoxWidthStyle;
                showCursor?: boolean | undefined;
                showSelectionHandles: boolean;
                smartDashesType?: SmartDashesType | undefined;
                smartQuotesType?: SmartQuotesType | undefined;
                strutStyle?: IStrutStyle | undefined;
                textAlign: TextAlign;
                textCapitalization: TextCapitalization;
                textDirection?: TextDirection | undefined;
                textHeightBehavior?: ITextHeightBehavior | undefined;
                textInputAction?: TextInputAction | undefined;
                textScaleFactor?: number | undefined;
                textWidthBasis: TextWidthBasis;
                toolbarOptions: IToolbarOptions;
                backgroundCursorColor: IColor;
                controller: ITextEditingController;
                cursorColor: IColor;
                focusNode: IFocusNode;
                style: ITextStyle;
            }
        ) => IEditableText;
    };
};
export interface IEditableText {
    controller: ITextEditingController;
    focusNode: IFocusNode;
    obscuringCharacter: string;
    obscureText: boolean;
    textHeightBehavior: ITextHeightBehavior | undefined;
    textWidthBasis: TextWidthBasis;
    readOnly: boolean;
    forceLine: boolean;
    toolbarOptions: IToolbarOptions;
    showSelectionHandles: boolean;
    showCursor: boolean;
    autocorrect: boolean;
    smartDashesType: SmartDashesType;
    smartQuotesType: SmartQuotesType;
    enableSuggestions: boolean;
    style: ITextStyle;
    textAlign: TextAlign;
    textDirection: TextDirection | undefined;
    textCapitalization: TextCapitalization;
    locale: ILocale | undefined;
    textScaleFactor: number | undefined;
    cursorColor: IColor;
    autocorrectionTextRectColor: IColor | undefined;
    backgroundCursorColor: IColor;
    maxLines: number | undefined;
    minLines: number | undefined;
    expands: boolean;
    autofocus: boolean;
    selectionColor: IColor | undefined;
    selectionControls: ITextSelectionControls | undefined;
    keyboardType: ITextInputType;
    textInputAction: TextInputAction | undefined;
    inputFormatters: IList<ITextInputFormatter> | undefined;
    mouseCursor: IMouseCursor | undefined;
    rendererIgnoresPointer: boolean;
    cursorWidth: number;
    cursorHeight: number | undefined;
    cursorRadius: IRadius | undefined;
    cursorOpacityAnimates: boolean;
    cursorOffset: IOffset | undefined;
    paintCursorAboveText: boolean;
    selectionHeightStyle: BoxHeightStyle;
    selectionWidthStyle: BoxWidthStyle;
    keyboardAppearance: Brightness;
    scrollPadding: IEdgeInsets;
    enableInteractiveSelection: boolean;
    dragStartBehavior: DragStartBehavior;
    scrollController: IScrollController | undefined;
    scrollPhysics: IScrollPhysics | undefined;
    autofillHints: IIterable<string> | undefined;
    autofillClient: IAutofillClient | undefined;
    clipBehavior: Clip;
    restorationId: string | undefined;
    scrollBehavior: IScrollBehavior | undefined;
    enableIMEPersonalizedLearning: boolean;
    key: IKey | undefined;
    getStrutStyle: () => IStrutStyle;
    getSelectionEnabled: () => boolean;
    createState: () => IEditableTextState;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    createElement: () => IStatefulElement;
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
export class EditableText implements IStatefulWidget, IDiagnosticable {
    public readonly controller: ITextEditingController = undefined as any;
    public readonly focusNode: IFocusNode = undefined as any;
    public readonly obscuringCharacter: string = undefined as any;
    public readonly obscureText: boolean = undefined as any;
    public readonly textHeightBehavior: ITextHeightBehavior | undefined =
        undefined as any;
    public readonly textWidthBasis: TextWidthBasis = undefined as any;
    public readonly readOnly: boolean = undefined as any;
    public readonly forceLine: boolean = undefined as any;
    public readonly toolbarOptions: IToolbarOptions = undefined as any;
    public readonly showSelectionHandles: boolean = undefined as any;
    public readonly showCursor: boolean = undefined as any;
    public readonly autocorrect: boolean = undefined as any;
    public readonly smartDashesType: SmartDashesType = undefined as any;
    public readonly smartQuotesType: SmartQuotesType = undefined as any;
    public readonly enableSuggestions: boolean = undefined as any;
    public readonly style: ITextStyle = undefined as any;
    public readonly textAlign: TextAlign = undefined as any;
    public readonly textDirection: TextDirection | undefined = undefined as any;
    public readonly textCapitalization: TextCapitalization = undefined as any;
    public readonly locale: ILocale | undefined = undefined as any;
    public readonly textScaleFactor: number | undefined = undefined as any;
    public readonly cursorColor: IColor = undefined as any;
    public readonly autocorrectionTextRectColor: IColor | undefined =
        undefined as any;
    public readonly backgroundCursorColor: IColor = undefined as any;
    public readonly maxLines: number | undefined = undefined as any;
    public readonly minLines: number | undefined = undefined as any;
    public readonly expands: boolean = undefined as any;
    public readonly autofocus: boolean = undefined as any;
    public readonly selectionColor: IColor | undefined = undefined as any;
    public readonly selectionControls: ITextSelectionControls | undefined =
        undefined as any;
    public readonly keyboardType: ITextInputType = undefined as any;
    public readonly textInputAction: TextInputAction | undefined =
        undefined as any;
    public readonly inputFormatters: IList<ITextInputFormatter> | undefined =
        undefined as any;
    public readonly mouseCursor: IMouseCursor | undefined = undefined as any;
    public readonly rendererIgnoresPointer: boolean = undefined as any;
    public readonly cursorWidth: number = undefined as any;
    public readonly cursorHeight: number | undefined = undefined as any;
    public readonly cursorRadius: IRadius | undefined = undefined as any;
    public readonly cursorOpacityAnimates: boolean = undefined as any;
    public readonly cursorOffset: IOffset | undefined = undefined as any;
    public readonly paintCursorAboveText: boolean = undefined as any;
    public readonly selectionHeightStyle: BoxHeightStyle = undefined as any;
    public readonly selectionWidthStyle: BoxWidthStyle = undefined as any;
    public readonly keyboardAppearance: Brightness = undefined as any;
    public readonly scrollPadding: IEdgeInsets = undefined as any;
    public readonly enableInteractiveSelection: boolean = undefined as any;
    public readonly dragStartBehavior: DragStartBehavior = undefined as any;
    public readonly scrollController: IScrollController | undefined =
        undefined as any;
    public readonly scrollPhysics: IScrollPhysics | undefined =
        undefined as any;
    public readonly autofillHints: IIterable<string> | undefined =
        undefined as any;
    public readonly autofillClient: IAutofillClient | undefined =
        undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly restorationId: string | undefined = undefined as any;
    public readonly scrollBehavior: IScrollBehavior | undefined =
        undefined as any;
    public readonly enableIMEPersonalizedLearning: boolean = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        autocorrect?: boolean;
        autocorrectionTextRectColor?: IColor | undefined;
        autofillClient?: IAutofillClient | undefined;
        autofillHints?: IIterable<string> | undefined;
        autofocus?: boolean;
        clipBehavior?: Clip;
        cursorHeight?: number | undefined;
        cursorOffset?: IOffset | undefined;
        cursorOpacityAnimates?: boolean;
        cursorRadius?: IRadius | undefined;
        cursorWidth?: number;
        dragStartBehavior?: DragStartBehavior;
        enableIMEPersonalizedLearning?: boolean;
        enableInteractiveSelection?: boolean;
        enableSuggestions?: boolean;
        expands?: boolean;
        forceLine?: boolean;
        inputFormatters?: IList<ITextInputFormatter> | undefined;
        key?: IKey | undefined;
        keyboardAppearance?: Brightness;
        keyboardType?: ITextInputType | undefined;
        locale?: ILocale | undefined;
        maxLines?: number | undefined;
        minLines?: number | undefined;
        mouseCursor?: IMouseCursor | undefined;
        obscureText?: boolean;
        obscuringCharacter?: string;
        onAppPrivateCommand?: (__: {
            [index: string]: any;
        }) => void | undefined;
        onChanged?: (value: string) => void | undefined;
        onEditingComplete?: () => void | undefined;
        onSelectionChanged?: (
            selection: ITextSelection,
            cause?: SelectionChangedCause | undefined
        ) => void | undefined;
        onSelectionHandleTapped?: () => void | undefined;
        onSubmitted?: (value: string) => void | undefined;
        paintCursorAboveText?: boolean;
        readOnly?: boolean;
        rendererIgnoresPointer?: boolean;
        restorationId?: string | undefined;
        scrollBehavior?: IScrollBehavior | undefined;
        scrollController?: IScrollController | undefined;
        scrollPadding?: IEdgeInsets;
        scrollPhysics?: IScrollPhysics | undefined;
        selectionColor?: IColor | undefined;
        selectionControls?: ITextSelectionControls | undefined;
        selectionHeightStyle?: BoxHeightStyle;
        selectionWidthStyle?: BoxWidthStyle;
        showCursor?: boolean | undefined;
        showSelectionHandles?: boolean;
        smartDashesType?: SmartDashesType | undefined;
        smartQuotesType?: SmartQuotesType | undefined;
        strutStyle?: IStrutStyle | undefined;
        textAlign?: TextAlign;
        textCapitalization?: TextCapitalization;
        textDirection?: TextDirection | undefined;
        textHeightBehavior?: ITextHeightBehavior | undefined;
        textInputAction?: TextInputAction | undefined;
        textScaleFactor?: number | undefined;
        textWidthBasis?: TextWidthBasis;
        toolbarOptions?: IToolbarOptions;
        backgroundCursorColor: IColor;
        controller: ITextEditingController;
        cursorColor: IColor;
        focusNode: IFocusNode;
        style: ITextStyle;
    }) {
        flutter.widgets.editableText(this, {
            ...editableTextDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getStrutStyle: () => IStrutStyle = undefined as any;
    private readonly _dart_getSelectionEnabled: () => boolean =
        undefined as any;
    private readonly _dart_createState: () => IEditableTextState =
        undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_createElement: () => IStatefulElement =
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
    public getStrutStyle(): IStrutStyle {
        return this._dart_getStrutStyle();
    }
    public getSelectionEnabled(): boolean {
        return this._dart_getSelectionEnabled();
    }
    public createState(): IEditableTextState {
        return this._dart_createState();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public createElement(): IStatefulElement {
        return this._dart_createElement();
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
const editableTextDefaultProps = {
    autocorrect: true,
    autofillHints: List.fromArray<string>([]),
    autofocus: false,
    clipBehavior: Clip.hardEdge,
    cursorOpacityAnimates: false,
    cursorWidth: 2.0,
    dragStartBehavior: DragStartBehavior.start,
    enableIMEPersonalizedLearning: true,
    enableInteractiveSelection: true,
    enableSuggestions: true,
    expands: false,
    forceLine: true,
    keyboardAppearance: Brightness.light,
    maxLines: 1,
    obscureText: false,
    obscuringCharacter: "•",
    paintCursorAboveText: false,
    readOnly: false,
    rendererIgnoresPointer: false,
    scrollPadding: EdgeInsets.all(20.0),
    selectionHeightStyle: BoxHeightStyle.tight,
    selectionWidthStyle: BoxWidthStyle.tight,
    showSelectionHandles: false,
    textAlign: TextAlign.start,
    textCapitalization: TextCapitalization.none,
    textWidthBasis: TextWidthBasis.parent,
    toolbarOptions: new ToolbarOptions({
        copy: true,
        cut: true,
        paste: true,
        selectAll: true,
    }),
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
