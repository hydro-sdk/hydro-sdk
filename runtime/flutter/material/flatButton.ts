import { RuntimeBaseClass } from "./../../runtimeBaseClass";
import { Type } from "../../dart/core/type";
import { StatelessWidget } from "./../widgets/statelessWidget";
import { Widget } from "../widget";

export interface FlatButtonProps {
    child: Widget;
    onPressed: (this: void) => void;
}

declare const flutter: {
    material: {
        flatButton: (this: void, props: FlatButtonProps) => FlatButton;
    };
};

export class FlatButton extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(FlatButton);
    public props: FlatButtonProps;
    public constructor(props: FlatButtonProps) {
        super();
        this.props = props;
    }

    public build(): Widget {
        return flutter.material.flatButton(this.props);
    }
}
