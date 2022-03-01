
import { IChangeNotifier } from "../foundation/changeNotifier";
import { IListenable } from "../foundation/listenable";
declare const flutter: {
widgets: {
keepAliveHandle: (this: void, keepAliveHandle: IKeepAliveHandle) => IKeepAliveHandle
}
};
export interface IKeepAliveHandle


{
release: () => void;
addListener: (listener : () => void) => void;
removeListener: (listener : () => void) => void;
dispose: () => void;
getHasListeners: () => boolean;
toString: () => string;
getHashCode: () => number;
}export class KeepAliveHandle

 implements IChangeNotifier, IListenable
{public constructor(){
flutter.widgets.keepAliveHandle(this);}
    private readonly _dart_release: () => void = undefined as any;
    private readonly _dart_addListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_removeListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public release() : void {
    return this._dart_release();
}
public addListener(listener : () => void) : void {
    return this._dart_addListener(listener);
}
public removeListener(listener : () => void) : void {
    return this._dart_removeListener(listener);
}
public dispose() : void {
    return this._dart_dispose();
}
public notifyListeners() : void {
    return this._dart_notifyListeners();
}
public getHasListeners() : boolean {
    return this._dart_getHasListeners();
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
