import { Type } from "../../dart/core/type";
import { Color } from "../../dart/ui/color";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Widget } from "../widget";
import { IconData } from "./iconData";
import { StatelessWidget } from "./statelessWidget";

export interface IconProps {
    size?: number | undefined;
    color?: Color | undefined;
}

declare const flutter: {
    widgets: {
        icon: (
            this: void,
            icon: IconData,
            props?: IconProps | undefined
        ) => Icon;
    };
};

export class Icon extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(Icon);
    public icon: IconData;
    public props: IconProps | undefined;
    public constructor(icon: IconData, props?: IconProps | undefined) {
        super();
        this.icon = icon;
        this.props = props;
    }
    public build(): Widget {
        return flutter.widgets.icon(this.icon, this.props);
    }
}
