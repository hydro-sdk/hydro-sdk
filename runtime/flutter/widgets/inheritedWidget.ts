import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Widget } from "../widget";

export abstract class InheritedWidget implements Widget, RuntimeBaseClass {
    tag: string;
    public readonly internalRuntimeType = new Type(InheritedWidget);
    public abstract runtimeType: Type;
    public abstract child: Widget;

    public constructor() {
        this.tag = "";
    }
}
