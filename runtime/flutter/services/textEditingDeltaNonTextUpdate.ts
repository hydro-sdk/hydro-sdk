import { ITextRange } from "../../dart/ui/textRange";
import { ITextEditingDelta } from "./textEditingDelta";
import { ITextEditingValue } from "./textEditingValue";
import { ITextSelection } from "./textSelection";
declare const flutter: {
    services: {
        textEditingDeltaNonTextUpdate: (
            this: void,
            textEditingDeltaNonTextUpdate: ITextEditingDeltaNonTextUpdate,
            props: {
                composing: ITextRange;
                oldText: string;
                selection: ITextSelection;
            }
        ) => ITextEditingDeltaNonTextUpdate;
    };
};
export interface ITextEditingDeltaNonTextUpdate {
    oldText: string;
    selection: ITextSelection;
    composing: ITextRange;
    apply: (value: ITextEditingValue) => ITextEditingValue;
    toString: () => string;
    getHashCode: () => number;
}
export class TextEditingDeltaNonTextUpdate implements ITextEditingDelta {
    public readonly oldText: string = undefined as any;
    public readonly selection: ITextSelection = undefined as any;
    public readonly composing: ITextRange = undefined as any;
    public constructor(props: {
        composing: ITextRange;
        oldText: string;
        selection: ITextSelection;
    }) {
        flutter.services.textEditingDeltaNonTextUpdate(this, props);
    }
    private readonly _dart_apply: (
        value: ITextEditingValue
    ) => ITextEditingValue = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
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
