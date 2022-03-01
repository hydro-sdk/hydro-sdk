
import { ISliverLogicalParentData } from "./sliverLogicalParentData";
import { IParentData } from "./parentData";
import { IContainerParentDataMixin } from "./containerParentDataMixin";
import { IKeepAliveParentDataMixin } from "./keepAliveParentDataMixin";
import { IRenderBox } from "./renderBox";
declare const flutter: {
rendering: {
sliverMultiBoxAdaptorParentData: (this: void, sliverMultiBoxAdaptorParentData: ISliverMultiBoxAdaptorParentData) => ISliverMultiBoxAdaptorParentData
}
};
export interface ISliverMultiBoxAdaptorParentData


{
index: number | undefined;
previousSibling: IRenderBox | undefined;
nextSibling: IRenderBox | undefined;
keepAlive: boolean;
layoutOffset: number | undefined;
getKeptAlive: () => boolean;
toString: () => string;
detach: () => void;
getHashCode: () => number;
}export class SliverMultiBoxAdaptorParentData

 implements ISliverLogicalParentData, IContainerParentDataMixin<IRenderBox>, IKeepAliveParentDataMixin, IParentData
{    public readonly index: number | undefined = undefined as any;
    public readonly previousSibling: IRenderBox | undefined = undefined as any;
    public readonly nextSibling: IRenderBox | undefined = undefined as any;
    public readonly keepAlive: boolean = undefined as any;
    public readonly layoutOffset: number | undefined = undefined as any;
public constructor(){
flutter.rendering.sliverMultiBoxAdaptorParentData(this);}
    private readonly _dart_getKeptAlive: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_detach: () => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getKeptAlive() : boolean {
    return this._dart_getKeptAlive();
}
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
