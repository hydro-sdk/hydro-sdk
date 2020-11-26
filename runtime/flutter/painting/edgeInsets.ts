import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";

declare const flutter: {
    painting: {
        edgeInsetsAll: (this: void, value: number) => EdgeInsets;
        edgeInsetsOnly: (
            this: void,
            props: { left: number; top: number; right: number; bottom: number }
        ) => EdgeInsets;
        edgeInsetsSymmetric: (
            this: void,
            props: { vertical: number; horizontal: number }
        ) => EdgeInsets;
    };
};

export class EdgeInsets implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(EdgeInsets);
    public static all(value: number): EdgeInsets {
        return flutter.painting.edgeInsetsAll(value);
    }

    public static zero(): EdgeInsets {
        return EdgeInsets.only({
            left: 0.0,
            top: 0.0,
            right: 0.0,
            bottom: 0.0,
        });
    }

    public static only(props: {
        left?: number;
        top?: number;
        right?: number;
        bottom?: number;
    }): EdgeInsets {
        const { left = 0.0, top = 0.0, right = 0.0, bottom = 0.0 } = props;
        return flutter.painting.edgeInsetsOnly({
            left,
            top,
            right,
            bottom,
        });
    }

    public static symmetric(props: {
        vertical?: number;
        horizontal?: number;
    }): EdgeInsets {
        const { vertical = 0.0, horizontal = 0.0 } = props;
        return flutter.painting.edgeInsetsSymmetric({
            vertical,
            horizontal,
        });
    }
}
