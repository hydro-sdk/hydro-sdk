import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { JITAllocatingRTManagedBox } from "../../syntheticBox";
import { TextStyle } from "../painting/textStyle";
import { InlineSpan } from "./inlineSpan";

export interface TextSpanProps {
    text?: string | undefined;
    children?: Array<InlineSpan> | undefined;
    style?: TextStyle | undefined;
    semanticsLabel?: string | undefined;
}

declare const flutter: {
    painting: {
        textSpan: (this: void, props: TextSpanProps) => TextSpan;
    };
};

export class TextSpan
    extends JITAllocatingRTManagedBox<TextSpanProps, TextSpan>
    implements InlineSpan, RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(TextSpan);
    public props: TextSpanProps;
    public constructor(props: TextSpanProps) {
        super();
        this.props = props;
    }

    public unwrap(): TextSpan {
        return flutter.painting.textSpan(this.props);
    }
}
