
import { ILocalKey } from "../foundation/localKey";
declare const flutter: {
widgets: {
objectKey: (this: void, objectKey: IObjectKey, value?: Object | undefined) => IObjectKey
}
};
export interface IObjectKey


{
value: Object | undefined;
getHashCode: () => number;
toString: () => string;
}export class ObjectKey

 implements ILocalKey
{    public readonly value: Object | undefined = undefined as any;
public constructor(value?: Object | undefined){
flutter.widgets.objectKey(this, value);}
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
public getHashCode() : number {
    return this._dart_getHashCode();
}
public toString() : string {
    return this._dart_toString();
}
}
