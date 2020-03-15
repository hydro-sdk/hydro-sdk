import { JITAllocatingRTManagedBox } from "../../syntheticBox";

import { DartObject } from "./../../dart/core/object";
import { Widget } from "./../widget";
import { PreferredSize } from "./../widgets/preferredSize";

interface AppBarProps {
    title: Widget;
    actions?: Array<Widget> | undefined;
    leading?: Widget | undefined;
    bottom?: PreferredSize | undefined;
}

declare const flutter: {
    material: {
        appBar: (this: void, props: AppBarProps) => { tag: string };
    };
};

export class AppBar extends JITAllocatingRTManagedBox<AppBarProps, Widget> implements Readonly<DartObject>
{
    public readonly runtimeType = "AppBar";
    public props: AppBarProps;
    public constructor(props: AppBarProps) {
        super();
        this.props = props;
    }

    public unwrap(): Widget {
        return flutter.material.appBar(this.props);
    }
}
