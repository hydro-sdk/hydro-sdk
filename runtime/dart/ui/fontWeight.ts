import { RuntimeBaseClass } from "./../../runtimeBaseClass";
import { JITAllocatingRTManagedBox } from "./../../syntheticBox";
import { Type } from "./../core/type";

declare const dart: {
    ui: {
        fontWeight: (this: void, index: number) => FontWeight;
    };
};

export class FontWeight
    extends JITAllocatingRTManagedBox<undefined, FontWeight>
    implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(FontWeight);
    public props = undefined;
    protected readonly index: number;

    private constructor(index: number) {
        super();

        this.index = index;
    }

    public static w100 = new FontWeight(0);
    public static w200 = new FontWeight(1);
    public static w300 = new FontWeight(2);
    public static w400 = new FontWeight(3);
    public static w500 = new FontWeight(4);
    public static w600 = new FontWeight(5);
    public static w700 = new FontWeight(6);
    public static w800 = new FontWeight(7);
    public static w900 = new FontWeight(8);

    public static normal = FontWeight.w400;
    public static bold = FontWeight.w700;

    public static values: Array<FontWeight> = [
        FontWeight.w100,
        FontWeight.w200,
        FontWeight.w300,
        FontWeight.w400,
        FontWeight.w500,
        FontWeight.w600,
        FontWeight.w700,
        FontWeight.w800,
        FontWeight.w900,
    ];

    public unwrap(): FontWeight {
        return dart.ui.fontWeight(this.index);
    }
}
