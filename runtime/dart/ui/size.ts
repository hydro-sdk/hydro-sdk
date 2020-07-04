import {RuntimeBaseClass} from "./../../runtimeBaseClass";
import {Type} from "./../core/type";
import {double} from "./../../dart/core/double";
import {JITAllocatingRTManagedBox} from "./../../syntheticBox";


declare const dart: {
    ui: {
        size: (this: void, width: number, height: number) => Size;
    };
};

export class Size extends JITAllocatingRTManagedBox<undefined, Size> implements RuntimeBaseClass
{
    public readonly internalRuntimeType = new Type(Size);
    public readonly width: number;
    public readonly height: number;
    public props = undefined;
    public constructor(width: number, height: number) 
    {
        super();

        this.width = width;
        this.height = height;
    }

    public static fromHeight(height: number): Size 
    {
        return new Size(double.infinity, height);
    }

    public unwrap(): Size 
    {
        return dart.ui.size(this.width, this.height);
    }
}