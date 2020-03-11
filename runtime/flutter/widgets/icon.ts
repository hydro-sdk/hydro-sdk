import {Widget} from "../widget";
import {Color} from "../../dart/ui/color";

import {StatelessWidget} from "./statelessWidget";
import {IconData} from "./iconData";
import { DartObject } from "../../dart/core";

interface IconProps {
    size?: number | undefined;
    color?: Color | undefined;
}

declare const flutter: {
    widgets: {
        icon: (this: void, icon: IconData, props?: IconProps | undefined) => Icon;
    };
};

export class Icon extends StatelessWidget  implements Readonly<DartObject>
{
    public readonly runtimeType = "Icon";
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
        return flutter.widgets.icon(this.icon, this.props);
    }
}