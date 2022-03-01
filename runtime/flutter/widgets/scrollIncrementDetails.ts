
import { IScrollMetrics } from "./scrollMetrics";
import { ScrollIncrementType } from "./scrollIncrementType";
declare const flutter: {
widgets: {
scrollIncrementDetails: (this: void, scrollIncrementDetails: IScrollIncrementDetails, props : {  metrics : IScrollMetrics, type : ScrollIncrementType,}) => IScrollIncrementDetails
}
};
export interface IScrollIncrementDetails


{
type: ScrollIncrementType;
metrics: IScrollMetrics;
}export class ScrollIncrementDetails


{    public readonly type: ScrollIncrementType = undefined as any;
    public readonly metrics: IScrollMetrics = undefined as any;
public constructor( props : {  metrics : IScrollMetrics, type : ScrollIncrementType,}){
flutter.widgets.scrollIncrementDetails(this, props);}
}
