import {Widget} from "../widget";

import {StatelessWidget} from "./statelessWidget";
import {IconData} from "./iconData";

interface IconProps {
    size?: number | undefined;
}

declare const flutter: {
    widgets: {
        icon: (this: void, icon: IconData, props?: IconProps | undefined) => Icon;
    };
};

export class Icon extends StatelessWidget 
{
    public icon: IconData;
    public props: IconProps | undefined;
    public constructor(icon: IconData, props?: IconProps | undefined) 
    {
        super();
        this.icon = icon;
        this.props = props;
    }
    public build(): Widget 
    {
        return flutter.widgets.icon(this.icon,this.props);
    }
}