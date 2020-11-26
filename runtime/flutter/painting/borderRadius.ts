import { Type } from "../../dart/core/type";
import { Radius } from "../../dart/ui/radius";
import { RuntimeBaseClass } from "../../runtimeBaseClass";

export interface BorderRadiusProps {
    topLeft: Radius;
    topRight: Radius;
    bottomLeft: Radius;
    bottomRight: Radius;
}

declare const flutter: {
    painting: {
        borderRadiusOnly: (
            this: void,
            props: BorderRadiusProps
        ) => BorderRadius;
    };
};

export class BorderRadius implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(BorderRadius);

    public static all(radius: Radius): BorderRadius {
        return BorderRadius.only({
            topLeft: radius,
            topRight: radius,
            bottomLeft: radius,
            bottomRight: radius,
        });
    }

    public static circular(radius: number): BorderRadius {
        return BorderRadius.all(Radius.circular(radius));
    }

    public static vertical(props: {
        top: Radius;
        bottom: Radius;
    }): BorderRadius {
        const { top = Radius.zero, bottom = Radius.zero } = props;

        return BorderRadius.only({
            topLeft: top,
            topRight: top,
            bottomLeft: bottom,
            bottomRight: bottom,
        });
    }

    public static horizontal(props: {
        left: Radius;
        right: Radius;
    }): BorderRadius {
        const { left = Radius.zero, right = Radius.zero } = props;

        return BorderRadius.only({
            topLeft: left,
            topRight: right,
            bottomLeft: left,
            bottomRight: right,
        });
    }

    public static only(props: Partial<BorderRadiusProps>): BorderRadius {
        const {
            topLeft = Radius.zero,
            topRight = Radius.zero,
            bottomLeft = Radius.zero,
            bottomRight = Radius.zero,
        } = props;
        return flutter.painting.borderRadiusOnly({
            topLeft,
            topRight,
            bottomLeft,
            bottomRight,
        });
    }

    public static zero = BorderRadius.all(Radius.zero);
}
