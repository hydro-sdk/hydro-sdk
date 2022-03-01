
import { Type } from "../../dart/core/type";
declare const flutter: {
foundation: {
_typeLiteral: <T>(this: void, _typeLiteral: I_TypeLiteral<T>) => I_TypeLiteral<T>
}
};
export interface I_TypeLiteral
<T>

{
getType: () => Type;
}export class _TypeLiteral
<T>

{public constructor(){
flutter.foundation._typeLiteral(this);}
    private readonly _dart_getType: () => Type = undefined as any;
public getType() : Type {
    return this._dart_getType();
}
}
