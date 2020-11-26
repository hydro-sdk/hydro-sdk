import { Type } from "../../dart/core/type";
import { Radius } from "../../dart/ui/radius";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { JITAllocatingRTManagedBox } from "../../syntheticBox";
import { BorderRadius } from "../painting/borderRadius";
import { BorderSide } from "../painting/borderSide";
import { InputBorder } from "./inputBorder";

export interface OutlineInputBorderProps {
    borderSide?: BorderSide | undefined;
    borderRadius?: BorderRadius | undefined;
    gapPadding?: number | undefined;
}

declare const flutter: {
    material: {
        outlineInputBorder: (
            this: void,
            props: OutlineInputBorderProps
        ) => OutlineInputBorder;
    };
};

export class OutlineInputBorder
    extends JITAllocatingRTManagedBox<
        OutlineInputBorderProps,
        OutlineInputBorder
    >
    implements RuntimeBaseClass, InputBorder {
    public readonly internalRuntimeType = new Type(OutlineInputBorder);
    public props: OutlineInputBorderProps;
    public borderSide: BorderSide;
    public constructor(props: OutlineInputBorderProps) {
        super();
        this.props = props;

        if (this.props.borderSide === undefined) {
            this.props.borderSide = new BorderSide({});
        }

        this.borderSide = this.props.borderSide;

        if (this.props.borderRadius === undefined) {
            this.props.borderRadius = BorderRadius.all(Radius.circular(4.0));
        }

        if (this.props.gapPadding === undefined) {
            this.props.gapPadding = 4.0;
        }
    }

    public unwrap() {
        return flutter.material.outlineInputBorder(this.props);
    }
}
