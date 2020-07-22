import { TextDirection } from "./../../dart/ui/textDirection";
import { TextAlign } from "./../../dart/ui/textAlign";
import { Radius } from "./../../dart/ui/radius";
import { Color } from "./../../dart/ui/color";
import { Brightness } from "./../../dart/ui/brightness";
import { VoidCallback } from "./../../dart/ui/voidCallback";

import { Key } from "./../foundation/key";
import { ValueChanged } from "./../foundation/valueChanged";
import { GestureTapCallback } from "./../gestures/gestureTapCallback";
import { TextEditingController } from "./../widgets/textEditingController";
import { ToolbarOptions } from "./../widgets/toolbarOptions";
import { FormFieldValidator } from "./../widgets/formFieldValidator";
import { FormFieldSetter } from "./../widgets/formFieldSetter";
import { TextStyle } from "./../painting/textStyle";
import { TextAlignVertical } from "./../painting/textAlignVertical";
import { EdgeInsets } from "./../painting/edgeInsets";
import {StrutStyle } from "./../painting/strutStyle";
import { TextInputAction } from "./../services/textInputAction";
import { TextCapitalization } from "./../services/textCapitalization";
import { SmartDashesType } from "./../services/smartDashesType";
import { SmartQuotesType } from "./../services/smartQuotesType";

import { InputDecoration } from "./inputDecoration";
import { InputCounterWidgetBuilder } from "./inputCounterWidgetBuilder";

interface TextFormFieldProps {
    key?: Key | undefined;
    controller?: TextEditingController | undefined;
    initialValue?: string | undefined;
    // focusNode
    decoration?: InputDecoration | undefined;
    // keyboardType
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
    // inputFormatters
    enabled?: boolean | undefined;
    cursorWidth?: number | undefined;
    cursorRadius?: Radius | undefined;
    cursorColor?: Color | undefined;
    keyboardAppearance?: Brightness | undefined;
    scrollPadding?: EdgeInsets | undefined;
    enableInteractiveSelection?: boolean | undefined;
    buildCounter?: InputCounterWidgetBuilder | undefined;
    //  scrollPhysics
}