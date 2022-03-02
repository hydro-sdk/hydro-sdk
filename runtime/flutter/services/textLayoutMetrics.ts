import { ITextPosition } from "../../dart/ui/textPosition";
import { ITextRange } from "../../dart/ui/textRange";
import { ITextSelection } from "./textSelection";
declare const flutter: {
    services: {
        textLayoutMetrics: (
            this: void,
            textLayoutMetrics: ITextLayoutMetrics
        ) => ITextLayoutMetrics;
        textLayoutMetricsIsWhitespace: (codeUnit: number) => boolean;
    };
};
export interface ITextLayoutMetrics {
    getLineAtOffset: (position: ITextPosition) => ITextSelection;
    getWordBoundary: (position: ITextPosition) => ITextRange;
    getTextPositionAbove: (position: ITextPosition) => ITextPosition;
    getTextPositionBelow: (position: ITextPosition) => ITextPosition;
}
export class TextLayoutMetrics {
    public constructor() {
        flutter.services.textLayoutMetrics(this);
    }
    public static isWhitespace(codeUnit: number): boolean {
        return flutter.services.textLayoutMetricsIsWhitespace(codeUnit);
    }
    private readonly _dart_getLineAtOffset: (
        position: ITextPosition
    ) => ITextSelection = undefined as any;
    private readonly _dart_getWordBoundary: (
        position: ITextPosition
    ) => ITextRange = undefined as any;
    private readonly _dart_getTextPositionAbove: (
        position: ITextPosition
    ) => ITextPosition = undefined as any;
    private readonly _dart_getTextPositionBelow: (
        position: ITextPosition
    ) => ITextPosition = undefined as any;
    public getLineAtOffset(position: ITextPosition): ITextSelection {
        return this._dart_getLineAtOffset(position);
    }
    public getWordBoundary(position: ITextPosition): ITextRange {
        return this._dart_getWordBoundary(position);
    }
    public getTextPositionAbove(position: ITextPosition): ITextPosition {
        return this._dart_getTextPositionAbove(position);
    }
    public getTextPositionBelow(position: ITextPosition): ITextPosition {
        return this._dart_getTextPositionBelow(position);
    }
}
