import {DartObject} from "./../../dart/core";
import {JITAllocatingRTManagedBox} from "./../../syntheticBox";

declare const dart: {
    ui: {
        color: (this: void, hex: number) => Color;
    };
};

export class Color extends JITAllocatingRTManagedBox<undefined, Color> implements Readonly<DartObject>
{
    public readonly runtimeType = "Color";
    public props = undefined;
    private hex: number;
    public constructor(hex: number) 
    {
        super();
        this.hex = hex;
    }

    public unwrap(): Color 
    {
        return dart.ui.color(this.hex);
    }
}