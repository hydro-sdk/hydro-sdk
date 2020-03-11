import {Widget} from "../widget";

import {StatelessWidget} from "./statelessWidget";

interface PreferredSizeProps {
    child: Widget;
}

declare const flutter: {
    widgets: {
        preferredSize: (this: void, props: PreferredSizeProps) => PreferredSize;
    };
};

export class PreferredSize extends StatelessWidget 
{
    public readonly runtimeType = "PreferredSize";
    public props: PreferredSizeProps;
    public constructor(props: PreferredSizeProps) 
    {
        super();
        this.props = props;
    }

    public build(): PreferredSize 
    {
        return flutter.widgets.preferredSize(this.props);
    }
}