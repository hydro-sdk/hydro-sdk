import { Widget } from "../widget";
import { DartObject } from "../../dart/core/object";

import { StatelessWidget } from "./statelessWidget";
import { MainAxisAlignment } from "./mainAxisAlignment";
import { MainAxisSize } from "./../rendering/mainAxisSize";
import { CrossAxisAlignment } from "./../rendering/crossAxisAlignment";
import { TextDirection } from "./../../dart/ui/textDirection";
import { VerticalDirection } from "./../painting/verticalDirection";
import { Key } from "./../key";

interface SpacerProps {
    key?: Key | undefined;
    flex?: number | undefined;
}

declare const flutter: {
    widgets: {
        spacer: (this: void, props: SpacerProps) => Spacer;
    }
}

export class Spacer extends StatelessWidget implements Readonly<DartObject>{
    public readonly runtimeType = "Spacer";
    public props: SpacerProps;
    public constructor(props: SpacerProps) {
        super();
        this.props = props;

        if (this.props.flex === undefined) {
            this.props.flex = 1;
        }
    }

    public build(): Widget {
        return flutter.widgets.spacer(this.props);
    }
}