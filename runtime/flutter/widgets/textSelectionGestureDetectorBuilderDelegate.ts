
import { IGlobalKey } from "./globalKey";
import { IEditableTextState } from "./editableTextState";
export interface ITextSelectionGestureDetectorBuilderDelegate


{
getEditableTextKey: () => IGlobalKey<IEditableTextState>;
getForcePressEnabled: () => boolean;
getSelectionEnabled: () => boolean;
}