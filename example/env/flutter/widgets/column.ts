import { StatelessWidget } from "./statelessWidget";
import { Widget } from "../widget";

interface ColumnProps {
    children: Array<Widget>;
}

declare const flutter: {
    widgets: {
        column: (this: void, props: ColumnProps) => { tag: string };
    }
}

export class Column extends StatelessWidget {
    public props: ColumnProps;
    public constructor(props: ColumnProps) {
        super();
        this.props = props;
    }

    public build(): Widget {
        return flutter.widgets.column(this.props);
    }
}