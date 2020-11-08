import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Type } from "../../dart/core/type";
import { List } from "../../dart/collection/list";
import { Radius } from "../../dart/ui/radius";
import { TextAlign } from "../../dart/ui/textAlign";
import { VoidCallback } from "../../dart/ui/voidCallback";
import { BoxHeightStyle } from "../../dart/ui/boxHeightStyle";
import { BoxWidthStyle } from "../../dart/ui/boxWidthStyle";
import { Color } from "../../dart/ui/color";
import { Brightness } from "../../dart/ui/brightness";
import { FontWeight } from "../../dart/ui/fontWeight";

import { Widget } from "./../widget";
import { Key } from "./../foundation/key";
import { ValueChanged } from "./../foundation/valueChanged";
import { StatelessWidget } from "./../widgets/statelessWidget";
import { TextEditingController } from "./../widgets/textEditingController";
import { FocusNode } from "./../widgets/focusNode";
import { ToolbarOptions } from "./../widgets/toolbarOptions";
import { ScrollPhysics } from "./../widgets/scrollPhysics";
import { BoxDecoration } from "./../painting/boxDecoration";
import { EdgeInsets } from "../painting/edgeInsets";
import { TextStyle } from "../painting/textStyle";
import { StrutStyle } from "../painting/strutStyle";
import { TextAlignVertical } from "../painting/textAlignVertical";
import { TextInputAction } from "../services/textInputAction";
import { TextCapitalization } from "../services/textCapitalization";
import { SmartDashesType } from "../services/smartDashesType";
import { SmartQuotesType } from "../services/smartQuotesType";
import { DragStartBehavior } from "../gestures/dragStartBehavior";
import { GestureTapCallback } from "../gestures/gestureTapCallback";
import { OverlayVisibilityMode } from "./overlayVisibilityMode";
import { CupertinoColors } from "./cupertinoColors";
import { kDefaultRoundedBorderDecoration } from "./constants";


export interface CupertinoTextFieldProps {
    key?: Key | undefined;
    controller?: TextEditingController | undefined;
    focusNode?: FocusNode | undefined;
    decoration?: BoxDecoration | undefined;
    padding?: EdgeInsets | undefined;
    placeholder?: string | undefined;
    placeholderStyle?: TextStyle | undefined;
    prefix?: Widget | undefined;
    prefixMode?: OverlayVisibilityMode | undefined;
    suffix?: Widget | undefined;
    suffixMode?: OverlayVisibilityMode | undefined;
    clearButtonMode?: OverlayVisibilityMode | undefined;
    //@todo CupertinoTextFieldProps#keyboardType : TextInputType
    textInputAction?: TextInputAction | undefined;
    textCapitalization?: TextCapitalization | undefined;
    style?: TextStyle | undefined;
    strutStyle?: StrutStyle | undefined;
    textAlign?: TextAlign | undefined;
    textAlignVertical?: TextAlignVertical | undefined;
    readOnly?: boolean | undefined;
    toolbarOptions?: ToolbarOptions | undefined;
    showCursor?: boolean | undefined;
    autofocus?: boolean | undefined;
    obscuringCharacter?: string | undefined;
    obscureText?: boolean | undefined;
    autocorrect?: boolean | undefined;
    smartDashesType?: SmartDashesType | undefined;
    smartQuotesType?: SmartQuotesType | undefined;
    enableSuggestions?: boolean | undefined;
    maxLines?: number | undefined;
    minLines?: number | undefined;
    expands?: boolean | undefined;
    maxLength?: number | undefined;
    maxLengthEnforced?: boolean | undefined;
    onChanged?: ValueChanged<string> | undefined;
    onEditingComplete?: VoidCallback | undefined;
    onSubmitted?: ValueChanged<string> | undefined;
    //@todo CupertinoTextFieldProps#inputFormatters : List<TextInputFormatter>
    enabled?: boolean | undefined;
    cursorWidth?: number | undefined;
    cursorRadius?: Radius | undefined;
    cursorColor?: Color | undefined;
    selectionHeightStyle?: BoxHeightStyle | undefined;
    selectionWidthStyle?: BoxWidthStyle | undefined;
    keyboardAppearance?: Brightness | undefined;
    scrollPadding?: EdgeInsets | undefined;
    dragStartBehavior?: DragStartBehavior | undefined;
    enableInteractiveSelection?: boolean | undefined;
    onTap?: GestureTapCallback | undefined;
    //@todo CupertinoTextFieldProps#scrollController : ScrollController
    scrollPhysics?: ScrollPhysics | undefined;
    autofillHints?: List<string> | undefined;
}

