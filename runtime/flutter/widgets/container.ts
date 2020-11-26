import { Color } from "./../../dart/ui/color";
import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Key } from "./../foundation/key";
import { BoxDecoration } from "./../painting/boxDecoration";
import { Alignment } from "../painting/alignment";
import { EdgeInsets } from "../painting/edgeInsets";
import { Widget } from "../widget";
import { StatelessWidget } from "./statelessWidget";

export interface ContainerProps {
    key?: Key | undefined;
    alignment?: Alignment | undefined;
    color?: Color | undefined;
    child?: Widget;
    decoration?: BoxDecoration | undefined;
    margin?: EdgeInsets | undefined;
    width?: number | undefined;
    height?: number | undefined;
    padding?: EdgeInsets | undefined;
}

declare const flutter: {
    widgets: {
        container: (this: void, props: ContainerProps) => Container;
    };
};

export class Container extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(Container);
    public props: ContainerProps;
    public constructor(props: ContainerProps) {
        super();
        this.props = props;
    }

    public build(): Widget {
        return flutter.widgets.container(this.props);
    }
}
