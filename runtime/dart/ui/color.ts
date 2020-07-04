import {JITAllocatingRTManagedBox} from "./../../syntheticBox";
import {RuntimeBaseClass} from "./../../runtimeBaseClass";
import {Type} from "./../core/type";

declare const dart: {
    ui: {
        color: (this: void, hex: number) => Color;
    };
};

export class Color extends JITAllocatingRTManagedBox<undefined, Color> implements RuntimeBaseClass 
{
    public readonly internalRuntimeType = new Type(Color);
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