import { ITextEditingValue } from "./textEditingValue";
declare const flutter: {
    services: {
        textInputFormatter: (
            this: void,
            textInputFormatter: ITextInputFormatter
        ) => ITextInputFormatter;
        textInputFormatterWithFunction: (
            formatFunction: (
                oldValue: ITextEditingValue,
                newValue: ITextEditingValue
            ) => ITextEditingValue
        ) => ITextInputFormatter;
    };
};
export interface ITextInputFormatter {
    formatEditUpdate: (
        oldValue: ITextEditingValue,
        newValue: ITextEditingValue
    ) => ITextEditingValue;
}
export class TextInputFormatter {
    public constructor() {
        flutter.services.textInputFormatter(this);
    }
    public static withFunction(
        formatFunction: (
            oldValue: ITextEditingValue,
            newValue: ITextEditingValue
        ) => ITextEditingValue
    ): ITextInputFormatter {
        return flutter.services.textInputFormatterWithFunction(formatFunction);
    }
    private readonly _dart_formatEditUpdate: (
        oldValue: ITextEditingValue,
        newValue: ITextEditingValue
    ) => ITextEditingValue = undefined as any;
    public formatEditUpdate(
        oldValue: ITextEditingValue,
        newValue: ITextEditingValue
    ): ITextEditingValue {
        return this._dart_formatEditUpdate(oldValue, newValue);
    }
}
