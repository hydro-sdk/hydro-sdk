import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Key } from "./../foundation/key";
import { StatelessWidget } from "./../widgets/statelessWidget";
import { Widget } from "../widget";

export interface FloatingActionButtonProps {
    key?: Key | undefined;
    child: Widget;
    onPressed: () => void;
}

declare const flutter: {
    material: {
        floatingActionButton: (
            this: void,
            props: FloatingActionButtonProps
        ) => { tag: string };
    };
};

export class FloatingActionButton
    extends StatelessWidget
    implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(FloatingActionButton);
    public props: FloatingActionButtonProps;
    public constructor(props: FloatingActionButtonProps) {
        super();
        this.props = props;
    }

    public build(): Widget {
        return flutter.material.floatingActionButton(this.props);
    }
}
