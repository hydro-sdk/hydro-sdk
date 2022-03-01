
import { IContainerBoxParentData } from "./containerBoxParentData";
import { IRenderBox } from "./renderBox";
import { IContainerParentDataMixin } from "./containerParentDataMixin";
import { IOffset } from "../../dart/ui/offset";
declare const flutter: {
rendering: {
listBodyParentData: (this: void, listBodyParentData: IListBodyParentData) => IListBodyParentData
}
};
export interface IListBodyParentData


{
previousSibling: IRenderBox | undefined;
nextSibling: IRenderBox | undefined;
offset: IOffset;
detach: () => void;
toString: () => string;
getHashCode: () => number;
}export class ListBodyParentData

 implements Omit<IContainerBoxParentData<IRenderBox>, "detach" | "previousSibling" | "nextSibling">, IContainerParentDataMixin<IRenderBox>
{    public readonly previousSibling: IRenderBox | undefined = undefined as any;
    public readonly nextSibling: IRenderBox | undefined = undefined as any;
    public readonly offset: IOffset = undefined as any;
public constructor(){
flutter.rendering.listBodyParentData(this);}
    private readonly _dart_detach: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public detach() : void {
    return this._dart_detach();
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
