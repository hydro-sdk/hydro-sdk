import { Type } from "../../dart/core/type";
import { Color } from "../../dart/ui/color";
import { FontWeight } from "../../dart/ui/fontWeight";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { JITAllocatingRTManagedBox } from "../../syntheticBox";

export interface TextStyleProps {
    fontSize?: number | undefined;
    color?: Color | undefined;
    fontWeight?: FontWeight | undefined;
}

declare const flutter: {
    painting: {
        textStyle: (this: void, props: TextStyleProps) => TextStyle;
    };
};

export class TextStyle
    extends JITAllocatingRTManagedBox<TextStyleProps, TextStyle>
    implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(TextStyle);
    public props: TextStyleProps;
    public color?: Color;
    public constructor(props: TextStyleProps) {
        super();
        this.props = props;
    }

    public copyWith(props: { color: Color }): TextStyle {
        return {} as any;
    }

    public apply(props: {
        color?: Color;
        fontWeightDelta?: number;
    }): TextStyle {
        return {} as any;
    }

    public unwrap(): TextStyle {
        return flutter.painting.textStyle(this.props);
    }
}
