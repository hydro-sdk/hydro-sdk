import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Key } from "../foundation/key";
import { BoxDecoration } from "../painting/boxDecoration";
import { DecorationPosition } from "../rendering/decorationPosition";
import { Widget } from "../widget";
import { StatelessWidget } from "./statelessWidget";


export interface DecoratedBoxProps {
    key?: Key | undefined;
    decoration: BoxDecoration;
    position?: DecorationPosition | undefined;
    child?: Widget | undefined
}

declare const flutter: {
    widgets: {
        decoratedBox: (this: void, props: DecoratedBoxProps) => DecoratedBox;
    }
}

export class DecoratedBox extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(DecoratedBox);
    public props: DecoratedBoxProps;
    public constructor(props: DecoratedBoxProps) {
        super();
        this.props = props;

        if (this.props.position === undefined) {
            this.props.position = DecorationPosition.background;
        }
    }

    public build() {
        return flutter.widgets.decoratedBox(this.props);
    }
}
