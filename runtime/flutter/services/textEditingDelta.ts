import { ITextRange } from "../../dart/ui/textRange";
import { ITextEditingValue } from "./textEditingValue";
import { ITextSelection } from "./textSelection";
declare const flutter: {
    services: {
        textEditingDelta: (
            this: void,
            textEditingDelta: ITextEditingDelta,
            props: {
                composing: ITextRange;
                oldText: string;
                selection: ITextSelection;
            }
        ) => ITextEditingDelta;
        textEditingDeltaFromJSON: (encoded: {
            [index: string]: any;
        }) => ITextEditingDelta;
    };
};
export interface ITextEditingDelta {
    oldText: string;
    selection: ITextSelection;
    composing: ITextRange;
    apply: (value: ITextEditingValue) => ITextEditingValue;
}
export class TextEditingDelta {
    public readonly oldText: string = undefined as any;
    public readonly selection: ITextSelection = undefined as any;
    public readonly composing: ITextRange = undefined as any;
    public constructor(props: {
        composing: ITextRange;
        oldText: string;
        selection: ITextSelection;
    }) {
        flutter.services.textEditingDelta(this, props);
    }
    public static fromJSON(encoded: {
        [index: string]: any;
    }): ITextEditingDelta {
        return flutter.services.textEditingDeltaFromJSON(encoded);
    }
    private readonly _dart_apply: (
        value: ITextEditingValue
    ) => ITextEditingValue = undefined as any;
    public apply(value: ITextEditingValue): ITextEditingValue {
        return this._dart_apply(value);
    }
}
