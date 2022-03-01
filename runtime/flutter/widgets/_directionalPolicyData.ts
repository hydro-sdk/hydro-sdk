
import { IList } from "../../dart/core/list";
import { I_DirectionalPolicyDataEntry } from "./_directionalPolicyDataEntry";
declare const flutter: {
widgets: {
_directionalPolicyData: (this: void, _directionalPolicyData: I_DirectionalPolicyData, props : {  history : IList<I_DirectionalPolicyDataEntry>,}) => I_DirectionalPolicyData
}
};
export interface I_DirectionalPolicyData


{
history: IList<I_DirectionalPolicyDataEntry>;
}export class _DirectionalPolicyData


{    public readonly history: IList<I_DirectionalPolicyDataEntry> = undefined as any;
public constructor( props : {  history : IList<I_DirectionalPolicyDataEntry>,}){
flutter.widgets._directionalPolicyData(this, props);}
}
