import { Widget } from "../widget";
import { DartObject } from "../../dart/core/object";
import { Color } from "../../dart/ui/color";

import { StatelessWidget } from "../widgets/statelessWidget";
import { BorderRadius } from "../painting/borderRadius";
import { Key } from "./../key";


interface InkWellProps {
    key?: Key | undefined;
    child: Widget;
    onTap: () => void;
    focusColor?: Color | undefined;
    hoverColor?: Color | undefined;
    highlightColor?: Color | undefined;
    splashColor?: Color | undefined;
    radius?: number | undefined;
    borderRadius?: BorderRadius | undefined;
    enableFeedback?: boolean | undefined;
    excludeFromSemantics?: boolean | undefined;
    canRequestFocus?: boolean | undefined;
    autoFocus?: boolean | undefined;
}

declare const flutter: {
    material: {
        inkWell: (this: void, props: InkWellProps) => InkWell;
    }
}

export class InkWell extends StatelessWidget implements Readonly<DartObject>{
    public readonly runtimeType = "InkWell";
    public props: InkWellProps;
    public constructor(props: InkWellProps) {
        super();
        this.props = props;

        if (this.props.enableFeedback === undefined) {
            this.props.enableFeedback = true;
        }

        if (this.props.excludeFromSemantics === undefined) {
            this.props.excludeFromSemantics = false;
        }

        if (this.props.canRequestFocus === undefined) {
            this.props.canRequestFocus = true;
        }

        if (this.props.autoFocus === undefined) {
            this.props.autoFocus = false;
        }
    }

    public build() {
        return flutter.material.inkWell(this.props);
    }
}