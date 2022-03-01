
import { IListenable } from "../foundation/listenable";
declare const flutter: {
painting: {
_systemFontsNotifier: (this: void, _systemFontsNotifier: I_SystemFontsNotifier) => I_SystemFontsNotifier
}
};
export interface I_SystemFontsNotifier


{
notifyListeners: () => void;
addListener: (listener : () => void) => void;
removeListener: (listener : () => void) => void;
toString: () => string;
getHashCode: () => number;
}export class _SystemFontsNotifier

 implements IListenable
{public constructor(){
flutter.painting._systemFontsNotifier(this);}
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_addListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_removeListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public notifyListeners() : void {
    return this._dart_notifyListeners();
}
public addListener(listener : () => void) : void {
    return this._dart_addListener(listener);
}
public removeListener(listener : () => void) : void {
    return this._dart_removeListener(listener);
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
