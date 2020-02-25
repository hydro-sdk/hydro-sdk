import {RuntimeType} from "../../runtimeTypes";
import {RTManagedBox} from "../../syntheticBox";

import {Object} from "./../../dart/core";
import {StatefulWidget} from "./statefulWidget";
import {State} from "./state";

declare const flutter: {
    widgets: {
        globalKeyCtor: (this: void, arg: GlobalKey<any>) => void
    }
};

export class GlobalKey<T extends State<StatefulWidget> & Object> extends RTManagedBox<T> implements Readonly<Object>
{
    public readonly runtimeType = "GlobalKey";
    private readonly targetRuntimeType: string;
    protected vmObject: T;
    private _currentState: () => T;
    public get currentState(): T 
    {
        return this._currentState();
    }

    protected unwrap(): T 
    {
        return this.vmObject;
    }
    public constructor(runtimeType: RuntimeType) 
    {
        super();
        this.vmObject = undefined as any;
        this._currentState = undefined as any;
        this.targetRuntimeType = runtimeType;
        flutter.widgets.globalKeyCtor(this);
    }
}