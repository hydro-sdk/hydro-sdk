import { DartObject } from "../../dart/core/object";

import { Color } from "./../../dart/ui/color";
import { BoxShape } from "./boxShape";
import { JITAllocatingRTManagedBox } from "../../syntheticBox";

interface BoxDecorationProps {
    color?: Color | undefined;
    shape?: BoxShape | undefined;
}

declare const flutter: {
    painting: {
        boxDecoration: (this: void, props: BoxDecorationProps) => BoxDecoration;
    }
}

export class BoxDecoration extends JITAllocatingRTManagedBox<BoxDecorationProps, BoxDecoration> implements Readonly<DartObject>{
    public readonly runtimeType = "BoxDecoration";
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