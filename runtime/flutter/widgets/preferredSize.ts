import { Widget } from "../widget";
import { StatelessWidget } from "./statelessWidget";
import { Size } from "./../../dart/ui/size";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Type } from "../../dart/core/type";

interface PreferredSizeProps {
    child: Widget;
    preferredSize: Size;
}

declare const flutter: {
    widgets: {
        preferredSize: (this: void, props: PreferredSizeProps) => PreferredSize;
    };
};

export class PreferredSize extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(PreferredSize);
    public props: PreferredSizeProps;
    public constructor(props: PreferredSizeProps) {
        super();
        this.props = props;
    }

    private preferredSize = () => this.props.preferredSize;

    public build(): PreferredSize {
        return flutter.widgets.preferredSize(this.props);
    }
}