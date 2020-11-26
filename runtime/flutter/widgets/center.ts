import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Key } from "./../foundation/key";
import { Widget } from "../widget";
import { StatelessWidget } from "./statelessWidget";

export interface CenterProps {
    key?: Key;
    child: Widget;
}

declare const flutter: {
    widgets: {
        center: (this: void, props: CenterProps) => { tag: string };
    };
};

export class Center extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(Center);
    public props: CenterProps;
    public constructor(props: CenterProps) {
        super();
        this.props = props;
    }

    public build(): Widget {
        return flutter.widgets.center(this.props);
    }
}
