import {RuntimeBaseClass} from "../../runtimeBaseClass";
import {Type} from "../../dart/core/type";
import {JITAllocatingRTManagedBox} from "../../syntheticBox";
import {Color} from "../../dart/ui/color";

import {Animation} from "./animation";

declare const flutter: {
    animation: {
        alwaysStoppedAnimation: (this: void, arg: AlwaysStoppedAnimation<any>) => AlwaysStoppedAnimation<any>;
    };
};

export class AlwaysStoppedAnimation<T extends number | Color>
    extends JITAllocatingRTManagedBox<undefined, AlwaysStoppedAnimation<T>>
    implements RuntimeBaseClass, Animation<T>
{
    public readonly internalRuntimeType = new Type(AlwaysStoppedAnimation);
    public readonly runtimeType = new Type(Animation);
    private readonly targetRuntimeType: Type;
    protected value: T;
    public props = undefined;
    public unwrap(): AlwaysStoppedAnimation<T> 
    {
        return flutter.animation.alwaysStoppedAnimation(this);
    }

    public constructor(runtimType: Type, value: T) 
    {
        super();
        this.value = value;
        this.targetRuntimeType = runtimType;
    }
}
