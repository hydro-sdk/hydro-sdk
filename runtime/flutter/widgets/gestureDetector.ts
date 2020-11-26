import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { HitTestBehavior } from "./../rendering/hitTestBehavior";
import { Widget } from "../widget";
import { StatelessWidget } from "./statelessWidget";

export interface GestureDetectorProps {
    behavior?: HitTestBehavior | undefined;
    child?: Widget | undefined;
    onTap: () => void;
}

declare const flutter: {
    widgets: {
        gestureDetector: (
            this: void,
            props: GestureDetectorProps
        ) => GestureDetector;
    };
};

export class GestureDetector
    extends StatelessWidget
    implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(GestureDetector);
    public props: GestureDetectorProps;
    public constructor(props: GestureDetectorProps) {
        super();
        this.props = props;

        if (!this.props.child) {
            this.props.behavior = HitTestBehavior.translucent;
        } else {
            this.props.behavior = HitTestBehavior.deferToChild;
        }
    }

    public build(): Widget {
        return flutter.widgets.gestureDetector(this.props);
    }
}
