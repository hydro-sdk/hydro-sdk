import { ITextRange } from "../../dart/ui/textRange";
import { ITextEditingDelta } from "./textEditingDelta";
import { ITextEditingValue } from "./textEditingValue";
import { ITextSelection } from "./textSelection";
declare const flutter: {
    services: {
        textEditingDeltaDeletion: (
            this: void,
            textEditingDeltaDeletion: ITextEditingDeltaDeletion,
            props: {
                composing: ITextRange;
                deletedRange: ITextRange;
                oldText: string;
                selection: ITextSelection;
            }
        ) => ITextEditingDeltaDeletion;
    };
};
export interface ITextEditingDeltaDeletion {
    deletedRange: ITextRange;
    oldText: string;
    selection: ITextSelection;
    composing: ITextRange;
    getTextDeleted: () => string;
    apply: (value: ITextEditingValue) => ITextEditingValue;
    toString: () => string;
    getHashCode: () => number;
}
export class TextEditingDeltaDeletion implements ITextEditingDelta {
    public readonly deletedRange: ITextRange = undefined as any;
    public readonly oldText: string = undefined as any;
    public readonly selection: ITextSelection = undefined as any;
    public readonly composing: ITextRange = undefined as any;
    public constructor(props: {
        composing: ITextRange;
        deletedRange: ITextRange;
        oldText: string;
        selection: ITextSelection;
    }) {
        flutter.services.textEditingDeltaDeletion(this, props);
    }
    private readonly _dart_getTextDeleted: () => string = undefined as any;
    private readonly _dart_apply: (
        value: ITextEditingValue
    ) => ITextEditingValue = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getTextDeleted(): string {
        return this._dart_getTextDeleted();
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
