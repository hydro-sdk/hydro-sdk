import { IList } from "../../dart/core/list";
import { IAutofillScope } from "./autofillScope";
import { IRawFloatingCursorPoint } from "./rawFloatingCursorPoint";
import { ITextEditingDelta } from "./textEditingDelta";
import { ITextEditingValue } from "./textEditingValue";
import { TextInputAction } from "./textInputAction";
import { ITextInputClient } from "./textInputClient";
export interface IDeltaTextInputClient extends ITextInputClient {
    updateEditingValueWithDeltas: (
        textEditingDeltas: IList<ITextEditingDelta>
    ) => void;
}
