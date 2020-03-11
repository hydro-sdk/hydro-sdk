import {RuntimeType,DartObject} from "../../dart/core/object";
import {RTManagedBox} from "../../syntheticBox";


import {StatefulWidget} from "./statefulWidget";
import {State} from "./state";

declare const flutter: {
    widgets: {
        globalKeyCtor: (this: void, arg: GlobalKey<any>) => void;
    };
};

export class GlobalKey<T extends State<StatefulWidget> & DartObject> extends RTManagedBox<T> implements Readonly<DartObject>
{
    public readonly runtimeType = "GlobalKey";
    private readonly targetRuntimeType: string;
    protected vmObject: T;
    public currentState: () => T;

    protected unwrap(): T 
    {
        return this.vmObject;
    }
    public constructor(runtimeType: RuntimeType) 
    {
        super();
        this.vmObject = undefined as any;
        this.currentState = undefined as any;
        this.unwrap = undefined as any;
        this.targetRuntimeType = runtimeType;
        flutter.widgets.globalKeyCtor(this);
    }
}