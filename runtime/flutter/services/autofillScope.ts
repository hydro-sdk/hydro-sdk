import { IIterable } from "../../dart/core/iterable";
import { IAutofillClient } from "./autofillClient";
import { ITextInputClient } from "./textInputClient";
import { ITextInputConfiguration } from "./textInputConfiguration";
import { ITextInputConnection } from "./textInputConnection";
export interface IAutofillScope {
    getAutofillClient: (autofillId: string) => IAutofillClient | undefined;
    getAutofillClients: () => IIterable<IAutofillClient>;
    attach: (
        trigger: ITextInputClient,
        configuration: ITextInputConfiguration
    ) => ITextInputConnection;
}
