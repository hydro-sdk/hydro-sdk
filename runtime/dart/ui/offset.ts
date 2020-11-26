import { RuntimeBaseClass } from "./../../runtimeBaseClass";
import { JITAllocatingRTManagedBox } from "./../../syntheticBox";
import { Type } from "./../core/type";

declare const dart: {
    ui: {
        offset: (this: void, dx: number, dy: number) => Offset;
    };
};

export class Offset
    extends JITAllocatingRTManagedBox<undefined, Offset>
    implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(Offset);
    public props = undefined;
    public readonly dx: number;
    public readonly dy: number;

    private constructor(dx: number, dy: number) {
        super();
        this.dx = dx;
        this.dy = dy;
    }

    public unwrap(): Offset {
        return dart.ui.offset(this.dx, this.dy);
    }
}
