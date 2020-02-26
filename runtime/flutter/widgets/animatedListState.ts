import {Object} from "../../dart/core";
import {Widget} from "../widget";

import {StatefulWidget} from "./statefulWidget";
import {State} from "./state";

export class AnimatedListState extends State<StatefulWidget> implements Readonly<Object>
{
    public readonly runtimeType = "AnimatedListState";
    public constructor() 
    {
        super();
    }

    public insertItem(index: number): void 
    { }

    public build(): Widget 
    {
        throw "This is a synthetic widget";
    }
}