import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { CrossAxisAlignment } from "./../rendering/crossAxisAlignment";
import { MainAxisSize } from "./../rendering/mainAxisSize";
import { Widget } from "../widget";
import { MainAxisAlignment } from "./mainAxisAlignment";
import { StatelessWidget } from "./statelessWidget";

export interface ColumnProps {
    mainAxisAlignment?: MainAxisAlignment | undefined;
    mainAxisSize?: MainAxisSize | undefined;
    crossAxisAlignment?: CrossAxisAlignment | undefined;
    children: Array<Widget>;
}

declare const flutter: {
    widgets: {
        column: (this: void, props: ColumnProps) => Column;
    };
};

export class Column extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(Column);
    public props: ColumnProps;
    public constructor(props: ColumnProps) {
        super();
        this.props = props;

        if (!this.props.mainAxisAlignment) {
            this.props.mainAxisAlignment = MainAxisAlignment.start;
        }

        if (!this.props.mainAxisSize) {
            this.props.mainAxisSize = MainAxisSize.max;
        }

        if (!this.props.crossAxisAlignment) {
            this.props.crossAxisAlignment = CrossAxisAlignment.center;
        }
    }

    public build(): Widget {
        return flutter.widgets.column(this.props);
    }
}
