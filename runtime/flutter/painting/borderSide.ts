import { Color } from "./../../dart/ui/color";
import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { JITAllocatingRTManagedBox } from "../../syntheticBox";
import { BorderStyle } from "./borderStyle";

export interface BorderSideProps {
    color?: Color | undefined;
    width?: number | undefined;
    style?: BorderStyle | undefined;
}

declare const flutter: {
    painting: {
        borderSide: (this: void, props: BorderSideProps) => BorderSide;
    };
};

export class BorderSide
    extends JITAllocatingRTManagedBox<BorderSideProps, BorderSide>
    implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(BorderSide);
    public props: BorderSideProps;
    public constructor(props: BorderSideProps) {
        super();
        this.props = props;

        if (this.props.color === undefined) {
            this.props.color = new Color(0xff000000);
        }
        if (this.props.width === undefined) {
            this.props.width = 1.0;
        }
        if (this.props.style === undefined) {
            this.props.style = BorderStyle.solid;
        }
    }

    static none = new BorderSide({
        width: 0.0,
        style: BorderStyle.none,
    });

    public unwrap(): BorderSide {
        return flutter.painting.borderSide(this.props);
    }
}
