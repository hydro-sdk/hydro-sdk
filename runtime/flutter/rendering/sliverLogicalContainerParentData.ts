
import { ISliverLogicalParentData } from "./sliverLogicalParentData";
import { IContainerParentDataMixin } from "./containerParentDataMixin";
import { IRenderSliver } from "./renderSliver";
declare const flutter: {
rendering: {
sliverLogicalContainerParentData: (this: void, sliverLogicalContainerParentData: ISliverLogicalContainerParentData) => ISliverLogicalContainerParentData
}
};
export interface ISliverLogicalContainerParentData


{
previousSibling: IRenderSliver | undefined;
nextSibling: IRenderSliver | undefined;
layoutOffset: number | undefined;
detach: () => void;
toString: () => string;
getHashCode: () => number;
}export class SliverLogicalContainerParentData

 implements ISliverLogicalParentData, IContainerParentDataMixin<IRenderSliver>
{    public readonly previousSibling: IRenderSliver | undefined = undefined as any;
    public readonly nextSibling: IRenderSliver | undefined = undefined as any;
    public readonly layoutOffset: number | undefined = undefined as any;
public constructor(){
flutter.rendering.sliverLogicalContainerParentData(this);}
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
