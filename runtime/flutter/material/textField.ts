import { IIterable } from "../../dart/core/iterable";
import { IList, List } from "../../dart/core/list";
import { BoxHeightStyle } from "../../dart/ui/boxHeightStyle";
import { BoxWidthStyle } from "../../dart/ui/boxWidthStyle";
import { Brightness } from "../../dart/ui/brightness";
import { Clip } from "../../dart/ui/clip";
import { IColor } from "../../dart/ui/color";
import { IRadius } from "../../dart/ui/radius";
import { TextAlign } from "../../dart/ui/textAlign";
import { TextDirection } from "../../dart/ui/textDirection";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { DragStartBehavior } from "../gestures/dragStartBehavior";
import { EdgeInsets, IEdgeInsets } from "../painting/edgeInsets";
import { IStrutStyle } from "../painting/strutStyle";
import { ITextAlignVertical } from "../painting/textAlignVertical";
import { ITextStyle } from "../painting/textStyle";
import { MaxLengthEnforcement } from "../services/maxLengthEnforcement";
import { IMouseCursor } from "../services/mouseCursor";
import { SmartDashesType } from "../services/smartDashesType";
import { SmartQuotesType } from "../services/smartQuotesType";
import { TextCapitalization } from "../services/textCapitalization";
import { TextInputAction } from "../services/textInputAction";
import { ITextInputFormatter } from "../services/textInputFormatter";
import { ITextInputType } from "../services/textInputType";
import { IBuildContext } from "../widgets/buildContext";
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
import { IInputDecoration, InputDecoration } from "./inputDecoration";
declare const flutter: {
    material: {
        textField: (
            this: void,
            textField: ITextField,
            props: {
                autocorrect: boolean;
                autofillHints?: IIterable<string> | undefined;
                autofocus: boolean;
                buildCounter?: (
                    context: IBuildContext,
                    props: {
                        currentLength: number;
                        isFocused: boolean;
                        maxLength?: number | undefined;
                    }
                ) => IWidget | undefined | undefined;
                clipBehavior: Clip;
                controller?: ITextEditingController | undefined;
                cursorColor?: IColor | undefined;
                cursorHeight?: number | undefined;
                cursorRadius?: IRadius | undefined;
                cursorWidth: number;
                decoration?: IInputDecoration | undefined;
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
                mouseCursor?: IMouseCursor | undefined;
                obscureText: boolean;
                obscuringCharacter: string;
                onAppPrivateCommand?: (__: {
                    [index: string]: any;
                }) => void | undefined;
                onChanged?: (value: string) => void | undefined;
                onEditingComplete?: () => void | undefined;
                onSubmitted?: (value: string) => void | undefined;
                onTap?: () => void | undefined;
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
                textAlign: TextAlign;
                textAlignVertical?: ITextAlignVertical | undefined;
                textCapitalization: TextCapitalization;
                textDirection?: TextDirection | undefined;
                textInputAction?: TextInputAction | undefined;
                toolbarOptions?: IToolbarOptions | undefined;
            }
        ) => ITextField;
    };
};
export interface ITextField {
    controller: ITextEditingController | undefined;
    focusNode: IFocusNode | undefined;
    decoration: IInputDecoration | undefined;
    keyboardType: ITextInputType;
    textInputAction: TextInputAction | undefined;
    textCapitalization: TextCapitalization;
    style: ITextStyle | undefined;
    strutStyle: IStrutStyle | undefined;
    textAlign: TextAlign;
    textAlignVertical: ITextAlignVertical | undefined;
    textDirection: TextDirection | undefined;
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
    readOnly: boolean;
    toolbarOptions: IToolbarOptions;
    showCursor: boolean | undefined;
    maxLength: number | undefined;
    maxLengthEnforced: boolean;
    maxLengthEnforcement: MaxLengthEnforcement | undefined;
    inputFormatters: IList<ITextInputFormatter> | undefined;
    enabled: boolean | undefined;
    cursorWidth: number;
    cursorHeight: number | undefined;
    cursorRadius: IRadius | undefined;
    cursorColor: IColor | undefined;
    selectionHeightStyle: BoxHeightStyle;
    selectionWidthStyle: BoxWidthStyle;
    keyboardAppearance: Brightness | undefined;
    scrollPadding: IEdgeInsets;
    enableInteractiveSelection: boolean;
    selectionControls: ITextSelectionControls | undefined;
    dragStartBehavior: DragStartBehavior;
    mouseCursor: IMouseCursor | undefined;
    scrollPhysics: IScrollPhysics | undefined;
    scrollController: IScrollController | undefined;
    autofillHints: IIterable<string> | undefined;
    clipBehavior: Clip;
    restorationId: string | undefined;
    enableIMEPersonalizedLearning: boolean;
    key: IKey | undefined;
    getSelectionEnabled: () => boolean;
    createState: () => IState<ITextField>;
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
export class TextField implements IStatefulWidget, IDiagnosticable {
    public static noMaxLength = -1;
    public readonly controller: ITextEditingController | undefined =
        undefined as any;
    public readonly focusNode: IFocusNode | undefined = undefined as any;
    public readonly decoration: IInputDecoration | undefined = undefined as any;
    public readonly keyboardType: ITextInputType = undefined as any;
    public readonly textInputAction: TextInputAction | undefined =
        undefined as any;
    public readonly textCapitalization: TextCapitalization = undefined as any;
    public readonly style: ITextStyle | undefined = undefined as any;
    public readonly strutStyle: IStrutStyle | undefined = undefined as any;
    public readonly textAlign: TextAlign = undefined as any;
    public readonly textAlignVertical: ITextAlignVertical | undefined =
        undefined as any;
    public readonly textDirection: TextDirection | undefined = undefined as any;
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
    public readonly readOnly: boolean = undefined as any;
    public readonly toolbarOptions: IToolbarOptions = undefined as any;
    public readonly showCursor: boolean | undefined = undefined as any;
    public readonly maxLength: number | undefined = undefined as any;
    public readonly maxLengthEnforced: boolean = undefined as any;
    public readonly maxLengthEnforcement: MaxLengthEnforcement | undefined =
        undefined as any;
    public readonly inputFormatters: IList<ITextInputFormatter> | undefined =
        undefined as any;
    public readonly enabled: boolean | undefined = undefined as any;
    public readonly cursorWidth: number = undefined as any;
    public readonly cursorHeight: number | undefined = undefined as any;
    public readonly cursorRadius: IRadius | undefined = undefined as any;
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
    public readonly mouseCursor: IMouseCursor | undefined = undefined as any;
    public readonly scrollPhysics: IScrollPhysics | undefined =
        undefined as any;
    public readonly scrollController: IScrollController | undefined =
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
        buildCounter?: (
            context: IBuildContext,
            props: {
                currentLength: number;
                isFocused: boolean;
                maxLength?: number | undefined;
            }
        ) => IWidget | undefined | undefined;
        clipBehavior?: Clip;
        controller?: ITextEditingController | undefined;
        cursorColor?: IColor | undefined;
        cursorHeight?: number | undefined;
        cursorRadius?: IRadius | undefined;
        cursorWidth?: number;
        decoration?: IInputDecoration | undefined;
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
        mouseCursor?: IMouseCursor | undefined;
        obscureText?: boolean;
        obscuringCharacter?: string;
        onAppPrivateCommand?: (__: {
            [index: string]: any;
        }) => void | undefined;
        onChanged?: (value: string) => void | undefined;
        onEditingComplete?: () => void | undefined;
        onSubmitted?: (value: string) => void | undefined;
        onTap?: () => void | undefined;
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
        textAlign?: TextAlign;
        textAlignVertical?: ITextAlignVertical | undefined;
        textCapitalization?: TextCapitalization;
        textDirection?: TextDirection | undefined;
        textInputAction?: TextInputAction | undefined;
        toolbarOptions?: IToolbarOptions | undefined;
    }) {
        flutter.material.textField(this, {
            ...textFieldDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getSelectionEnabled: () => boolean =
        undefined as any;
    private readonly _dart_createState: () => IState<ITextField> =
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
    public createState(): IState<ITextField> {
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
const textFieldDefaultProps = {
    autocorrect: true,
    autofillHints: List.fromArray<string>([]),
    autofocus: false,
    clipBehavior: Clip.hardEdge,
    cursorWidth: 2.0,
    decoration: new InputDecoration(),
    dragStartBehavior: DragStartBehavior.start,
    enableIMEPersonalizedLearning: true,
    enableInteractiveSelection: true,
    enableSuggestions: true,
    expands: false,
    maxLengthEnforced: true,
    maxLines: 1,
    obscureText: false,
    obscuringCharacter: "•",
    readOnly: false,
    scrollPadding: EdgeInsets.all(20.0),
    selectionHeightStyle: BoxHeightStyle.tight,
    selectionWidthStyle: BoxWidthStyle.tight,
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
