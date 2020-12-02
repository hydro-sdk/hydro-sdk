import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Widget } from "./../widget";
import { BuildContext } from "../buildContext";

export abstract class StatelessWidget implements Widget, RuntimeBaseClass {
    tag: string;
    public readonly internalRuntimeType = new Type(StatelessWidget);
    public abstract build(context: BuildContext): Widget;
    public constructor() {
        this.tag = "";
    }
}
