
import { ILocalKey } from "./localKey";
declare const flutter: {
foundation: {
valueKey: <T>(this: void, valueKey: IValueKey<T>, value: T) => IValueKey<T>
}
};
export interface IValueKey
<T>

{
getHashCode: () => number;
toString: () => string;
}export class ValueKey
<T>
 implements ILocalKey
{public constructor(value: T){
flutter.foundation.valueKey(this, value);}
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
public getHashCode() : number {
    return this._dart_getHashCode();
}
public toString() : string {
    return this._dart_toString();
}
}
