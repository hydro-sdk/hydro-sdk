
import { ISliverMultiBoxAdaptorParentData } from "./sliverMultiBoxAdaptorParentData";
import { IContainerParentDataMixin } from "./containerParentDataMixin";
import { IKeepAliveParentDataMixin } from "./keepAliveParentDataMixin";
import { IParentData } from "./parentData";
import { IRenderBox } from "./renderBox";
declare const flutter: {
rendering: {
sliverGridParentData: (this: void, sliverGridParentData: ISliverGridParentData) => ISliverGridParentData
}
};
export interface ISliverGridParentData


{
crossAxisOffset: number | undefined;
index: number | undefined;
previousSibling: IRenderBox | undefined;
nextSibling: IRenderBox | undefined;
keepAlive: boolean;
layoutOffset: number | undefined;
toString: () => string;
getKeptAlive: () => boolean;
detach: () => void;
getHashCode: () => number;
}export class SliverGridParentData

 implements Omit<ISliverMultiBoxAdaptorParentData, "detach" | "previousSibling" | "nextSibling" | "toString" | "keptAlive" | "keepAlive">, IContainerParentDataMixin<IRenderBox>, IKeepAliveParentDataMixin, IParentData
{    public readonly crossAxisOffset: number | undefined = undefined as any;
    public readonly index: number | undefined = undefined as any;
    public readonly previousSibling: IRenderBox | undefined = undefined as any;
    public readonly nextSibling: IRenderBox | undefined = undefined as any;
    public readonly keepAlive: boolean = undefined as any;
    public readonly layoutOffset: number | undefined = undefined as any;
public constructor(){
flutter.rendering.sliverGridParentData(this);}
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getKeptAlive: () => boolean = undefined as any;
    private readonly _dart_detach: () => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public toString() : string {
    return this._dart_toString();
}
public getKeptAlive() : boolean {
    return this._dart_getKeptAlive();
}
public detach() : void {
    return this._dart_detach();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
