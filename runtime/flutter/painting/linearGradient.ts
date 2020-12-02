import { JITAllocatingRTManagedBox } from "./../../syntheticBox";
import { Type } from "../../dart/core/type";
import { Color } from "../../dart/ui/color";
import { TileMode } from "../../dart/ui/tileMode";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Alignment } from "./alignment";

export interface LinearGradientProps {
    begin?: Alignment | undefined;
    end?: Alignment | undefined;
    colors: Array<Color>;
    stops?: Array<number> | undefined;
    tileMode?: TileMode | undefined;
}

declare const flutter: {
    painting: {
        linearGradient: (
            this: void,
            props: LinearGradientProps
        ) => LinearGradient;
    };
};

export class LinearGradient
    extends JITAllocatingRTManagedBox<LinearGradientProps, LinearGradient>
    implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(LinearGradient);
    public props: LinearGradientProps;
    public constructor(props: LinearGradientProps) {
        super();
        this.props = props;

        if (this.props.begin === undefined) {
            this.props.begin = Alignment.centerLeft;
        }

        if (this.props.end === undefined) {
            this.props.end = Alignment.centerRight;
        }

        if (this.props.tileMode === undefined) {
            this.props.tileMode = TileMode.clamp;
        }
    }

    public unwrap() {
        return flutter.painting.linearGradient(this.props);
    }
}
