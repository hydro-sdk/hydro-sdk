
import { IFocusTraversalPolicy } from "./focusTraversalPolicy";
import { IList } from "../../dart/core/list";
import { IFocusNode } from "./focusNode";
import { I_FocusTraversalGroupMarker } from "./_focusTraversalGroupMarker";
declare const flutter: {
widgets: {
_focusTraversalGroupInfo: (this: void, _focusTraversalGroupInfo: I_FocusTraversalGroupInfo, marker?: I_FocusTraversalGroupMarker | undefined, props? : {  defaultPolicy? : IFocusTraversalPolicy | undefined, members? : IList<IFocusNode> | undefined,}) => I_FocusTraversalGroupInfo
}
};
export interface I_FocusTraversalGroupInfo


{
groupNode: IFocusNode | undefined;
policy: IFocusTraversalPolicy;
members: IList<IFocusNode>;
}export class _FocusTraversalGroupInfo


{    public readonly groupNode: IFocusNode | undefined = undefined as any;
    public readonly policy: IFocusTraversalPolicy = undefined as any;
    public readonly members: IList<IFocusNode> = undefined as any;
public constructor(marker?: I_FocusTraversalGroupMarker | undefined, props? : {  defaultPolicy? : IFocusTraversalPolicy | undefined, members? : IList<IFocusNode> | undefined,}){
flutter.widgets._focusTraversalGroupInfo(this, marker, props);}
}
