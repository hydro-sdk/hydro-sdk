import { ChangeNotifier } from "../foundation/changeNotifier";
import { TransitionBuilder } from "./transitionBuilder";
import { StatelessWidget } from "./statelessWidget";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Type } from "../../dart/core/type";

interface AnimatedBuilderProps {
    animation: ChangeNotifier;
    builder: TransitionBuilder;
}

declare const flutter: {
    widgets: {
        animatedBuilder: (this: void, props: AnimatedBuilderProps) => AnimatedBuilder;
    }
}

export class AnimatedBuilder extends StatelessWidget implements RuntimeBaseClass {
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