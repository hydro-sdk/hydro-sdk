import { double } from "../../dart/core/double";
import { Type } from "../../dart/core/type";
import { Color } from "../../dart/ui/color";

export class Animation<T extends double | Color> {
    public readonly runtimeType = new Type(Animation);
    public readonly value: () => T extends double
        ? number
        : T = undefined as any;
}
