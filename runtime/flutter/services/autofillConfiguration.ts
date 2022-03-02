import { IList } from "../../dart/core/list";
import { ITextEditingValue } from "./textEditingValue";
declare const flutter: {
    services: {
        autofillConfiguration: (
            this: void,
            autofillConfiguration: IAutofillConfiguration,
            props: {
                hintText?: string | undefined;
                autofillHints: IList<string>;
                currentEditingValue: ITextEditingValue;
                uniqueIdentifier: string;
            }
        ) => IAutofillConfiguration;
        autofillConfigurationDisabled: (this: void) => IAutofillConfiguration;
    };
};
export interface IAutofillConfiguration {
    enabled: boolean;
    uniqueIdentifier: string;
    autofillHints: IList<string>;
    currentEditingValue: ITextEditingValue;
    hintText: string | undefined;
    toJson: () => { [index: string]: any } | undefined;
}
export class AutofillConfiguration {
    public static disabled = flutter.services.autofillConfigurationDisabled();
    public readonly enabled: boolean = undefined as any;
    public readonly uniqueIdentifier: string = undefined as any;
    public readonly autofillHints: IList<string> = undefined as any;
    public readonly currentEditingValue: ITextEditingValue = undefined as any;
    public readonly hintText: string | undefined = undefined as any;
    public constructor(props: {
        hintText?: string | undefined;
        autofillHints: IList<string>;
        currentEditingValue: ITextEditingValue;
        uniqueIdentifier: string;
    }) {
        flutter.services.autofillConfiguration(this, props);
    }
    private readonly _dart_toJson: () => { [index: string]: any } | undefined =
        undefined as any;
    public toJson(): { [index: string]: any } | undefined {
        return this._dart_toJson();
    }
}
