import { Widget } from "../widget";
import { DartObject } from "../../dart/core/object";

import { StatelessWidget } from "./statelessWidget";
import { MainAxisAlignment } from "./mainAxisAlignment";
import { MainAxisSize } from "./../rendering/mainAxisSize";
import { CrossAxisAlignment } from "./../rendering/crossAxisAlignment";
import { TextDirection } from "./../../dart/ui/textDirection";
import { VerticalDirection } from "./../painting/verticalDirection";
import { Color } from "./../../dart/ui/color";
import { Key } from "./../key";

interface ContainerProps {
    key?: Key | undefined;
    color?: Color | undefined;
}

declare const flutter: {
    widgets: {
        container: (this: void, props: ContainerProps) => Container;
    }
}

export class Container extends StatelessWidget implements Readonly<DartObject>{
    public readonly runtimeType = "Container";
    public props: ContainerProps;
    public constructor(props: ContainerProps) {
        super();
        this.props = props;
    }

    public build(): Widget {
        return flutter.widgets.container(this.props);
    }
}