import {Widget} from "../widget";

import {StatelessWidget} from "./statelessWidget";
import {Key} from "./../foundation/key";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Type } from "../../dart/core/type";

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

export class Expanded extends StatelessWidget implements RuntimeBaseClass
{
    public readonly internalRuntimeType = new Type(Expanded);
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