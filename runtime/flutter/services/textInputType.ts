import { List } from "../../dart/core/list";
declare const flutter: {
    services: {
        textInputTypeText: (this: void) => ITextInputType;
        textInputTypeMultiline: (this: void) => ITextInputType;
        textInputTypePhone: (this: void) => ITextInputType;
        textInputTypeDatetime: (this: void) => ITextInputType;
        textInputTypeEmailAddress: (this: void) => ITextInputType;
        textInputTypeUrl: (this: void) => ITextInputType;
        textInputTypeVisiblePassword: (this: void) => ITextInputType;
        textInputTypeName: (this: void) => ITextInputType;
        textInputTypeStreetAddress: (this: void) => ITextInputType;
        textInputTypeNone: (this: void) => ITextInputType;
    };
};
export interface ITextInputType {
    index: number;
    signed: boolean | undefined;
    decimal: boolean | undefined;
    toJson: () => { [index: string]: any };
    toString: () => string;
    getHashCode: () => number;
}
export class TextInputType {
    public static text = flutter.services.textInputTypeText();
    public static multiline = flutter.services.textInputTypeMultiline();
    public static number = TextInputType.numberWithOptions();
    public static phone = flutter.services.textInputTypePhone();
    public static datetime = flutter.services.textInputTypeDatetime();
    public static emailAddress = flutter.services.textInputTypeEmailAddress();
    public static url = flutter.services.textInputTypeUrl();
    public static visiblePassword =
        flutter.services.textInputTypeVisiblePassword();
    public static name = flutter.services.textInputTypeName();
    public static streetAddress = flutter.services.textInputTypeStreetAddress();
    public static none = flutter.services.textInputTypeNone();
    public static values = List.fromArray([
        TextInputType.text,
        TextInputType.multiline,
        TextInputType.number,
        TextInputType.phone,
        TextInputType.datetime,
        TextInputType.emailAddress,
        TextInputType.url,
        TextInputType.visiblePassword,
        TextInputType.name,
        TextInputType.streetAddress,
        TextInputType.none,
    ]);
    public static _names = List.fromArray([
        "text",
        "multiline",
        "number",
        "phone",
        "datetime",
        "emailAddress",
        "url",
        "visiblePassword",
        "name",
        "address",
        "none",
    ]);
    public readonly index: number = undefined as any;
    public readonly signed: boolean | undefined = undefined as any;
    public readonly decimal: boolean | undefined = undefined as any;
    private readonly _dart_toJson: () => { [index: string]: any } =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public toJson(): { [index: string]: any } {
        return this._dart_toJson();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
