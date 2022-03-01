
import { IContainerBoxParentData } from "../rendering/containerBoxParentData";
import { IRenderBox } from "../rendering/renderBox";
import { IContainerParentDataMixin } from "../rendering/containerParentDataMixin";
import { IOffset } from "../../dart/ui/offset";
declare const flutter: {
widgets: {
toolbarItemsParentData: (this: void, toolbarItemsParentData: IToolbarItemsParentData) => IToolbarItemsParentData
}
};
export interface IToolbarItemsParentData


{
shouldPaint: boolean;
previousSibling: IRenderBox | undefined;
nextSibling: IRenderBox | undefined;
offset: IOffset;
toString: () => string;
detach: () => void;
getHashCode: () => number;
}export class ToolbarItemsParentData

 implements Omit<IContainerBoxParentData<IRenderBox>, "detach" | "previousSibling" | "nextSibling">, IContainerParentDataMixin<IRenderBox>
{    public readonly shouldPaint: boolean = undefined as any;
    public readonly previousSibling: IRenderBox | undefined = undefined as any;
    public readonly nextSibling: IRenderBox | undefined = undefined as any;
    public readonly offset: IOffset = undefined as any;
public constructor(){
flutter.widgets.toolbarItemsParentData(this);}
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
