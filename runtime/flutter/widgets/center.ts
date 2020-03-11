import {Widget} from "../widget";
import {Key} from "../key";

import {StatelessWidget} from "./statelessWidget";
import { DartObject } from "../../dart/core";

interface CenterProps {
    key?: Key;
    child: Widget;
}

declare const flutter: {
    widgets: {
        center: (this: void, props: CenterProps) => { tag: string };
    };
};

export class Center extends StatelessWidget  implements DartObject
{
    public readonly runtimeType = "Center";
    public props: CenterProps;
    public constructor(props: CenterProps) 
    {
        super();
        this.props = props;
    }

    public build(): Widget 
    {
        return flutter.widgets.center(this.props);
    }
}
