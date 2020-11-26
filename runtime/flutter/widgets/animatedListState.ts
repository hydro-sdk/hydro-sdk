import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { RTManagedBox } from "../../syntheticBox";
import { Animation } from "../animation/animation";
import { BuildContext } from "../buildContext";
import { Widget } from "../widget";
import { State } from "./state";
import { StatefulWidget } from "./statefulWidget";

export class AnimatedListState
    extends RTManagedBox<State<StatefulWidget>>
    implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(AnimatedListState);
    protected vmObject: State<StatefulWidget>;
    public constructor() {
        super();
        this.vmObject = undefined as any;
        this.setState = undefined as any;
    }
    public setState: (pred: () => void) => void;
    public insertItem(index: number): void {
        index;
    }
    public removeItem(
        index: number,
        cb: (context: BuildContext, animation: Animation<number>) => void
    ): void {
        index;
        cb;
    }

    public unwrap(): State<StatefulWidget> {
        return this.vmObject;
    }

    public dispose() {}

    public initState() {}

    public build(): Widget {
        throw "This is a synthetic widget";
    }
}
