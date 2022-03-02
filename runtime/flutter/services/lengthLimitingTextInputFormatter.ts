import { TargetPlatform } from "../foundation/targetPlatform";
import { MaxLengthEnforcement } from "./maxLengthEnforcement";
import { ITextEditingValue } from "./textEditingValue";
import { ITextInputFormatter } from "./textInputFormatter";
declare const flutter: {
    services: {
        lengthLimitingTextInputFormatter: (
            this: void,
            lengthLimitingTextInputFormatter: ILengthLimitingTextInputFormatter,
            maxLength?: number | undefined,
            props?: { maxLengthEnforcement?: MaxLengthEnforcement | undefined }
        ) => ILengthLimitingTextInputFormatter;
        lengthLimitingTextInputFormatterGetDefaultMaxLengthEnforcement: (
            platform?: TargetPlatform | undefined
        ) => MaxLengthEnforcement;
        lengthLimitingTextInputFormatterTruncate: (
            value: ITextEditingValue,
            maxLength: number
        ) => ITextEditingValue;
    };
};
export interface ILengthLimitingTextInputFormatter {
    maxLength: number | undefined;
    maxLengthEnforcement: MaxLengthEnforcement | undefined;
    formatEditUpdate: (
        oldValue: ITextEditingValue,
        newValue: ITextEditingValue
    ) => ITextEditingValue;
    toString: () => string;
    getHashCode: () => number;
}
export class LengthLimitingTextInputFormatter implements ITextInputFormatter {
    public readonly maxLength: number | undefined = undefined as any;
    public readonly maxLengthEnforcement: MaxLengthEnforcement | undefined =
        undefined as any;
    public constructor(
        maxLength?: number | undefined,
        props?: { maxLengthEnforcement?: MaxLengthEnforcement | undefined }
    ) {
        flutter.services.lengthLimitingTextInputFormatter(
            this,
            maxLength,
            props
        );
    }
    public static getDefaultMaxLengthEnforcement(
        platform?: TargetPlatform | undefined
    ): MaxLengthEnforcement {
        return flutter.services.lengthLimitingTextInputFormatterGetDefaultMaxLengthEnforcement(
            platform
        );
    }
    public static truncate(
        value: ITextEditingValue,
        maxLength: number
    ): ITextEditingValue {
        return flutter.services.lengthLimitingTextInputFormatterTruncate(
            value,
            maxLength
        );
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
