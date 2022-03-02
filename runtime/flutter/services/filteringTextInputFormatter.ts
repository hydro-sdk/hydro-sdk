import { IPattern } from "../../dart/core/pattern";
import { ITextEditingValue } from "./textEditingValue";
import { ITextInputFormatter } from "./textInputFormatter";
declare const flutter: {
    services: {
        filteringTextInputFormatter: (
            this: void,
            filteringTextInputFormatter: IFilteringTextInputFormatter,
            filterPattern: IPattern,
            props: { replacementString: string; allow: boolean }
        ) => IFilteringTextInputFormatter;
    };
};
export interface IFilteringTextInputFormatter {
    filterPattern: IPattern;
    allow: boolean;
    replacementString: string;
    formatEditUpdate: (
        oldValue: ITextEditingValue,
        newValue: ITextEditingValue
    ) => ITextEditingValue;
    toString: () => string;
    getHashCode: () => number;
}
export class FilteringTextInputFormatter implements ITextInputFormatter {
    public readonly filterPattern: IPattern = undefined as any;
    public readonly allow: boolean = undefined as any;
    public readonly replacementString: string = undefined as any;
    public constructor(
        filterPattern: IPattern,
        props: { replacementString?: string; allow: boolean }
    ) {
        flutter.services.filteringTextInputFormatter(this, filterPattern, {
            ...filteringTextInputFormatterDefaultProps,
            ...props,
        });
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
const filteringTextInputFormatterDefaultProps = {
    replacementString: "",
};
