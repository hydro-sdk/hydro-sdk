import {RuntimeType} from "../../runtimeTypes";

import {Object} from "./../../dart/core";
import {StatefulWidget} from "./statefulWidget";
import {State} from "./state";

declare const flutter: {
    widgets: {
        globalKeyCtor: (this: void, arg: GlobalKey<any>) => void
    }
};

export class GlobalKey<T extends State<StatefulWidget> & Object> implements Readonly<Object>
{
    public readonly runtimeType = "GlobalKey";
    private readonly targetRuntimeType: string;
    private vmObject: any;
    private _currentState: () => T;
    public get currentState(): T 
    {
        return this._currentState();
    }
    public constructor(runtimeType: RuntimeType) 
    {
        this._currentState = undefined as any;
        this.targetRuntimeType = runtimeType;
        flutter.widgets.globalKeyCtor(this);
    }
}