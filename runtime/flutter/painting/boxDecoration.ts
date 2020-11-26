import { Color } from "./../../dart/ui/color";
import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { JITAllocatingRTManagedBox } from "../../syntheticBox";
import { Gradient } from "../painting/gradient";
import { BorderRadius } from "./borderRadius";
import { BoxShape } from "./boxShape";

export interface BoxDecorationProps {
    color?: Color | undefined;
    shape?: BoxShape | undefined;
    borderRadius?: BorderRadius | undefined;
    gradient?: Gradient | undefined;
}

declare const flutter: {
    painting: {
        boxDecoration: (this: void, props: BoxDecorationProps) => BoxDecoration;
    };
};

export class BoxDecoration
    extends JITAllocatingRTManagedBox<BoxDecorationProps, BoxDecoration>
    implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(BoxDecoration);
    public props: BoxDecorationProps;
    public constructor(props: BoxDecorationProps) {
        super();
        this.props = props;

        if (this.props.shape === undefined) {
            this.props.shape = BoxShape.rectangle;
        }
    }

    public unwrap(): BoxDecoration {
        return flutter.painting.boxDecoration(this.props);
    }
}
