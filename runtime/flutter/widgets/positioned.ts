import { Key } from "../key";
import { Widget } from "../widget";
import { StatelessWidget } from "./statelessWidget";
import { DartObject } from "../../dart/core/object";

interface PositionedProps {
    key?: Key | undefined;
    left?: number | undefined;
    top?: number | undefined;
    right?: number | undefined;
    bottom?: number | undefined;
    width?: number | undefined;
    height?: number | undefined;
    child: Widget;
}

declare const flutter: {
    widgets: {
        positioned: (this: void, props:PositionedProps) => Positioned;
    }
}

export class Positioned extends StatelessWidget implements Readonly<DartObject>{
    public readonly runtimeType = "Positioned";
    public props: PositionedProps;
    public constructor(props: PositionedProps) {
        super();
        this.props = props;
    }

    public build(): Widget {
        return flutter.widgets.positioned(this.props);
    }
}