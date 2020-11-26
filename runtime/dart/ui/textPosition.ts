import { RuntimeBaseClass } from "./../../runtimeBaseClass";
import { JITAllocatingRTManagedBox } from "./../../syntheticBox";
import { Type } from "./../core/type";
import { TextAffinity } from "./textAffinity";

export interface TextPositionProps {
    offset: number;
    affinity?: TextAffinity | undefined;
}

declare const dart: {
    ui: {
        textPosition: (this: void, props: TextPositionProps) => TextPosition;
    };
};

export class TextPosition
    extends JITAllocatingRTManagedBox<TextPositionProps, TextPosition>
    implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(TextPosition);
    public props: TextPositionProps;
    public constructor(props: TextPositionProps) {
        super();
        this.props = props;

        if (this.props.affinity === undefined) {
            this.props.affinity = TextAffinity.downstream;
        }
    }

    public unwrap() {
        return dart.ui.textPosition(this.props);
    }
}
