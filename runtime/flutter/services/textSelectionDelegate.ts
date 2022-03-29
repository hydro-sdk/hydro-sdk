import { IFuture } from "../../dart/async/future";
import { ITextPosition } from "../../dart/ui/textPosition";
import { SelectionChangedCause } from "./selectionChangedCause";
import { ITextEditingValue } from "./textEditingValue";
export interface ITextSelectionDelegate {
    getTextEditingValue: () => ITextEditingValue;
    setTextEditingValue: (value: ITextEditingValue) => void;
    userUpdateTextEditingValue: (
        value: ITextEditingValue,
        cause: SelectionChangedCause
    ) => void;
    hideToolbar: (hideHandles: boolean) => void;
    bringIntoView: (position: ITextPosition) => void;
    getCutEnabled: () => boolean;
    getCopyEnabled: () => boolean;
    getPasteEnabled: () => boolean;
    getSelectAllEnabled: () => boolean;
    cutSelection: (cause: SelectionChangedCause) => void;
    pasteText: (cause: SelectionChangedCause) => IFuture<void>;
    selectAll: (cause: SelectionChangedCause) => void;
    copySelection: (cause: SelectionChangedCause) => void;
}
