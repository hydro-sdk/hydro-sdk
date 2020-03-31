import { DartObject } from "../../dart/core/object";

declare const flutter: {
    painting: {
        edgeInsetsAll: (this: void, value: number) => EdgeInsets;
        edgeInsetsOnly: (this: void, props: { left: 0.0; top: 0.0; right: 0.0; bottom: 0.0 }) => EdgeInsets;
        edgeInsetsSymmetric: (this: void, props: { vertical: 0.0; horizontal: 0.0 }) => EdgeInsets;

    };
};

export class EdgeInsets implements Readonly<DartObject>
{
    public readonly runtimeType = "EdgeInsets";
    public static all(value: number): EdgeInsets {
        return flutter.painting.edgeInsetsAll(value);
    }

    public static zero(): EdgeInsets {
        return EdgeInsets.only({ left: 0.0, top: 0.0, right: 0.0, bottom: 0.0 });
    }

    public static only(props: { left: 0.0; top: 0.0; right: 0.0; bottom: 0.0 }): EdgeInsets {
        return flutter.painting.edgeInsetsOnly(props);
    }

    public static symmetric(props: { vertical: 0.0; horizontal: 0.0 }): EdgeInsets {
        return flutter.painting.edgeInsetsSymmetric(props);
    }
}