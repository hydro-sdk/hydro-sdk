import { IIterable } from "../../dart/core/iterable";
import { IList, List } from "../../dart/core/list";
import { BoxHeightStyle } from "../../dart/ui/boxHeightStyle";
import { BoxWidthStyle } from "../../dart/ui/boxWidthStyle";
import { Brightness } from "../../dart/ui/brightness";
import { Clip } from "../../dart/ui/clip";
import { IColor } from "../../dart/ui/color";
import { IRadius, Radius } from "../../dart/ui/radius";
import { TextAlign } from "../../dart/ui/textAlign";
import { TextDirection } from "../../dart/ui/textDirection";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { DragStartBehavior } from "../gestures/dragStartBehavior";
import { Border } from "../painting/border";
import { BorderSide } from "../painting/borderSide";
import { BoxDecoration, IBoxDecoration } from "../painting/boxDecoration";
import { EdgeInsets, IEdgeInsets } from "../painting/edgeInsets";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IStrutStyle } from "../painting/strutStyle";
import { ITextAlignVertical } from "../painting/textAlignVertical";
import { ITextStyle, TextStyle } from "../painting/textStyle";
import { MaxLengthEnforcement } from "../services/maxLengthEnforcement";
import { SmartDashesType } from "../services/smartDashesType";
import { SmartQuotesType } from "../services/smartQuotesType";
import { TextCapitalization } from "../services/textCapitalization";
import { TextInputAction } from "../services/textInputAction";
import { ITextInputFormatter } from "../services/textInputFormatter";
import { ITextInputType } from "../services/textInputType";
import { IFocusNode } from "../widgets/focusNode";
import { IScrollController } from "../widgets/scrollController";
import { IScrollPhysics } from "../widgets/scrollPhysics";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { ITextEditingController } from "../widgets/textEditingController";
import { ITextSelectionControls } from "../widgets/textSelectionControls";
import { IToolbarOptions } from "../widgets/toolbarOptions";
import { IWidget } from "../widgets/widget";
import { OverlayVisibilityMode } from "./overlayVisibilityMode";
declare const flutter: {
    cupertino: {
        cupertinoTextField: (
            this: void,
            cupertinoTextField: ICupertinoTextField,
            props: {
                autocorrect: boolean;
                autofillHints?: IIterable<string> | undefined;
                autofocus: boolean;
                clearButtonMode: OverlayVisibilityMode;
                clipBehavior: Clip;
                controller?: ITextEditingController | undefined;
                cursorColor?: IColor | undefined;
                cursorHeight?: number | undefined;
                cursorRadius: IRadius;
                cursorWidth: number;
                decoration?: IBoxDecoration | undefined;
                dragStartBehavior: DragStartBehavior;
                enableIMEPersonalizedLearning: boolean;
                enableInteractiveSelection: boolean;
                enableSuggestions: boolean;
                enabled?: boolean | undefined;
                expands: boolean;
                focusNode?: IFocusNode | undefined;
                inputFormatters?: IList<ITextInputFormatter> | undefined;
                key?: IKey | undefined;
                keyboardAppearance?: Brightness | undefined;
                keyboardType?: ITextInputType | undefined;
                maxLength?: number | undefined;
                maxLengthEnforced: boolean;
                maxLengthEnforcement?: MaxLengthEnforcement | undefined;
                maxLines?: number | undefined;
                minLines?: number | undefined;
                obscureText: boolean;
                obscuringCharacter: string;
                onChanged?: (value: string) => void | undefined;
                onEditingComplete?: () => void | undefined;
                onSubmitted?: (value: string) => void | undefined;
                onTap?: () => void | undefined;
                padding: IEdgeInsetsGeometry;
                placeholder?: string | undefined;
                placeholderStyle?: ITextStyle | undefined;
                prefix?: IWidget | undefined;
                prefixMode: OverlayVisibilityMode;
                readOnly: boolean;
                restorationId?: string | undefined;
                scrollController?: IScrollController | undefined;
                scrollPadding: IEdgeInsets;
                scrollPhysics?: IScrollPhysics | undefined;
                selectionControls?: ITextSelectionControls | undefined;
                selectionHeightStyle: BoxHeightStyle;
                selectionWidthStyle: BoxWidthStyle;
                showCursor?: boolean | undefined;
                smartDashesType?: SmartDashesType | undefined;
                smartQuotesType?: SmartQuotesType | undefined;
                strutStyle?: IStrutStyle | undefined;
                style?: ITextStyle | undefined;
                suffix?: IWidget | undefined;
                suffixMode: OverlayVisibilityMode;
                textAlign: TextAlign;
                textAlignVertical?: ITextAlignVertical | undefined;
                textCapitalization: TextCapitalization;
                textDirection?: TextDirection | undefined;
                textInputAction?: TextInputAction | undefined;
                toolbarOptions?: IToolbarOptions | undefined;
            }
        ) => ICupertinoTextField;
    };
};
export interface ICupertinoTextField {
    controller: ITextEditingController | undefined;
    focusNode: IFocusNode | undefined;
    decoration: IBoxDecoration | undefined;
    padding: IEdgeInsetsGeometry;
    placeholder: string | undefined;
    placeholderStyle: ITextStyle | undefined;
    prefix: IWidget | undefined;
    prefixMode: OverlayVisibilityMode;
    suffix: IWidget | undefined;
    suffixMode: OverlayVisibilityMode;
    clearButtonMode: OverlayVisibilityMode;
    keyboardType: ITextInputType;
    textInputAction: TextInputAction | undefined;
    textCapitalization: TextCapitalization;
    style: ITextStyle | undefined;
    strutStyle: IStrutStyle | undefined;
    textAlign: TextAlign;
    toolbarOptions: IToolbarOptions;
    textAlignVertical: ITextAlignVertical | undefined;
    textDirection: TextDirection | undefined;
    readOnly: boolean;
    showCursor: boolean | undefined;
    autofocus: boolean;
    obscuringCharacter: string;
    obscureText: boolean;
    autocorrect: boolean;
    smartDashesType: SmartDashesType;
    smartQuotesType: SmartQuotesType;
    enableSuggestions: boolean;
    maxLines: number | undefined;
    minLines: number | undefined;
    expands: boolean;
    maxLength: number | undefined;
    maxLengthEnforced: boolean;
    maxLengthEnforcement: MaxLengthEnforcement | undefined;
    inputFormatters: IList<ITextInputFormatter> | undefined;
    enabled: boolean | undefined;
    cursorWidth: number;
    cursorHeight: number | undefined;
    cursorRadius: IRadius;
    cursorColor: IColor | undefined;
    selectionHeightStyle: BoxHeightStyle;
    selectionWidthStyle: BoxWidthStyle;
    keyboardAppearance: Brightness | undefined;
    scrollPadding: IEdgeInsets;
    enableInteractiveSelection: boolean;
    selectionControls: ITextSelectionControls | undefined;
    dragStartBehavior: DragStartBehavior;
    scrollController: IScrollController | undefined;
    scrollPhysics: IScrollPhysics | undefined;
    autofillHints: IIterable<string> | undefined;
    clipBehavior: Clip;
    restorationId: string | undefined;
    enableIMEPersonalizedLearning: boolean;
    key: IKey | undefined;
    getSelectionEnabled: () => boolean;
    createState: () => IState<ICupertinoTextField>;
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
export class CupertinoTextField implements IStatefulWidget, IDiagnosticable {
    public readonly controller: ITextEditingController | undefined =
        undefined as any;
    public readonly focusNode: IFocusNode | undefined = undefined as any;
    public readonly decoration: IBoxDecoration | undefined = undefined as any;
    public readonly padding: IEdgeInsetsGeometry = undefined as any;
    public readonly placeholder: string | undefined = undefined as any;
    public readonly placeholderStyle: ITextStyle | undefined = undefined as any;
    public readonly prefix: IWidget | undefined = undefined as any;
    public readonly prefixMode: OverlayVisibilityMode = undefined as any;
    public readonly suffix: IWidget | undefined = undefined as any;
    public readonly suffixMode: OverlayVisibilityMode = undefined as any;
    public readonly clearButtonMode: OverlayVisibilityMode = undefined as any;
    public readonly keyboardType: ITextInputType = undefined as any;
    public readonly textInputAction: TextInputAction | undefined =
        undefined as any;
    public readonly textCapitalization: TextCapitalization = undefined as any;
    public readonly style: ITextStyle | undefined = undefined as any;
    public readonly strutStyle: IStrutStyle | undefined = undefined as any;
    public readonly textAlign: TextAlign = undefined as any;
    public readonly toolbarOptions: IToolbarOptions = undefined as any;
    public readonly textAlignVertical: ITextAlignVertical | undefined =
        undefined as any;
    public readonly textDirection: TextDirection | undefined = undefined as any;
    public readonly readOnly: boolean = undefined as any;
    public readonly showCursor: boolean | undefined = undefined as any;
    public readonly autofocus: boolean = undefined as any;
    public readonly obscuringCharacter: string = undefined as any;
    public readonly obscureText: boolean = undefined as any;
    public readonly autocorrect: boolean = undefined as any;
    public readonly smartDashesType: SmartDashesType = undefined as any;
    public readonly smartQuotesType: SmartQuotesType = undefined as any;
    public readonly enableSuggestions: boolean = undefined as any;
    public readonly maxLines: number | undefined = undefined as any;
    public readonly minLines: number | undefined = undefined as any;
    public readonly expands: boolean = undefined as any;
    public readonly maxLength: number | undefined = undefined as any;
    public readonly maxLengthEnforced: boolean = undefined as any;
    public readonly maxLengthEnforcement: MaxLengthEnforcement | undefined =
        undefined as any;
    public readonly inputFormatters: IList<ITextInputFormatter> | undefined =
        undefined as any;
    public readonly enabled: boolean | undefined = undefined as any;
    public readonly cursorWidth: number = undefined as any;
    public readonly cursorHeight: number | undefined = undefined as any;
    public readonly cursorRadius: IRadius = undefined as any;
    public readonly cursorColor: IColor | undefined = undefined as any;
    public readonly selectionHeightStyle: BoxHeightStyle = undefined as any;
    public readonly selectionWidthStyle: BoxWidthStyle = undefined as any;
    public readonly keyboardAppearance: Brightness | undefined =
        undefined as any;
    public readonly scrollPadding: IEdgeInsets = undefined as any;
    public readonly enableInteractiveSelection: boolean = undefined as any;
    public readonly selectionControls: ITextSelectionControls | undefined =
        undefined as any;
    public readonly dragStartBehavior: DragStartBehavior = undefined as any;
    public readonly scrollController: IScrollController | undefined =
        undefined as any;
    public readonly scrollPhysics: IScrollPhysics | undefined =
        undefined as any;
    public readonly autofillHints: IIterable<string> | undefined =
        undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly restorationId: string | undefined = undefined as any;
    public readonly enableIMEPersonalizedLearning: boolean = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        autocorrect?: boolean;
        autofillHints?: IIterable<string> | undefined;
        autofocus?: boolean;
        clearButtonMode?: OverlayVisibilityMode;
        clipBehavior?: Clip;
        controller?: ITextEditingController | undefined;
        cursorColor?: IColor | undefined;
        cursorHeight?: number | undefined;
        cursorRadius?: IRadius;
        cursorWidth?: number;
        decoration?: IBoxDecoration | undefined;
        dragStartBehavior?: DragStartBehavior;
        enableIMEPersonalizedLearning?: boolean;
        enableInteractiveSelection?: boolean;
        enableSuggestions?: boolean;
        enabled?: boolean | undefined;
        expands?: boolean;
        focusNode?: IFocusNode | undefined;
        inputFormatters?: IList<ITextInputFormatter> | undefined;
        key?: IKey | undefined;
        keyboardAppearance?: Brightness | undefined;
        keyboardType?: ITextInputType | undefined;
        maxLength?: number | undefined;
        maxLengthEnforced?: boolean;
        maxLengthEnforcement?: MaxLengthEnforcement | undefined;
        maxLines?: number | undefined;
        minLines?: number | undefined;
        obscureText?: boolean;
        obscuringCharacter?: string;
        onChanged?: (value: string) => void | undefined;
        onEditingComplete?: () => void | undefined;
        onSubmitted?: (value: string) => void | undefined;
        onTap?: () => void | undefined;
        padding?: IEdgeInsetsGeometry;
        placeholder?: string | undefined;
        placeholderStyle?: ITextStyle | undefined;
        prefix?: IWidget | undefined;
        prefixMode?: OverlayVisibilityMode;
        readOnly?: boolean;
        restorationId?: string | undefined;
        scrollController?: IScrollController | undefined;
        scrollPadding?: IEdgeInsets;
        scrollPhysics?: IScrollPhysics | undefined;
        selectionControls?: ITextSelectionControls | undefined;
        selectionHeightStyle?: BoxHeightStyle;
        selectionWidthStyle?: BoxWidthStyle;
        showCursor?: boolean | undefined;
        smartDashesType?: SmartDashesType | undefined;
        smartQuotesType?: SmartQuotesType | undefined;
        strutStyle?: IStrutStyle | undefined;
        style?: ITextStyle | undefined;
        suffix?: IWidget | undefined;
        suffixMode?: OverlayVisibilityMode;
        textAlign?: TextAlign;
        textAlignVertical?: ITextAlignVertical | undefined;
        textCapitalization?: TextCapitalization;
        textDirection?: TextDirection | undefined;
        textInputAction?: TextInputAction | undefined;
        toolbarOptions?: IToolbarOptions | undefined;
    }) {
        flutter.cupertino.cupertinoTextField(this, {
            ...cupertinoTextFieldDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getSelectionEnabled: () => boolean =
        undefined as any;
    private readonly _dart_createState: () => IState<ICupertinoTextField> =
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
    public getSelectionEnabled(): boolean {
        return this._dart_getSelectionEnabled();
    }
    public createState(): IState<ICupertinoTextField> {
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
const cupertinoTextFieldDefaultProps = {
    autocorrect: true,
    autofillHints: List.fromArray<string>([]),
    autofocus: false,
    clearButtonMode: OverlayVisibilityMode.never,
    clipBehavior: Clip.hardEdge,
    cursorRadius: Radius.circular(2.0),
    cursorWidth: 2.0,
    decoration: new BoxDecoration({
        border: new Border({
            top: new BorderSide(),
            bottom: new BorderSide(),
            left: new BorderSide(),
            right: new BorderSide(),
        }),
    }),
    dragStartBehavior: DragStartBehavior.start,
    enableIMEPersonalizedLearning: true,
    enableInteractiveSelection: true,
    enableSuggestions: true,
    expands: false,
    maxLengthEnforced: true,
    maxLines: 1,
    obscureText: false,
    obscuringCharacter: "•",
    padding: EdgeInsets.all(6.0),
    placeholderStyle: new TextStyle(),
    prefixMode: OverlayVisibilityMode.always,
    readOnly: false,
    scrollPadding: EdgeInsets.all(20.0),
    selectionHeightStyle: BoxHeightStyle.tight,
    selectionWidthStyle: BoxWidthStyle.tight,
    suffixMode: OverlayVisibilityMode.always,
    textAlign: TextAlign.start,
    textCapitalization: TextCapitalization.none,
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
