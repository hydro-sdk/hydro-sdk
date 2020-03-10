import { Widget } from "../widget";

import { StatelessWidget } from "./statelessWidget";
import { MainAxisAlignment } from "./mainAxisAlignment";
import { MainAxisSize } from "./../rendering/mainAxisSize";
import { CrossAxisAlignment } from "./../rendering/crossAxisAlignment";

interface ColumnProps {
    mainAxisAlignment?: MainAxisAlignment | undefined;
    mainAxisSize?: MainAxisSize | undefined;
    crossAxisAlignment?: CrossAxisAlignment | undefined;
    children: Array<Widget>;
}

declare const flutter: {
    widgets: {
        column: (this: void, props: ColumnProps) => { tag: string };
    };
};

export class Column extends StatelessWidget {
    public props: ColumnProps;
    public constructor(props: ColumnProps) {
        super();
        this.props = props;

        if (!this.props.mainAxisAlignment) {
            this.props.mainAxisAlignment = MainAxisAlignment.start;
        }
    }

    public build(): Widget {
        return flutter.widgets.column(this.props);
    }
}