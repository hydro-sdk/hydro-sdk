import { Brightness } from "./../../dart/ui/brightness";
import { Color } from "./../../dart/ui/color";
import { Radius } from "./../../dart/ui/radius";
import { TextAlign } from "./../../dart/ui/textAlign";
import { TextDirection } from "./../../dart/ui/textDirection";
import { VoidCallback } from "./../../dart/ui/voidCallback";
import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Key } from "./../foundation/key";
import { ValueChanged } from "./../foundation/valueChanged";
import { GestureTapCallback } from "./../gestures/gestureTapCallback";
import { EdgeInsets } from "./../painting/edgeInsets";
import { StrutStyle } from "./../painting/strutStyle";
import { TextAlignVertical } from "./../painting/textAlignVertical";
import { TextStyle } from "./../painting/textStyle";
import { SmartDashesType } from "./../services/smartDashesType";
import { SmartQuotesType } from "./../services/smartQuotesType";
import { TextCapitalization } from "./../services/textCapitalization";
import { TextInputAction } from "./../services/textInputAction";
import { FormFieldSetter } from "./../widgets/formFieldSetter";
import { FormFieldValidator } from "./../widgets/formFieldValidator";
import { StatelessWidget } from "./../widgets/statelessWidget";
import { TextEditingController } from "./../widgets/textEditingController";
import { ToolbarOptions } from "./../widgets/toolbarOptions";
import { InputCounterWidgetBuilder } from "./inputCounterWidgetBuilder";
import { InputDecoration } from "./inputDecoration";

export interface TextFormFieldProps {
    key?: Key | undefined;
    controller?: TextEditingController | undefined;
    initialValue?: string | undefined;
    //@todo TextFormFieldProps#focusNode : FocusNode
    decoration?: InputDecoration | undefined;
    //@todo TextFormFieldProps#keyboardType : TextInputType
    textCapitalization?: TextCapitalization | undefined;
    textInputAction?: TextInputAction | undefined;
    style?: TextStyle | undefined;
    strutStyle?: StrutStyle | undefined;
    textDirection?: TextDirection | undefined;
    textAlign?: TextAlign | undefined;
    textAlignVertical?: TextAlignVertical | undefined;
    autofocus?: boolean | undefined;
    readOnly?: boolean | undefined;
    toolbarOptions?: ToolbarOptions | undefined;
    showCursor?: boolean | undefined;
    obscureText?: boolean | undefined;
    autocorrect?: boolean | undefined;
    smartDashesType?: SmartDashesType | undefined;
    smartQuotesType?: SmartQuotesType | undefined;
    enableSuggestions?: boolean | undefined;
    autovalidate?: boolean | undefined;
    maxLengthEnforced?: boolean | undefined;
    maxLines?: number | undefined;
    minLines?: number | undefined;
    expands?: boolean | undefined;
    maxLength?: number | undefined;
    onChanged?: ValueChanged<string> | undefined;
    onTap?: GestureTapCallback | undefined;
    onEditingComplete?: VoidCallback | undefined;
    onFieldSubmitted?: ValueChanged<string> | undefined;
    onSaved?: FormFieldSetter<string> | undefined;
    validator?: FormFieldValidator<string> | undefined;
    //@todo TextFormFieldProps#inputFormatters : List<TextInputFormatter>
    enabled?: boolean | undefined;
    cursorWidth?: number | undefined;
    cursorRadius?: Radius | undefined;
    cursorColor?: Color | undefined;
    keyboardAppearance?: Brightness | undefined;
    scrollPadding?: EdgeInsets | undefined;
    enableInteractiveSelection?: boolean | undefined;
    buildCounter?: InputCounterWidgetBuilder | undefined;
    //@todo TextFormFieldProps#scrollPhysics : ScrollPhysics
}

declare const flutter: {
    material: {
        textFormField: (this: void, props: TextFormFieldProps) => TextFormField;
    };
};

export class TextFormField extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(TextFormField);
    public props: TextFormFieldProps;
    public constructor(props: TextFormFieldProps) {
        super();

        this.props = props;

        if (this.props.decoration === undefined) {
            this.props.decoration = new InputDecoration({});
        }

        if (this.props.textCapitalization === undefined) {
            this.props.textCapitalization = TextCapitalization.none;
        }

        if (this.props.textAlign === undefined) {
            this.props.textAlign = TextAlign.start;
        }

        if (this.props.autofocus === undefined) {
            this.props.autofocus = false;
        }

        if (this.props.readOnly === undefined) {
            this.props.readOnly = false;
        }

        if (this.props.obscureText === undefined) {
            this.props.obscureText = false;
        }

        if (this.props.enableSuggestions === undefined) {
            this.props.enableSuggestions = true;
        }
        if (this.props.autocorrect === undefined) {
            this.props.autocorrect = true;
        }

        if (this.props.autovalidate === undefined) {
            this.props.autovalidate = false;
        }

        if (this.props.maxLengthEnforced === undefined) {
            this.props.maxLengthEnforced = true;
        }

        if (this.props.maxLines === undefined) {
            this.props.maxLines = 1;
        }

        if (this.props.expands === undefined) {
            this.props.expands = false;
        }

        if (this.props.enabled === undefined) {
            this.props.enabled = true;
        }

        if (this.props.cursorWidth === undefined) {
            this.props.cursorWidth = 2.0;
        }

        if (this.props.scrollPadding === undefined) {
            this.props.scrollPadding = EdgeInsets.all(20.0);
        }

        if (this.props.enableInteractiveSelection === undefined) {
            this.props.enableInteractiveSelection = true;
        }
    }

    public build() {
        return flutter.material.textFormField(this.props);
    }
}
