
import { IElement } from "./element";
import { IDuration } from "../../dart/core/duration";
import { IList } from "../../dart/core/list";
import { I_LocationCount } from "./_locationCount";
declare const flutter: {
widgets: {
_elementLocationStatsTracker: (this: void, _elementLocationStatsTracker: I_ElementLocationStatsTracker) => I_ElementLocationStatsTracker
}
};
export interface I_ElementLocationStatsTracker


{
active: IList<I_LocationCount>;
newLocations: IList<I_LocationCount>;
add: (element: IElement) => void;
resetCounts: () => void;
exportToJson: (startTime: IDuration) => {[index: string]: any};
}export class _ElementLocationStatsTracker


{    public readonly active: IList<I_LocationCount> = undefined as any;
    public readonly newLocations: IList<I_LocationCount> = undefined as any;
public constructor(){
flutter.widgets._elementLocationStatsTracker(this);}
    private readonly _dart_add: (element: IElement) => void = undefined as any;
    private readonly _dart_resetCounts: () => void = undefined as any;
    private readonly _dart_exportToJson: (startTime: IDuration) => {[index: string]: any} = undefined as any;
public add(element: IElement) : void {
    return this._dart_add(element);
}
public resetCounts() : void {
    return this._dart_resetCounts();
}
public exportToJson(startTime: IDuration) : {[index: string]: any} {
    return this._dart_exportToJson(startTime);
}
}
