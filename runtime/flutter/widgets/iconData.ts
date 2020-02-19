import {Widget} from "../widget";

import {Object} from "./../../dart/core";
import {JITAllocatingManagedBox} from "./../../syntheticBox";

interface IconDataProps {
    fontFamily: string;
}

declare const flutter: {
    widgets: {
        iconData: (this: void, codePoint: number, props: IconDataProps) => { tag: string };
    }
};

export class IconData extends JITAllocatingManagedBox<IconDataProps,Widget> implements Readonly<Object>
{
    public runtimeType = "IconData";
    public codePoint: number;
    public props: IconDataProps;
    public constructor(codePoint: number, props: IconDataProps) 
    {
        super();
        this.codePoint = codePoint;
        this.props = props;
    }

    public unwrap(): Widget 
    {
        return flutter.widgets.iconData(this.codePoint, this.props);
    }
}