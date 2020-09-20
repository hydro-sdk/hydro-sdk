import { JITAllocatingRTManagedBox } from "../../syntheticBox";
import { Widget } from "../widget";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Type } from "../../dart/core/type";
import { Color } from "../../dart/ui/color";

export interface BottomNavigationBarItemProps {
    icon: Widget;
    activeIcon?: Widget | undefined;
    title?: Widget | undefined;
    backgroundColor?: Color | undefined;
}

declare const flutter: {
    widgets: {
        bottomNavigationBarItem: (this: void, props: BottomNavigationBarItemProps) => BottomNavigationBarItem;
    }
}

export class BottomNavigationBarItem extends JITAllocatingRTManagedBox<BottomNavigationBarItemProps, BottomNavigationBarItem> implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(BottomNavigationBarItem);
    public props: BottomNavigationBarItemProps;
    public constructor(props: BottomNavigationBarItemProps) {
        super();
        this.props = props;
    }

    public unwrap() {
        return flutter.widgets.bottomNavigationBarItem(this.props);
    }
}