import {Widget} from "../widget";
import {Color} from "../../dart/ui/color";
import {RuntimeBaseClass} from "../../runtimeBaseClass";
import {Type} from "../../dart/core/type";

import {StatelessWidget} from "./statelessWidget";
import {IconData} from "./iconData";

export interface IconProps {
    size?: number | undefined;
    color?: Color | undefined;
}

declare const flutter: {
    widgets: {
        icon: (this: void, icon: IconData, props?: IconProps | undefined) => Icon;
    };
};

export class Icon extends StatelessWidget  implements RuntimeBaseClass
{
    public readonly internalRuntimeType = new Type(Icon);
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