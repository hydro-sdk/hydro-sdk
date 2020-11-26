import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Axis } from "./../painting/axis";
import { Animation } from "../animation/animation";
import { Widget } from "../widget";
import { StatelessWidget } from "./statelessWidget";

export interface SizeTransitionProps {
    axis: Axis;
    sizeFactor: Animation<number>;
    child: Widget;
}

declare const flutter: {
    widgets: {
        sizeTransition: (
            this: void,
            props: SizeTransitionProps
        ) => SizeTransition;
    };
};

export class SizeTransition
    extends StatelessWidget
    implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(SizeTransition);
    public props: SizeTransitionProps;
    public constructor(props: SizeTransitionProps) {
        super();
        this.props = props;
    }

    public build(): Widget {
        return flutter.widgets.sizeTransition(this.props);
    }
}
