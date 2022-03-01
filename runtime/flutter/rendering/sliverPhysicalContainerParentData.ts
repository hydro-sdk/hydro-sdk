
import { ISliverPhysicalParentData } from "./sliverPhysicalParentData";
import { IMatrix4 } from "../../vector_math/matrix4";
import { IOffset } from "../../dart/ui/offset";
import { IContainerParentDataMixin } from "./containerParentDataMixin";
import { IRenderSliver } from "./renderSliver";
declare const flutter: {
rendering: {
sliverPhysicalContainerParentData: (this: void, sliverPhysicalContainerParentData: ISliverPhysicalContainerParentData) => ISliverPhysicalContainerParentData
}
};
export interface ISliverPhysicalContainerParentData


{
previousSibling: IRenderSliver | undefined;
nextSibling: IRenderSliver | undefined;
paintOffset: IOffset;
detach: () => void;
applyPaintTransform: (transform: IMatrix4) => void;
toString: () => string;
getHashCode: () => number;
}export class SliverPhysicalContainerParentData

 implements ISliverPhysicalParentData, IContainerParentDataMixin<IRenderSliver>
{    public readonly previousSibling: IRenderSliver | undefined = undefined as any;
    public readonly nextSibling: IRenderSliver | undefined = undefined as any;
    public readonly paintOffset: IOffset = undefined as any;
public constructor(){
flutter.rendering.sliverPhysicalContainerParentData(this);}
    private readonly _dart_detach: () => void = undefined as any;
    private readonly _dart_applyPaintTransform: (transform: IMatrix4) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public detach() : void {
    return this._dart_detach();
}
public applyPaintTransform(transform: IMatrix4) : void {
    return this._dart_applyPaintTransform(transform);
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
