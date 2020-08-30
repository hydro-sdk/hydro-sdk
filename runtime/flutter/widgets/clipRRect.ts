import {Widget} from "../widget";
import {Clip} from "../painting/clip";
import {BorderRadius} from "../painting/borderRadius";
import {RuntimeBaseClass} from "../../runtimeBaseClass";
import {Type} from "../../dart/core/type";

import {StatelessWidget} from "./statelessWidget";
import {Key} from "./../foundation/key";


export interface ClipRRectProps {
    key?: Key | undefined;
    borderRadius: BorderRadius | undefined;
    clipBehavior?: Clip | undefined;
    child: Widget;
}

declare const flutter: {
    widgets: {
        clipRRect: (this: void, props: ClipRRectProps) => ClipRRect;
    };
};

export class ClipRRect extends StatelessWidget implements RuntimeBaseClass 
{
    public readonly internalRuntimeType = new Type(ClipRRect);
    public props: ClipRRectProps;
    public constructor(props: ClipRRectProps) 
    {
        super();
        this.props = props;

        if (this.props.clipBehavior === undefined) 
        {
            this.props.clipBehavior = Clip.antiAlias;
        }
    }

    public build(): Widget 
    {
        return flutter.widgets.clipRRect(this.props);
    }
}