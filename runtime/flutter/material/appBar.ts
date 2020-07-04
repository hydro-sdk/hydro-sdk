import { JITAllocatingRTManagedBox } from "../../syntheticBox";

import { Widget } from "./../widget";
import { PreferredSize } from "./../widgets/preferredSize";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Type } from "../../dart/core/type";

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

export class AppBar extends JITAllocatingRTManagedBox<AppBarProps, Widget> implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(AppBar);
    public props: AppBarProps;
    public constructor(props: AppBarProps) {
        super();
        this.props = props;
    }

    public unwrap(): Widget {
        return flutter.material.appBar(this.props);
    }
}
