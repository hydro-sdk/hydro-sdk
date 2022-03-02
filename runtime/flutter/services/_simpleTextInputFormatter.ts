import { ITextEditingValue } from "./textEditingValue";
import { ITextInputFormatter } from "./textInputFormatter";
declare const flutter: {
    services: {
        _simpleTextInputFormatter: (
            this: void,
            _simpleTextInputFormatter: I_SimpleTextInputFormatter,
            formatFunction: (
                oldValue: ITextEditingValue,
                newValue: ITextEditingValue
            ) => ITextEditingValue
        ) => I_SimpleTextInputFormatter;
    };
};
export interface I_SimpleTextInputFormatter {
    formatEditUpdate: (
        oldValue: ITextEditingValue,
        newValue: ITextEditingValue
    ) => ITextEditingValue;
    toString: () => string;
    getHashCode: () => number;
}
export class _SimpleTextInputFormatter implements ITextInputFormatter {
    public constructor(
        formatFunction: (
            oldValue: ITextEditingValue,
            newValue: ITextEditingValue
        ) => ITextEditingValue
    ) {
        flutter.services._simpleTextInputFormatter(this, formatFunction);
    }
    private readonly _dart_formatEditUpdate: (
        oldValue: ITextEditingValue,
        newValue: ITextEditingValue
    ) => ITextEditingValue = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public formatEditUpdate(
        oldValue: ITextEditingValue,
        newValue: ITextEditingValue
    ): ITextEditingValue {
        return this._dart_formatEditUpdate(oldValue, newValue);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
