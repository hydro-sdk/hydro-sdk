import { IEditableTextState } from "./editableTextState";
import { IGlobalKey } from "./globalKey";
export interface ITextSelectionGestureDetectorBuilderDelegate {
    getEditableTextKey: () => IGlobalKey<IEditableTextState>;
    getForcePressEnabled: () => boolean;
    getSelectionEnabled: () => boolean;
}
