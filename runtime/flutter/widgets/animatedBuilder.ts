import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { ChangeNotifier } from "../foundation/changeNotifier";
import { StatelessWidget } from "./statelessWidget";
import { TransitionBuilder } from "./transitionBuilder";

export interface AnimatedBuilderProps {
    animation: ChangeNotifier;
    builder: TransitionBuilder;
}

declare const flutter: {
    widgets: {
        animatedBuilder: (
            this: void,
            props: AnimatedBuilderProps
        ) => AnimatedBuilder;
    };
};

export class AnimatedBuilder
    extends StatelessWidget
    implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(AnimatedBuilder);
    public props: AnimatedBuilderProps;
    public constructor(props: AnimatedBuilderProps) {
        super();
        this.props = props;
    }

    public build() {
        return flutter.widgets.animatedBuilder(this.props);
    }
}
