import {Widget} from "../widget";
import {DartObject} from "../../dart/core/object";

import {StatelessWidget} from "./statelessWidget";
import {MainAxisAlignment} from "./mainAxisAlignment";
import {MainAxisSize} from "./../rendering/mainAxisSize";
import {CrossAxisAlignment} from "./../rendering/crossAxisAlignment";
import {TextDirection} from "./../../dart/ui/textDirection";
import {VerticalDirection} from "./../painting/verticalDirection";
import {Key} from "./../key";
import {JITAllocatingRTManagedBox} from "./../../syntheticBox";

interface ExpandedProps {
    key?: Key | undefined;
    flex?: number | undefined;
    child: Widget;
}

declare const flutter: {
    widgets: {
        expanded: (this: void, props: ExpandedProps) => Expanded;
    };
};

export class Expanded extends StatelessWidget implements Readonly<DartObject>
{
    public readonly runtimeType = "Expanded";
    public props: ExpandedProps;
    public constructor(props: ExpandedProps) 
    {
        super();
        this.props = props;

        if (this.props.flex === undefined) 
        {
            this.props.flex = 1;
        }
    }

    public build() 
    {
        return flutter.widgets.expanded(this.props);
    }
}