import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { EdgeInsets } from "./../painting/edgeInsets";
import { Widget } from "./../widget";
import { StatelessWidget } from "./statelessWidget";

export interface SafeAreaProps {
    left?: boolean | undefined;
    top?: boolean | undefined;
    right?: boolean | undefined;
    bottom?: boolean | undefined;
    minimum?: EdgeInsets | undefined;
    maintainBottomViewPadding?: boolean | undefined;
    child: Widget;
}

declare const flutter: {
    widgets: {
        safeArea: (this: void, props: SafeAreaProps) => SafeArea;
    };
};

export class SafeArea extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(SafeArea);
    public props: SafeAreaProps;
    public constructor(props: SafeAreaProps) {
        super();
        this.props = props;

        if (this.props.left === undefined) {
            this.props.left = true;
        }
        if (this.props.top === undefined) {
            this.props.top = true;
        }
        if (this.props.right === undefined) {
            this.props.right = true;
        }
        if (this.props.bottom === undefined) {
            this.props.bottom = true;
        }
        if (this.props.minimum === undefined) {
            this.props.minimum = EdgeInsets.zero();
        }
        if (this.props.maintainBottomViewPadding === undefined) {
            this.props.maintainBottomViewPadding = false;
        }
    }

    public build(): Widget {
        return flutter.widgets.safeArea(this.props);
    }
}
