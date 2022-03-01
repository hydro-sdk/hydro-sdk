
import { IKeyboardKey } from "../services/keyboardKey";
import { ISet } from "../../dart/core/set";
declare const flutter: {
widgets: {
keySet: <T>(this: void, keySet: IKeySet<T>, key1: T, key2?: T | undefined, key3?: T | undefined, key4?: T | undefined) => IKeySet<T>
}
};
export interface IKeySet
<T>

{
hashCode: number;
getKeys: () => ISet<T>;
}export class KeySet
<T>

{    public readonly hashCode: number = undefined as any;
public constructor(key1: T, key2?: T | undefined, key3?: T | undefined, key4?: T | undefined){
flutter.widgets.keySet(this, key1, key2, key3, key4);}
    private readonly _dart_getKeys: () => ISet<T> = undefined as any;
public getKeys() : ISet<T> {
    return this._dart_getKeys();
}
}
