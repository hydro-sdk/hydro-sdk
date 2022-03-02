import { ITextRange } from "../../dart/ui/textRange";
import { ITextEditingDelta } from "./textEditingDelta";
import { ITextEditingValue } from "./textEditingValue";
import { ITextSelection } from "./textSelection";
declare const flutter: {
    services: {
        textEditingDeltaReplacement: (
            this: void,
            textEditingDeltaReplacement: ITextEditingDeltaReplacement,
            props: {
                composing: ITextRange;
                oldText: string;
                replacedRange: ITextRange;
                replacementText: string;
                selection: ITextSelection;
            }
        ) => ITextEditingDeltaReplacement;
    };
};
export interface ITextEditingDeltaReplacement {
    replacementText: string;
    replacedRange: ITextRange;
    oldText: string;
    selection: ITextSelection;
    composing: ITextRange;
    getTextReplaced: () => string;
    apply: (value: ITextEditingValue) => ITextEditingValue;
    toString: () => string;
    getHashCode: () => number;
}
export class TextEditingDeltaReplacement implements ITextEditingDelta {
    public readonly replacementText: string = undefined as any;
    public readonly replacedRange: ITextRange = undefined as any;
    public readonly oldText: string = undefined as any;
    public readonly selection: ITextSelection = undefined as any;
    public readonly composing: ITextRange = undefined as any;
    public constructor(props: {
        composing: ITextRange;
        oldText: string;
        replacedRange: ITextRange;
        replacementText: string;
        selection: ITextSelection;
    }) {
        flutter.services.textEditingDeltaReplacement(this, props);
    }
    private readonly _dart_getTextReplaced: () => string = undefined as any;
    private readonly _dart_apply: (
        value: ITextEditingValue
    ) => ITextEditingValue = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getTextReplaced(): string {
        return this._dart_getTextReplaced();
    }
    public apply(value: ITextEditingValue): ITextEditingValue {
        return this._dart_apply(value);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
