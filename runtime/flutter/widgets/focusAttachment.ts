
import { IFocusNode } from "./focusNode";
export interface IFocusAttachment


{
getIsAttached: () => boolean;
detach: () => void;
reparent: ( props? : {  parent? : IFocusNode | undefined,}) => void;
}