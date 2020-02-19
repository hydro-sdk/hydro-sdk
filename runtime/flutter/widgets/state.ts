import {BuildContext} from "../buildContext";

import {Widget} from "./../widget";
import {StatefulWidget} from "./statefulWidget";

export abstract class State<T extends StatefulWidget> 
{
    public abstract build(context: BuildContext): Widget;
    public setState: (pred: () => void) => void;
    public constructor() 
    {
        this.setState = undefined as any;
    }
}