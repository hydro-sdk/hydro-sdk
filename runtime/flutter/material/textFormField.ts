import { IIterable } from "../../dart/core/iterable";
import { IList } from "../../dart/core/list";
import { Brightness } from "../../dart/ui/brightness";
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
import { EdgeInsets, IEdgeInsets } from "../painting/edgeInsets";
import { IStrutStyle } from "../painting/strutStyle";
import { ITextAlignVertical } from "../painting/textAlignVertical";
import { ITextStyle } from "../painting/textStyle";
import { MaxLengthEnforcement } from "../services/maxLengthEnforcement";
import { SmartDashesType } from "../services/smartDashesType";
import { SmartQuotesType } from "../services/smartQuotesType";
import { TextCapitalization } from "../services/textCapitalization";
import { TextInputAction } from "../services/textInputAction";
import { ITextInputFormatter } from "../services/textInputFormatter";
import { ITextInputType } from "../services/textInputType";
import { AutovalidateMode } from "../widgets/autovalidateMode";
import { IBuildContext } from "../widgets/buildContext";
import { IFocusNode } from "../widgets/focusNode";
import { IFormField } from "../widgets/formField";
import { IFormFieldState } from "../widgets/formFieldState";
import { IScrollController } from "../widgets/scrollController";
import { IScrollPhysics } from "../widgets/scrollPhysics";
import { IStatefulElement } from "../widgets/statefulElement";
import { ITextEditingController } from "../widgets/textEditingController";
import { ITextSelectionControls } from "../widgets/textSelectionControls";
import { IToolbarOptions } from "../widgets/toolbarOptions";
import { IWidget } from "../widgets/widget";
import { IInputDecoration, InputDecoration } from "./inputDecoration";
declare const flutter: {
    material: {
        textFormField: (
            this: void,
            textFormField: ITextFormField,
            props: {
                autocorrect: boolean;
                autofillHints?: IIterable<string> | undefined;
                autofocus: boolean;
                autovalidateMode?: AutovalidateMode | undefined;
                buildCounter?: (
                    context: IBuildContext,
                    props: {
                        currentLength: number;
                        isFocused: boolean;
                        maxLength?: number | undefined;
                    }
                ) => IWidget | undefined | undefined;
                controller?: ITextEditingController | undefined;
                cursorColor?: IColor | undefined;
                cursorHeight?: number | undefined;
                cursorRadius?: IRadius | undefined;
                cursorWidth: number;
                decoration?: IInputDecoration | undefined;
                enableIMEPersonalizedLearning: boolean;
                enableInteractiveSelection: boolean;
                enableSuggestions: boolean;
                enabled?: boolean | undefined;
                expands: boolean;
                focusNode?: IFocusNode | undefined;
                initialValue?: string | undefined;
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
                onFieldSubmitted?: (value: string) => void | undefined;
                onSaved?: (newValue?: string | undefined) => void | undefined;
                onTap?: () => void | undefined;
                readOnly: boolean;
                restorationId?: string | undefined;
                scrollController?: IScrollController | undefined;
                scrollPadding: IEdgeInsets;
                scrollPhysics?: IScrollPhysics | undefined;
                selectionControls?: ITextSelectionControls | undefined;
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
                validator?: (
                    value?: string | undefined
                ) => string | undefined | undefined;
            }
        ) => ITextFormField;
    };
};
export interface ITextFormField {
    controller: ITextEditingController | undefined;
    onSaved: (newValue?: string | undefined) => void | undefined;
    validator: (value?: string | undefined) => string | undefined | undefined;
    builder: (field: IFormFieldState<string>) => IWidget;
    initialValue: string | undefined;
    enabled: boolean;
    autovalidateMode: AutovalidateMode;
    restorationId: string | undefined;
    key: IKey | undefined;
    createState: () => IFormFieldState<string>;
    createElement: () => IStatefulElement;
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
export class TextFormField implements IFormField<string>, IDiagnosticable {
    public readonly controller: ITextEditingController | undefined =
        undefined as any;
    public readonly onSaved: (
        newValue?: string | undefined
    ) => void | undefined = undefined as any;
    public readonly validator: (
        value?: string | undefined
    ) => string | undefined | undefined = undefined as any;
    public readonly builder: (field: IFormFieldState<string>) => IWidget =
        undefined as any;
    public readonly initialValue: string | undefined = undefined as any;
    public readonly enabled: boolean = undefined as any;
    public readonly autovalidateMode: AutovalidateMode = undefined as any;
    public readonly restorationId: string | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        autocorrect?: boolean;
        autofillHints?: IIterable<string> | undefined;
        autofocus?: boolean;
        autovalidateMode?: AutovalidateMode | undefined;
        buildCounter?: (
            context: IBuildContext,
            props: {
                currentLength: number;
                isFocused: boolean;
                maxLength?: number | undefined;
            }
        ) => IWidget | undefined | undefined;
        controller?: ITextEditingController | undefined;
        cursorColor?: IColor | undefined;
        cursorHeight?: number | undefined;
        cursorRadius?: IRadius | undefined;
        cursorWidth?: number;
        decoration?: IInputDecoration | undefined;
        enableIMEPersonalizedLearning?: boolean;
        enableInteractiveSelection?: boolean;
        enableSuggestions?: boolean;
        enabled?: boolean | undefined;
        expands?: boolean;
        focusNode?: IFocusNode | undefined;
        initialValue?: string | undefined;
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
        onFieldSubmitted?: (value: string) => void | undefined;
        onSaved?: (newValue?: string | undefined) => void | undefined;
        onTap?: () => void | undefined;
        readOnly?: boolean;
        restorationId?: string | undefined;
        scrollController?: IScrollController | undefined;
        scrollPadding?: IEdgeInsets;
        scrollPhysics?: IScrollPhysics | undefined;
        selectionControls?: ITextSelectionControls | undefined;
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
        validator?: (
            value?: string | undefined
        ) => string | undefined | undefined;
    }) {
        flutter.material.textFormField(this, {
            ...textFormFieldDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IFormFieldState<string> =
        undefined as any;
    private readonly _dart_createElement: () => IStatefulElement =
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
    public createState(): IFormFieldState<string> {
        return this._dart_createState();
    }
    public createElement(): IStatefulElement {
        return this._dart_createElement();
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
const textFormFieldDefaultProps = {
    autocorrect: true,
    autofocus: false,
    cursorWidth: 2.0,
    decoration: new InputDecoration(),
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
