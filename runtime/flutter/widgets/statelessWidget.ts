import {BuildContext} from "../buildContext";

import {Widget} from "./../widget";

export abstract class StatelessWidget implements Widget 
{
    tag: string;
    public abstract build(context: BuildContext): Widget;
    public constructor() 
    {
        this.tag = "";
    }
}
