import { Type } from "../../dart/core/type";
import { Key } from "./../foundation/key"
import { BoxFit } from "../painting/boxFit";
import { Alignment } from "../painting/alignment";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { StatelessWidget } from "./statelessWidget";
import { Widget } from "../widget";


interface FittedBoxProps {
    key?: Key | undefined;
    fit?: BoxFit | undefined;
    alignment?: Alignment | undefined;
    child: Widget;
}

declare const flutter: {
    widgets: {
        fittedBox: (this: void, props: FittedBoxProps) => FittedBox;
    };
};

export class FittedBox extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(FittedBox);
    public props: FittedBoxProps;
    public constructor(props: FittedBoxProps) {
        super();
        this.props = props;

        if (this.props.fit === undefined) {
            this.props.fit = BoxFit.contain;
        }

        if (this.props.alignment === undefined) {
            this.props.alignment = Alignment.center;
        }
    }

    public build() {
        return flutter.widgets.fittedBox(this.props);
    }
}