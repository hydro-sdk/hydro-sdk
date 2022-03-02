import { ITextEditingValue } from "./textEditingValue";
import { ITextInputConfiguration } from "./textInputConfiguration";
export interface IAutofillClient {
    getAutofillId: () => string;
    getTextInputConfiguration: () => ITextInputConfiguration;
    autofill: (newEditingValue: ITextEditingValue) => void;
}
