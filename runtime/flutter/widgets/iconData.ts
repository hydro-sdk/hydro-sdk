import {Widget} from "../widget";

import {DartObject} from "./../../dart/core";
import {JITAllocatingRTManagedBox} from "./../../syntheticBox";

interface IconDataProps {
    fontFamily: string;
    matchTextDirection?: boolean | undefined;
}

declare const flutter: {
    widgets: {
        iconData: (this: void, codePoint: number, props: IconDataProps) => { tag: string };
    };
};

export class IconData extends JITAllocatingRTManagedBox<IconDataProps, Widget> implements Readonly<DartObject>
{
    public readonly runtimeType = "IconData";
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