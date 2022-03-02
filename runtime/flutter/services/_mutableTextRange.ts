import { ITextRange } from "../../dart/ui/textRange";
import { ITextSelection } from "./textSelection";
declare const flutter: {
    services: {
        _mutableTextRange: (
            this: void,
            _mutableTextRange: I_MutableTextRange,
            base: number,
            extent: number
        ) => I_MutableTextRange;
        _mutableTextRangeFromComposingRange: (
            range: ITextRange
        ) => I_MutableTextRange | undefined;
        _mutableTextRangeFromTextSelection: (
            selection: ITextSelection
        ) => I_MutableTextRange | undefined;
    };
};
export interface I_MutableTextRange {
    base: number;
    extent: number;
}
export class _MutableTextRange {
    public readonly base: number = undefined as any;
    public readonly extent: number = undefined as any;
    public constructor(base: number, extent: number) {
        flutter.services._mutableTextRange(this, base, extent);
    }
    public static fromComposingRange(
        range: ITextRange
    ): I_MutableTextRange | undefined {
        return flutter.services._mutableTextRangeFromComposingRange(range);
    }
    public static fromTextSelection(
        selection: ITextSelection
    ): I_MutableTextRange | undefined {
        return flutter.services._mutableTextRangeFromTextSelection(selection);
    }
}
