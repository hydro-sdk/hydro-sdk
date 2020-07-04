import {BuildContext} from "../buildContext";
import {RuntimeBaseClass} from "../../runtimeBaseClass";
import {Type} from "../../dart/core/type";

import {Widget} from "./../widget";

export abstract class StatelessWidget implements Widget, RuntimeBaseClass 
{
    tag: string;
    public readonly internalRuntimeType = new Type(StatelessWidget);
    public abstract build(context: BuildContext): Widget;
    public constructor() 
    {
        this.tag = "";
    }
}
