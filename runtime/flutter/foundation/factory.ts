
import { Type } from "../../dart/core/type";
declare const flutter: {
foundation: {
factory: <T>(this: void, factory: IFactory<T>, constructor : () => T) => IFactory<T>
}
};
export interface IFactory
<T>

{
getType: () => Type;
toString: () => string;
}export class Factory
<T>

{public constructor(constructor : () => T){
flutter.foundation.factory(this, constructor);}
    private readonly _dart_getType: () => Type = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
public getType() : Type {
    return this._dart_getType();
}
public toString() : string {
    return this._dart_toString();
}
}
