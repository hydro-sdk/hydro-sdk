import {Widget} from "../widget";
import {Key} from "../key";

import {StatelessWidget} from "./statelessWidget";

interface CenterProps {
    key?: Key;
    child: Widget;
}

declare const flutter: {
    widgets: {
        center: (this: void, props: CenterProps) => { tag: string };
    };
};

export class Center extends StatelessWidget 
{
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
