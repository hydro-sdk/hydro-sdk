
import { IParentData } from "./parentData";
import { IOffset } from "../../dart/ui/offset";
declare const flutter: {
rendering: {
boxParentData: (this: void, boxParentData: IBoxParentData) => IBoxParentData
}
};
export interface IBoxParentData


{
offset: IOffset;
toString: () => string;
detach: () => void;
getHashCode: () => number;
}export class BoxParentData

 implements IParentData
{    public readonly offset: IOffset = undefined as any;
public constructor(){
flutter.rendering.boxParentData(this);}
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_detach: () => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public toString() : string {
    return this._dart_toString();
}
public detach() : void {
    return this._dart_detach();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
