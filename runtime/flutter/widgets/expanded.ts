import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Key } from "./../foundation/key";
import { Widget } from "../widget";
import { StatelessWidget } from "./statelessWidget";

export interface ExpandedProps {
    key?: Key | undefined;
    flex?: number | undefined;
    child: Widget;
}

declare const flutter: {
    widgets: {
        expanded: (this: void, props: ExpandedProps) => Expanded;
    };
};

export class Expanded extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(Expanded);
    public props: ExpandedProps;
    public constructor(props: ExpandedProps) {
        super();
        this.props = props;

        if (this.props.flex === undefined) {
            this.props.flex = 1;
        }
    }

    public build() {
        return flutter.widgets.expanded(this.props);
    }
}
