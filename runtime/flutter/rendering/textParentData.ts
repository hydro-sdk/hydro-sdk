
import { IContainerBoxParentData } from "./containerBoxParentData";
import { IRenderBox } from "./renderBox";
import { IContainerParentDataMixin } from "./containerParentDataMixin";
import { IOffset } from "../../dart/ui/offset";
declare const flutter: {
rendering: {
textParentData: (this: void, textParentData: ITextParentData) => ITextParentData
}
};
export interface ITextParentData


{
scale: number | undefined;
previousSibling: IRenderBox | undefined;
nextSibling: IRenderBox | undefined;
offset: IOffset;
toString: () => string;
detach: () => void;
getHashCode: () => number;
}export class TextParentData

 implements Omit<IContainerBoxParentData<IRenderBox>, "detach" | "previousSibling" | "nextSibling">, IContainerParentDataMixin<IRenderBox>
{    public readonly scale: number | undefined = undefined as any;
    public readonly previousSibling: IRenderBox | undefined = undefined as any;
    public readonly nextSibling: IRenderBox | undefined = undefined as any;
    public readonly offset: IOffset = undefined as any;
public constructor(){
flutter.rendering.textParentData(this);}
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
