import { DartObject } from "../../dart/core/object";

import { Key } from "./../key";
import { Animation } from "../animation/animation";
import { Color } from "../../dart/ui/color";
import { StatelessWidget } from "../widgets/statelessWidget";

interface CircularProgressIndicatorProps {
    key?: Key | undefined;
    value?: number | undefined;
    backgroundColor?: Color | undefined;
    valueColor: Animation<Color>;
    strokeWidth?: number | undefined;
    semanticsLabel?: string | undefined;
    semanticsValue?: string | undefined;
}

declare const flutter: {
    material: {
        circularProgressIndicator: (this: void, props: CircularProgressIndicatorProps) => CircularProgressIndicator;
    }
}

export class CircularProgressIndicator extends StatelessWidget implements Readonly<DartObject>{
    public readonly runtimeType = "CircularProgressIndicator";
    public props: CircularProgressIndicatorProps;
    public constructor(props: CircularProgressIndicatorProps) {
        super();
        this.props = props;

        if (this.props.strokeWidth === undefined) {
            this.props.strokeWidth = 4.0;
        }
    }

    public build() {
        return flutter.material.circularProgressIndicator(this.props);
    }

}