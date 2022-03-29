import { IAutofillScope } from "./autofillScope";
import { ITextInputClient } from "./textInputClient";
import { ITextInputConfiguration } from "./textInputConfiguration";
import { ITextInputConnection } from "./textInputConnection";
export interface IAutofillScopeMixin extends IAutofillScope {
    attach: (
        trigger: ITextInputClient,
        configuration: ITextInputConfiguration
    ) => ITextInputConnection;
}
