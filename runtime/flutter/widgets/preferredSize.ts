import {Widget} from "../widget";
import {DartObject} from "../../dart/core/object";

import {StatelessWidget} from "./statelessWidget";
import {Size} from "./../../dart/ui/size";

interface PreferredSizeProps {
    child: Widget;
    preferredSize:Size;
}

declare const flutter: {
    widgets: {
        preferredSize: (this: void, props: PreferredSizeProps) => PreferredSize;
    };
};

export class PreferredSize extends StatelessWidget implements Readonly<DartObject>
{
    public readonly runtimeType = "PreferredSize";
    public props: PreferredSizeProps;
    public constructor(props: PreferredSizeProps) 
    {
        super();
        this.props = props;
    }

    private preferredSize = () => this.props.preferredSize;

    public build(): PreferredSize 
    {
        return flutter.widgets.preferredSize(this.props);
    }
}