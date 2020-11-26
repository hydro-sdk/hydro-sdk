import { double } from "../../dart/core/double";
import { Type } from "../../dart/core/type";
import { Color } from "../../dart/ui/color";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Animation } from "./animation";

declare const flutter: {
    animation: {
        alwaysStoppedAnimation: <T extends double | Color>(
            this: void,
            alwaysStoppedAnimation: AlwaysStoppedAnimation<T>,
            value: T,
            targetRuntimeType: Type
        ) => AlwaysStoppedAnimation<T>;
    };
};

export class AlwaysStoppedAnimation<T extends double | Color>
    extends Animation<T>
    implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(AlwaysStoppedAnimation);
    public readonly runtimeType = new Type(Animation);
    public readonly value: () => T extends double
        ? number
        : T = undefined as any;

    public constructor(value: T, targetRuntimeType: Type) {
        super();
        flutter.animation.alwaysStoppedAnimation(
            this,
            value,
            targetRuntimeType
        );
    }
}
