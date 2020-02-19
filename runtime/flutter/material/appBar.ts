import {JITAllocatingRTManagedBox} from "../../syntheticBox";

import {Object} from "./../../dart/core";
import {Widget} from "./../widget";

interface AppBarProps {
    title: Widget;
}

declare const flutter: {
    material: {
        appBar: (this: void, props: AppBarProps) => { tag: string };
    }
};

export class AppBar extends JITAllocatingRTManagedBox<AppBarProps,Widget> implements Readonly<Object>
{
    public readonly runtimeType = "AppBar";
    public props: AppBarProps;
    public constructor(props: AppBarProps) 
    {
        super();
        this.props = props;
    }

    public unwrap(): Widget 
    {
        return flutter.material.appBar(this.props);
    }
}
