import { JITAllocatingRTManagedBox } from "../../syntheticBox";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Type } from "../../dart/core/type";

import { Color } from "./../../dart/ui/color";
import { BorderStyle } from "./borderStyle";
import { BorderSide } from "./borderSide";

export interface BorderProps {
    top?: BorderSide | undefined;
    right?: BorderSide | undefined;
    bottom?: BorderSide | undefined;
    left?: BorderSide | undefined;
}

declare const flutter: {
    painting: {
        border: (this: void, props: BorderProps) => Border;
    }
}

export class Border extends JITAllocatingRTManagedBox<BorderProps, Border> implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(Border);
    public props: BorderProps;
    public constructor(props: BorderProps) {
        super();
        this.props = props;

        if (this.props.top === undefined) {
            this.props.top = BorderSide.none;
        }

        if (this.props.right === undefined) {
            this.props.right = BorderSide.none;
        }

        if (this.props.bottom === undefined) {
            this.props.bottom = BorderSide.none;
        }

        if (this.props.left === undefined) {
            this.props.left = BorderSide.none;
        }
    }

    public static all(props: {
        color?: Color | undefined;
        width?: number | undefined;
        style?: BorderStyle | undefined;
    }) {
        if (props.color === undefined) {
            props.color = new Color(0xFF000000);
        }

        if (props.width === undefined) {
            props.width = 1.0;
        }

        if (props.style === undefined) {
            props.style = BorderStyle.solid;
        }

        return Border.fromBorderSide(new BorderSide({
            color: props.color,
            width: props.width,
            style: props.style,
        }));
    }

    public static fromBorderSide(side: BorderSide) {
        return new Border({
            top: side,
            right: side,
            bottom: side,
            left: side,
        });
    }

    public static symmetric(props: {
        vertical?: BorderSide | undefined;
        horizontal?: BorderSide | undefined;
    }) {
        if (props.vertical === undefined) {
            props.vertical = BorderSide.none;
        }

        if (props.horizontal === undefined) {
            props.horizontal = BorderSide.none;
        }

        return new Border({
            left: props.horizontal,
            top: props.vertical,
            right: props.horizontal,
            bottom: props.vertical,
        });
    }

    public unwrap() {
        return flutter.painting.border(this.props);
    }
}