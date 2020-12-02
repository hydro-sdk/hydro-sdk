import { EdgeInsets } from "./../../flutter/painting/edgeInsets";
import { TextStyle } from "./../../flutter/painting/textStyle";
import { BoxConstraints } from "./../../flutter/rendering/boxConstraints";
import { Type } from "../../dart/core/type";
import { Color } from "../../dart/ui/color";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { JITAllocatingRTManagedBox } from "../../syntheticBox";
import { Widget } from "../widget";
import { FloatingLabelBehavior } from "./floatingLabelBehavior";
import { InputBorder } from "./inputBorder";

export interface InputDecorationProps {
    icon?: Widget | undefined;
    labelText?: string | undefined;
    labelStyle?: TextStyle | undefined;
    helperText?: string | undefined;
    helperStyle?: TextStyle | undefined;
    helperMaxLines?: number | undefined;
    hintText?: string | undefined;
    hintStyle?: TextStyle | undefined;
    hintMaxLines?: number | undefined;
    errorText?: string | undefined;
    errorStyle?: TextStyle | undefined;
    errorMaxLines?: number | undefined;
    floatingLabelBehavior?: FloatingLabelBehavior | undefined;
    isDense?: boolean | undefined;
    contentPadding?: EdgeInsets | undefined;
    prefixIcon?: Widget | undefined;
    prefixIconConstraints?: BoxConstraints | undefined;
    prefix?: Widget | undefined;
    prefixText?: string | undefined;
    prefixStyle?: TextStyle | undefined;
    suffixIcon?: Widget | undefined;
    suffix?: Widget | undefined;
    suffixText?: string | undefined;
    suffixStyle?: TextStyle | undefined;
    suffixIconConstraints?: BoxConstraints | undefined;
    counter?: Widget | undefined;
    counterText?: string | undefined;
    counterStyle?: TextStyle | undefined;
    filled?: boolean | undefined;
    fillColor?: Color | undefined;
    focusColor?: Color | undefined;
    hoverColor?: Color | undefined;
    errorBorder?: InputBorder | undefined;
    focusedBorder?: InputBorder | undefined;
    focusedErrorBorder?: InputBorder | undefined;
    disabledBorder?: InputBorder | undefined;
    enabledBorder?: InputBorder | undefined;
    border?: InputBorder | undefined;
    enabled?: boolean | undefined;
    semanticCounterText?: string | undefined;
    alignLabelWithHint?: boolean | undefined;
}

declare const flutter: {
    material: {
        inputDecoration: (
            this: void,
            props: InputDecorationProps
        ) => InputDecoration;
    };
};

export class InputDecoration
    extends JITAllocatingRTManagedBox<InputDecorationProps, InputDecoration>
    implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(InputDecoration);
    public props: InputDecorationProps;

    public constructor(props: InputDecorationProps) {
        super();

        this.props = props;

        if (this.props.floatingLabelBehavior === undefined) {
            this.props.floatingLabelBehavior = FloatingLabelBehavior.auto;
        }

        if (this.props.enabled === undefined) {
            this.props.enabled = true;
        }
    }

    public unwrap() {
        return flutter.material.inputDecoration(this.props);
    }
}
