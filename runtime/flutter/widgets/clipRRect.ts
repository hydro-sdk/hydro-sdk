import {Widget} from "../widget";
import {DartObject} from "../../dart/core/object";
import {Clip} from "../painting/clip";
import {BorderRadius} from "../painting/borderRadius";

import {StatelessWidget} from "./statelessWidget";
import {Key} from "./../foundation/key";


interface ClipRRectProps {
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

export class ClipRRect extends StatelessWidget implements Readonly<DartObject>
{
    public readonly runtimeType = "ClipRRect";
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