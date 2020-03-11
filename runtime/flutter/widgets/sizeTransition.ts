import {Widget} from "../widget";
import {Animation} from "../animation/animation";

import {StatelessWidget} from "./statelessWidget";
import {Axis} from "./../painting/axis";
import { DartObject } from "../../dart/core";

interface SizeTransitionProps {
    axis: Axis;
    sizeFactor: Animation<number>;
    child: Widget;
}

declare const flutter: {
    widgets: {
        sizeTransition: (this: void, props: SizeTransitionProps) => SizeTransition;
    };
};

export class SizeTransition extends StatelessWidget  implements DartObject
{
    public readonly runtimeType = "SizeTransition";
    public props: SizeTransitionProps;
    public constructor(props: SizeTransitionProps) 
    {
        super();
        this.props = props;
    }

    public build(): Widget 
    {
        return flutter.widgets.sizeTransition(this.props);
    }
}