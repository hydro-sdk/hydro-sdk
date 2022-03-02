import { IStringBuffer } from "../../dart/core/stringBuffer";
import { I_MutableTextRange } from "./_mutableTextRange";
import { ITextEditingValue } from "./textEditingValue";
declare const flutter: {
    services: {
        _textEditingValueAccumulator: (
            this: void,
            _textEditingValueAccumulator: I_TextEditingValueAccumulator,
            inputValue: ITextEditingValue
        ) => I_TextEditingValueAccumulator;
    };
};
export interface I_TextEditingValueAccumulator {
    inputValue: ITextEditingValue;
    stringBuffer: IStringBuffer;
    selection: I_MutableTextRange | undefined;
    composingRegion: I_MutableTextRange | undefined;
    debugFinalized: boolean;
    finalize: () => ITextEditingValue;
}
export class _TextEditingValueAccumulator {
    public readonly inputValue: ITextEditingValue = undefined as any;
    public readonly stringBuffer: IStringBuffer = undefined as any;
    public readonly selection: I_MutableTextRange | undefined =
        undefined as any;
    public readonly composingRegion: I_MutableTextRange | undefined =
        undefined as any;
    public readonly debugFinalized: boolean = undefined as any;
    public constructor(inputValue: ITextEditingValue) {
        flutter.services._textEditingValueAccumulator(this, inputValue);
    }
    private readonly _dart_finalize: () => ITextEditingValue = undefined as any;
    public finalize(): ITextEditingValue {
        return this._dart_finalize();
    }
}
