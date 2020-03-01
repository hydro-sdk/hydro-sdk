import {DartObject} from "../../dart/core";
import {Widget} from "../widget";
import {RTManagedBox} from "../../syntheticBox";
import {BuildContext} from "../buildContext";
import {Animation} from "../animation/animation";

import {StatefulWidget} from "./statefulWidget";
import {State} from "./state";

export class AnimatedListState extends RTManagedBox<State<StatefulWidget>> implements Readonly<DartObject>
{
    public readonly runtimeType = "AnimatedListState";
    protected vmObject: State<StatefulWidget>;
    public constructor() 
    {
        super();
        this.vmObject = undefined as any;
        this.setState = undefined as any;
    }
    public setState: (pred: () => void) => void;
    public insertItem(index: number): void 
    {
        index;
    }
    public removeItem(index: number, cb: (context: BuildContext, animation: Animation<number>) => void): void 
    {
        index; cb;
    }

    public unwrap(): State<StatefulWidget> 
    {
        return this.vmObject;
    }

    public build(): Widget 
    {
        throw "This is a synthetic widget";
    }
}