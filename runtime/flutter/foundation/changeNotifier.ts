import {RuntimeBaseClass} from "../../runtimeBaseClass";
import {Type} from "../../dart/core/type";

export abstract class ChangeNotifier implements RuntimeBaseClass 
{
    readonly internalRuntimeType = new Type(ChangeNotifier);
    public notifyListeners: () => void;
    public constructor() 
    {
        this.notifyListeners = undefined as any;
    }
}