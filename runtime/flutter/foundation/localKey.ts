
import { IKey } from "./key";
declare const flutter: {
foundation: {
localKey: (this: void, localKey: ILocalKey) => ILocalKey
}
};
export interface ILocalKey


{
toString: () => string;
getHashCode: () => number;
}export class LocalKey

 implements IKey
{public constructor(){
flutter.foundation.localKey(this);}
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
