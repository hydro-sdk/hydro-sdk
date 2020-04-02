import { Widget } from "../widget";
import { DartObject } from "../../dart/core/object";

import { FlexFit } from "./../rendering/flexFit";
import { StatelessWidget } from "./statelessWidget";
import { MainAxisAlignment } from "./mainAxisAlignment";
import { MainAxisSize } from "./../rendering/mainAxisSize";
import { CrossAxisAlignment } from "./../rendering/crossAxisAlignment";
import { TextDirection } from "./../../dart/ui/textDirection";
import { VerticalDirection } from "./../painting/verticalDirection";
import { Key } from "./../key";

interface FlexibleProps {
    key?: Key | undefined;
    flex?: number | undefined;
    fit?: FlexFit | undefined;
    child: Widget;
}

declare const flutter: {
    widgets: {
        flexible: (this: void, props: FlexibleProps) => Flexible;
    }
}

export class Flexible extends StatelessWidget implements Readonly<DartObject>{
    public readonly runtimeType = "Flexible";
    public props: FlexibleProps;
    public constructor(props: FlexibleProps) {
        super();
        this.props = props;

        if (this.props.flex === undefined) {
            this.props.flex = 1;
        }

        if (this.props.fit === undefined) {
            this.props.fit = FlexFit.loose;
        }
    }

    public build(): Widget {
        return flutter.widgets.flexible(this.props);
    }
}