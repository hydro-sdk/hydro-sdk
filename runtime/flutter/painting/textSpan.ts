import { InlineSpan } from "./inlineSpan";
import { TextStyle } from "../package/textStyle";
import { Widget } from "../widget";
import { JITAllocatingRTManagedBox } from "../../syntheticBox";

interface TextSpanProps {
    text?: string | undefined;
    children?: Array<InlineSpan> | undefined;
    style?: TextStyle | undefined;
    semanticsLabel?: string | undefined;
}

declare const flutter: {
    painting: {
        textSpan: (this: void, props: TextSpanProps) => TextSpan;
    }
}

export class TextSpan extends JITAllocatingRTManagedBox<TextSpanProps, TextSpan> implements InlineSpan {
    public readonly runtimeType = "InlineSpan";
    public props: TextSpanProps;
    public constructor(props: TextSpanProps) {
        super();
        this.props = props;
    }

    public unwrap(): TextSpan {
        return flutter.painting.textSpan(this.props);
    }
}