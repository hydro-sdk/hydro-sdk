import { RuntimeBaseClass } from "./../../runtimeBaseClass";
import { JITAllocatingRTManagedBox } from "./../../syntheticBox";
import { Type } from "./../core/type";

export interface TextRangeProps {
    start: number;
    end: number;
}

declare const dart: {
    ui: {
        textRange: (this: void, props: TextRangeProps) => TextRange;
    };
};

export class TextRange
    extends JITAllocatingRTManagedBox<TextRangeProps, TextRange>
    implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(TextRange);
    public props: TextRangeProps;
    public constructor(props: TextRangeProps) {
        super();
        this.props = props;
    }

    public static collapsed(offset: number) {
        return new TextRange({
            start: offset,
            end: offset,
        });
    }

    public static empty = new TextRange({ start: -1, end: -1 });

    public unwrap() {
        return dart.ui.textRange(this.props);
    }
}
