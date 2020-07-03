import { Type } from "../../dart/core/type";
import { Widget } from "../widget";
import { RuntimeBaseClass } from "../../runtimeBaseClass";

export abstract class InheritedWidget extends RuntimeBaseClass implements Widget {
    tag: string;
    protected internalRuntimeType = new Type("InheritedWidget");
    public abstract child: Widget;

    public constructor() {
        super();
        this.tag = "";
    }
}
