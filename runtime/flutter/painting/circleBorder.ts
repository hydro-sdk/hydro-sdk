import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { JITAllocatingRTManagedBox } from "../../syntheticBox";
import { BorderSide } from "./borderSide";

export interface CircleBorderProps {
    side?: BorderSide | undefined;
}

declare const flutter: {
    painting: {
        circleBorder: (this: void, props: CircleBorderProps) => CircleBorder;
    };
};

export class CircleBorder
    extends JITAllocatingRTManagedBox<CircleBorderProps, CircleBorder>
    implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(CircleBorder);
    public props: CircleBorderProps;
    public constructor(props: CircleBorderProps) {
        super();
        this.props = props;

        if (this.props.side === undefined) {
            this.props.side = BorderSide.none;
        }
    }

    public unwrap(): CircleBorder {
        return flutter.painting.circleBorder(this.props);
    }
}
