import { JITAllocatingRTManagedBox } from "./../../syntheticBox";
import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Widget } from "../widget";

export interface TextAlignVerticalProps {
    y: number;
}

declare const flutter: {
    widgets: {
        TextAlignVertical: (
            this: void,
            props: TextAlignVerticalProps
        ) => TextAlignVertical;
    };
};

export class TextAlignVertical
    extends JITAllocatingRTManagedBox<TextAlignVerticalProps, TextAlignVertical>
    implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(TextAlignVertical);
    public props: TextAlignVerticalProps;
    public constructor(props: TextAlignVerticalProps) {
        super();
        this.props = props;
    }

    public static bottom = new TextAlignVertical({ y: 1.0 });
    public static center = new TextAlignVertical({ y: 0.0 });
    public static top = new TextAlignVertical({ y: -1.0 });

    public unwrap() {
        return flutter.widgets.TextAlignVertical(this.props);
    }
}
