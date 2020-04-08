import { Widget } from "../widget";
import { DartObject } from "../../dart/core/object";
import { Color } from "../../dart/ui/color";
import { TileMode } from "../../dart/ui/tileMode";

import { MainAxisSize } from "./../rendering/mainAxisSize";
import { CrossAxisAlignment } from "./../rendering/crossAxisAlignment";
import { TextDirection } from "./../../dart/ui/textDirection";
import { VerticalDirection } from "./../painting/verticalDirection";
import { Key } from "./../key";
import { JITAllocatingRTManagedBox } from "./../../syntheticBox";
import { Alignment } from "./alignment";

interface LinearGradientProps {
    begin?: Alignment | undefined;
    end?: Alignment | undefined;
    colors: Array<Color>;
    stops?: Array<number> | undefined;
    tileMode?: TileMode | undefined;
}

declare const flutter: {
    painting: {
        linearGradient: (this: void, props: LinearGradientProps) => LinearGradient;
    }
}

export class LinearGradient extends JITAllocatingRTManagedBox<LinearGradientProps, LinearGradient> implements Readonly<DartObject>{
    public readonly runtimeType = "Gradient";
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