import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Key } from "../foundation/key";
import { Widget } from "../widget";
import { StatelessWidget } from "../widgets/statelessWidget";

export interface IconButtonProps {
    icon: Widget;
    tooltip?: string | undefined;
    key?: Key | undefined;
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
