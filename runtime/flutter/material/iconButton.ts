import { Widget } from "../widget";
import { StatelessWidget } from "../widgets/statelessWidget";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Type } from "../../dart/core/type";

interface IconButtonProps {
    icon: Widget;
    tooltip?: string | undefined;
    onPressed: () => void;
}

declare const flutter: {
    material: {
        iconButton: (this: void, props: IconButtonProps) => { tag: string };
    };
};

export class IconButton extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(IconButton);
    public props: IconButtonProps;
    public constructor(props: IconButtonProps) {
        super();
        this.props = props;
    }

    public build(): Widget {
        return flutter.material.iconButton(this.props);
    }
}