import {JITAllocatingRTManagedBox} from "../../syntheticBox";
import {DartObject, RuntimeType} from "../../dart/core/object";
import {Color} from "../../dart/ui/color";

import {Animation} from "./animation";

export class AlwaysStoppedAnimation<T extends number | Color>
    extends JITAllocatingRTManagedBox<undefined, AlwaysStoppedAnimation<T>>
    implements Readonly<DartObject>, Animation<T> 
{
    public readonly runtimeType = "Animation";
    private readonly targetRuntimeType: string;
    protected value: T;
    public props = undefined;
    public unwrap(): AlwaysStoppedAnimation<T> 
    {
        return flutter.animation.alwaysStoppedAnimation(this);
    }

    public constructor(runtimType: RuntimeType, value: T) 
    {
        super();
        this.value = value;
        this.targetRuntimeType = runtimType;
    }
}

declare const flutter: {
    animation: {
        alwaysStoppedAnimation: (this: void, arg: AlwaysStoppedAnimation<any>) => AlwaysStoppedAnimation<any>;
    };
};