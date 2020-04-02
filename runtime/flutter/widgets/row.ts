import {Widget} from "../widget";
import {DartObject} from "../../dart/core/object";

import {StatelessWidget} from "./statelessWidget";
import {MainAxisAlignment} from "./mainAxisAlignment";
import {MainAxisSize} from "./../rendering/mainAxisSize";
import {CrossAxisAlignment} from "./../rendering/crossAxisAlignment";
import {TextDirection} from "./../../dart/ui/textDirection";
import {VerticalDirection} from "./../painting/verticalDirection";
import {Key} from "./../key";

interface RowProps {
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

export class Row extends StatelessWidget implements Readonly<DartObject>
{
    public readonly runtimeType = "Row";
    public props: RowProps;
    public constructor(props: RowProps) 
    {
        super();
        this.props = props;

        if (this.props.mainAxisAlignment === undefined) 
        {
            this.props.mainAxisAlignment = MainAxisAlignment.start;
        }

        if (this.props.mainAxisSize === undefined) 
        {
            this.props.mainAxisSize = MainAxisSize.max;
        }

        if (this.props.crossAxisAlignment === undefined) 
        {
            this.props.crossAxisAlignment = CrossAxisAlignment.center;
        }

        if (this.props.verticalDirection === undefined) 
        {
            this.props.verticalDirection = VerticalDirection.down;
        }
    }

    public build(): Widget 
    {
        return flutter.widgets.row(this.props);
    }
}