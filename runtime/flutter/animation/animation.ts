import {DartObject} from "../../dart/core/object";
import {Color} from "../../dart/ui/color";

export class Animation<T extends number | Color> implements Readonly<DartObject>
{
    public readonly runtimeType = "Animation";
}
