import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";

export abstract class ChangeNotifier implements RuntimeBaseClass {
    readonly internalRuntimeType = new Type(ChangeNotifier);
    public notifyListeners: () => void;
    public constructor() {
        this.notifyListeners = undefined as any;
    }
}
