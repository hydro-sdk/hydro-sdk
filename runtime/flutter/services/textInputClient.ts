import { IAutofillScope } from "./autofillScope";
import { IRawFloatingCursorPoint } from "./rawFloatingCursorPoint";
import { ITextEditingValue } from "./textEditingValue";
import { TextInputAction } from "./textInputAction";
export interface ITextInputClient {
    getCurrentTextEditingValue: () => ITextEditingValue | undefined;
    getCurrentAutofillScope: () => IAutofillScope | undefined;
    updateEditingValue: (value: ITextEditingValue) => void;
    performAction: (action: TextInputAction) => void;
    performPrivateCommand: (
        action: string,
        data: { [index: string]: any }
    ) => void;
    updateFloatingCursor: (point: IRawFloatingCursorPoint) => void;
    showAutocorrectionPromptRect: (start: number, end: number) => void;
    connectionClosed: () => void;
}
