import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { RTManagedBox } from "../../syntheticBox";
import { State } from "./state";
import { StatefulWidget } from "./statefulWidget";

declare const flutter: {
    widgets: {
        globalKeyCtor: (this: void, arg: GlobalKey<any>) => void;
    };
};

export class GlobalKey<T extends State<StatefulWidget>>
    extends RTManagedBox<T>
    implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(GlobalKey);
    private readonly targetRuntimeType: Type;
    protected vmObject: T;
    public currentState: () => T;

    protected unwrap(): T {
        return this.vmObject;
    }
    public constructor(runtimeType: Type) {
        super();
        this.vmObject = undefined as any;
        this.currentState = undefined as any;
        this.unwrap = undefined as any;
        this.targetRuntimeType = runtimeType;
        flutter.widgets.globalKeyCtor(this);
    }
}
