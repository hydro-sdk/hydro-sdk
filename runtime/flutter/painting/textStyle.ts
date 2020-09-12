import { JITAllocatingRTManagedBox } from "../../syntheticBox";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Type } from "../../dart/core/type";
import { Color } from "../../dart/ui/color";
import { FontWeight } from "../../dart/ui/fontWeight";
import { FontStyle } from "../../dart/ui/fontStyle";
import { TextBaseline } from "../../dart/ui/textBaseline";
import { TextDecorationStyle } from "../../dart/ui/textDecorationStyle";

export interface TextStyleProps {
    inherit?: boolean | undefined;
    color?: Color | undefined;
    backgroundColor?: Color | undefined;
    fontSize?: number | undefined;
    fontWeight?: FontWeight | undefined;
    fontStyle?: FontStyle | undefined;
    letterSpacing?: number | undefined;
    wordSpacing?: number | undefined;
    textBaseLine?: TextBaseline | undefined;
    height?: number | undefined;
    //@todo TextStyleProps#locale : Locale
    //@todo TextStyleProps#foreground : Paint
    //@todo TextStyleProps#background : Paint
    //@todo TextStyleProps#shadows : List<Shadow>
    //@todo TextStyleProps#fontFeatures : List<FontFeature>
    //@todo TextStyleProps#decoration : TextDecoration
    decorationColor?: Color | undefined;
    decorationStyle?: TextDecorationStyle | undefined;
    decorationThickness?: number | undefined;
    debugLabel?: string | undefined;
}

declare const flutter: {
    painting: {
        textStyle: (this: void, props: TextStyleProps) => TextStyle;
    };
};

export class TextStyle extends JITAllocatingRTManagedBox<TextStyleProps, TextStyle> implements RuntimeBaseClass {
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
