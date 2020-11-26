import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Widget } from "./../widget";
import { StatelessWidget } from "./../widgets/statelessWidget";

interface PopupMenuItemProps<T> {
    value: T;
    child: Widget;
}

declare const flutter: {
    material: {
        popupMenuItem: (
            this: void,
            props: PopupMenuItemProps<unknown>
        ) => PopupMenuItem<unknown>;
    };
};

export class PopupMenuItem<T>
    extends StatelessWidget
    implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(PopupMenuItem);
    public props: PopupMenuItemProps<T>;
    public constructor(props: PopupMenuItemProps<T>) {
        super();
        this.props = props;
    }

    public build(): Widget {
        return flutter.material.popupMenuItem(this.props);
    }
}
