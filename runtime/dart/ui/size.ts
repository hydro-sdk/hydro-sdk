import {DartObject} from "./../../dart/core/object";
import {double} from "./../../dart/core/double";
import {JITAllocatingRTManagedBox} from "./../../syntheticBox";


declare const dart: {
    ui: {
        size: (this: void, width: number, height: number) => Size;
    };
};

export class Size extends JITAllocatingRTManagedBox<undefined, Size> implements Readonly<DartObject>
{
    public readonly runtimeType = "Size";
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