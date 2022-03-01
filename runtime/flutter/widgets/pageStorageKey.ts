
import { IValueKey } from "../foundation/valueKey";
declare const flutter: {
widgets: {
pageStorageKey: <T>(this: void, pageStorageKey: IPageStorageKey<T>, value: T) => IPageStorageKey<T>
}
};
export interface IPageStorageKey
<T>

{
value: T;
toString: () => string;
getHashCode: () => number;
}export class PageStorageKey
<T>
 implements IValueKey<T>
{    public readonly value: T = undefined as any;
public constructor(value: T){
flutter.widgets.pageStorageKey(this, value);}
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
