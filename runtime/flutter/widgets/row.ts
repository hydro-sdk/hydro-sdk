import { TextDirection } from "./../../dart/ui/textDirection";
import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Key } from "./../foundation/key";
import { VerticalDirection } from "./../painting/verticalDirection";
import { CrossAxisAlignment } from "./../rendering/crossAxisAlignment";
import { MainAxisSize } from "./../rendering/mainAxisSize";
import { Widget } from "../widget";
import { MainAxisAlignment } from "./mainAxisAlignment";
import { StatelessWidget } from "./statelessWidget";

export interface RowProps {
    key?: Key | undefined;
    mainAxisAlignment?: MainAxisAlignment | undefined;
    mainAxisSize?: MainAxisSize | undefined;
    crossAxisAlignment?: CrossAxisAlignment | undefined;
    textDirection?: TextDirection | undefined;
    verticalDirection?: VerticalDirection | undefined;
    children: Array<Widget>;
}

declare const flutter: {
    widgets: {
        row: (this: void, props: RowProps) => Row;
    };
};

export class Row extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(Row);
    public props: RowProps;
    public constructor(props: RowProps) {
        super();
        this.props = props;

        if (this.props.mainAxisAlignment === undefined) {
            this.props.mainAxisAlignment = MainAxisAlignment.start;
        }

        if (this.props.mainAxisSize === undefined) {
            this.props.mainAxisSize = MainAxisSize.max;
        }

        if (this.props.crossAxisAlignment === undefined) {
            this.props.crossAxisAlignment = CrossAxisAlignment.center;
        }

        if (this.props.verticalDirection === undefined) {
            this.props.verticalDirection = VerticalDirection.down;
        }
    }

    public build(): Widget {
        return flutter.widgets.row(this.props);
    }
}
