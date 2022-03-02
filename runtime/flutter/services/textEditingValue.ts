import { ITextRange, TextRange } from "../../dart/ui/textRange";
import { ITextSelection, TextSelection } from "./textSelection";
declare const flutter: {
    services: {
        textEditingValue: (
            this: void,
            textEditingValue: ITextEditingValue,
            props: {
                composing: ITextRange;
                selection: ITextSelection;
                text: string;
            }
        ) => ITextEditingValue;
        textEditingValueFromJSON: (encoded: {
            [index: string]: any;
        }) => ITextEditingValue;
    };
};
export interface ITextEditingValue {
    text: string;
    selection: ITextSelection;
    composing: ITextRange;
    copyWith: (props?: {
        composing?: ITextRange | undefined;
        selection?: ITextSelection | undefined;
        text?: string | undefined;
    }) => ITextEditingValue;
    getIsComposingRangeValid: () => boolean;
    toJSON: () => { [index: string]: any };
    toString: () => string;
    getHashCode: () => number;
}
export class TextEditingValue {
    public static empty = new TextEditingValue();
    public readonly text: string = undefined as any;
    public readonly selection: ITextSelection = undefined as any;
    public readonly composing: ITextRange = undefined as any;
    public constructor(props: {
        composing?: ITextRange;
        selection?: ITextSelection;
        text?: string;
    }) {
        flutter.services.textEditingValue(this, {
            ...textEditingValueDefaultProps,
            ...props,
        });
    }
    public static fromJSON(encoded: {
        [index: string]: any;
    }): ITextEditingValue {
        return flutter.services.textEditingValueFromJSON(encoded);
    }
    private readonly _dart_copyWith: (props?: {
        composing?: ITextRange | undefined;
        selection?: ITextSelection | undefined;
        text?: string | undefined;
    }) => ITextEditingValue = undefined as any;
    private readonly _dart_getIsComposingRangeValid: () => boolean =
        undefined as any;
    private readonly _dart_toJSON: () => { [index: string]: any } =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public copyWith(props?: {
        composing?: ITextRange | undefined;
        selection?: ITextSelection | undefined;
        text?: string | undefined;
    }): ITextEditingValue {
        return this._dart_copyWith(props);
    }
    public getIsComposingRangeValid(): boolean {
        return this._dart_getIsComposingRangeValid();
    }
    public toJSON(): { [index: string]: any } {
        return this._dart_toJSON();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const textEditingValueDefaultProps = {
    composing: TextRange.empty,
    selection: TextSelection.collapsed({ offset: -1 }),
    text: "",
};