declare const flutter: {
    cupertino: {
        cupertinoTextField: (this: void, props: CupertinoTextFieldProps) => CupertinoTextField;
    }
}

export class CupertinoTextField extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(CupertinoTextField);
    public props: CupertinoTextFieldProps;
    public constructor(props: CupertinoTextFieldProps) {
        super();

        this.props = props;

        if (this.props.decoration === undefined) {
            this.props.decoration = kDefaultRoundedBorderDecoration;
        }

        if (this.props.padding === undefined) {
            this.props.padding = EdgeInsets.all(6.0);
        }

        if (this.props.placeholderStyle === undefined) {
            this.props.placeholderStyle = new TextStyle({
                fontWeight: FontWeight.w400,
                color: CupertinoColors.placeholderText.color,
            });
        }

        if (this.props.prefixMode === undefined) {
            this.props.prefixMode = OverlayVisibilityMode.always;
        }

        if (this.props.suffixMode === undefined) {
            this.props.suffixMode = OverlayVisibilityMode.always;
        }

        if (this.props.clearButtonMode === undefined) {
            this.props.clearButtonMode = OverlayVisibilityMode.never;
        }

        if (this.props.textCapitalization === undefined) {
            this.props.textCapitalization = TextCapitalization.none;
        }

        if (this.props.textAlign === undefined) {
            this.props.textAlign = TextAlign.start;
        }

        if (this.props.readOnly === undefined) {
            this.props.readOnly = false;
        }

        if (this.props.autofocus === undefined) {
            this.props.autofocus = false;
        }

        if (this.props.obscuringCharacter === undefined) {
            this.props.obscuringCharacter = "*";
        }

        if (this.props.obscureText === undefined) {
            this.props.obscureText = false;
        }

        if (this.props.autocorrect === undefined) {
            this.props.autocorrect = true;
        }

        if (this.props.enableSuggestions === undefined) {
            this.props.enableSuggestions = true;
        }

        if (this.props.maxLines === undefined) {
            this.props.maxLength = 1;
        }

        if (this.props.expands === undefined) {
            this.props.expands = false;
        }

        if (this.props.maxLengthEnforced === undefined) {
            this.props.maxLengthEnforced = true;
        }

        if (this.props.cursorWidth === undefined) {
            this.props.cursorWidth = 2.0;
        }

        if (this.props.cursorRadius === undefined) {
            this.props.cursorRadius = Radius.circular(2.0);
        }

        if (this.props.selectionHeightStyle === undefined) {
            this.props.selectionHeightStyle = BoxHeightStyle.tight;
        }

        if (this.props.selectionWidthStyle === undefined) {
            this.props.selectionWidthStyle = BoxWidthStyle.tight;
        }

        if (this.props.scrollPadding === undefined) {
            this.props.scrollPadding = EdgeInsets.all(20.0);
        }

        if (this.props.dragStartBehavior === undefined) {
            this.props.dragStartBehavior = DragStartBehavior.start;
        }

        if (this.props.enableInteractiveSelection === undefined) {
            this.props.enableInteractiveSelection = true;
        }
    }

    public build() {
        return flutter.cupertino.cupertinoTextField(this.props);
    }
}
