import { RuntimeBaseClass } from "./../../runtimeBaseClass";
import { JITAllocatingRTManagedBox } from "./../../syntheticBox";
import { Type } from "./../core/type";
import { Offset } from "./offset";

declare const dart: {
    ui: {
        rect: (
            this: void,
            left: number,
            top: number,
            right: number,
            bottom: number
        ) => Rect;
    };
};

export class Rect
    extends JITAllocatingRTManagedBox<undefined, Rect>
    implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(Rect);
    public props = undefined;
    public readonly left: number;
    public readonly top: number;
    public readonly right: number;
    public readonly bottom: number;

    private constructor(
        left: number,
        top: number,
        right: number,
        bottom: number
    ) {
        super();
        this.left = left;
        this.top = top;
        this.right = right;
        this.bottom = bottom;
    }

    public static fromLTRB(
        left: number,
        top: number,
        right: number,
        bottom: number
    ): Rect {
        return new Rect(left, top, right, bottom);
    }

    public static fromLTWH(
        left: number,
        top: number,
        width: number,
        height: number
    ): Rect {
        return Rect.fromLTRB(left, top, left + width, top + height);
    }

    public static fromCenter(props: {
        center: Offset;
        width: number;
        height: number;
    }): Rect {
        return Rect.fromLTRB(
            props.center.dx - props.width / 2,
            props.center.dy - props.height / 2,
            props.center.dx + props.width / 2,
            props.center.dy + props.height / 2
        );
    }

    public unwrap(): Rect {
        return dart.ui.rect(this.left, this.top, this.right, this.bottom);
    }
}
