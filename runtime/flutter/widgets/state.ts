import {BuildContext} from "../buildContext";

import {Widget} from "./../widget";

export abstract class State<T> 
{
    public abstract build(context: BuildContext): Widget;
    public setState: (pred: () => void) => void;
    public constructor() 
    {
        this.setState = undefined as any;
    }
}