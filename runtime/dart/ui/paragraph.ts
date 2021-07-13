import { IList } from "../core/list";
import { BoxHeightStyle } from "./boxHeightStyle";
import { BoxWidthStyle } from "./boxWidthStyle";
import { ILineMetrics } from "./lineMetrics";
import { IOffset } from "./offset";
import { IParagraphConstraints } from "./paragraphConstraints";
import { ITextBox } from "./textBox";
import { ITextPosition } from "./textPosition";
import { ITextRange } from "./textRange";
declare const dart: {
    ui: {};
};
export interface IParagraph {
    getWidth: () => number;
    getHeight: () => number;
    getLongestLine: () => number;
    getMinIntrinsicWidth: () => number;
    getMaxIntrinsicWidth: () => number;
    getAlphabeticBaseline: () => number;
    getIdeographicBaseline: () => number;
    getDidExceedMaxLines: () => boolean;
    layout: (constraints: IParagraphConstraints) => void;
    getBoxesForRange: (
        start: number,
        end: number,
        props: { boxHeightStyle: BoxHeightStyle; boxWidthStyle: BoxWidthStyle }
    ) => IList<ITextBox>;
    getBoxesForPlaceholders: () => IList<ITextBox>;
    getPositionForOffset: (offset: IOffset) => ITextPosition;
    getWordBoundary: (position: ITextPosition) => ITextRange;
    getLineBoundary: (position: ITextPosition) => ITextRange;
    computeLineMetrics: () => IList<ILineMetrics>;
}
export class Paragraph {
    private readonly _dart_getWidth: () => number = undefined as any;
    private readonly _dart_getHeight: () => number = undefined as any;
    private readonly _dart_getLongestLine: () => number = undefined as any;
    private readonly _dart_getMinIntrinsicWidth: () => number =
        undefined as any;
    private readonly _dart_getMaxIntrinsicWidth: () => number =
        undefined as any;
    private readonly _dart_getAlphabeticBaseline: () => number =
        undefined as any;
    private readonly _dart_getIdeographicBaseline: () => number =
        undefined as any;
    private readonly _dart_getDidExceedMaxLines: () => boolean =
        undefined as any;
    private readonly _dart_layout: (
        constraints: IParagraphConstraints
    ) => void = undefined as any;
    private readonly _dart_getBoxesForRange: (
        start: number,
        end: number,
        props: { boxHeightStyle: BoxHeightStyle; boxWidthStyle: BoxWidthStyle }
    ) => IList<ITextBox> = undefined as any;
    private readonly _dart_getBoxesForPlaceholders: () => IList<ITextBox> =
        undefined as any;
    private readonly _dart_getPositionForOffset: (
        offset: IOffset
    ) => ITextPosition = undefined as any;
    private readonly _dart_getWordBoundary: (
        position: ITextPosition
    ) => ITextRange = undefined as any;
    private readonly _dart_getLineBoundary: (
        position: ITextPosition
    ) => ITextRange = undefined as any;
    private readonly _dart_computeLineMetrics: () => IList<ILineMetrics> =
        undefined as any;
    public getWidth(): number {
        return this._dart_getWidth();
    }
    public getHeight(): number {
        return this._dart_getHeight();
    }
    public getLongestLine(): number {
        return this._dart_getLongestLine();
    }
    public getMinIntrinsicWidth(): number {
        return this._dart_getMinIntrinsicWidth();
    }
    public getMaxIntrinsicWidth(): number {
        return this._dart_getMaxIntrinsicWidth();
    }
    public getAlphabeticBaseline(): number {
        return this._dart_getAlphabeticBaseline();
    }
    public getIdeographicBaseline(): number {
        return this._dart_getIdeographicBaseline();
    }
    public getDidExceedMaxLines(): boolean {
        return this._dart_getDidExceedMaxLines();
    }
    public layout(constraints: IParagraphConstraints): void {
        return this._dart_layout(constraints);
    }
    public getBoxesForRange(
        start: number,
        end: number,
        props: {
            boxHeightStyle?: BoxHeightStyle;
            boxWidthStyle?: BoxWidthStyle;
        }
    ): IList<ITextBox> {
        return this._dart_getBoxesForRange(start, end, {
            ...getBoxesForRangeDefaultProps,
            ...props,
        });
    }
    public getBoxesForPlaceholders(): IList<ITextBox> {
        return this._dart_getBoxesForPlaceholders();
    }
    public getPositionForOffset(offset: IOffset): ITextPosition {
        return this._dart_getPositionForOffset(offset);
    }
    public getWordBoundary(position: ITextPosition): ITextRange {
        return this._dart_getWordBoundary(position);
    }
    public getLineBoundary(position: ITextPosition): ITextRange {
        return this._dart_getLineBoundary(position);
    }
    public computeLineMetrics(): IList<ILineMetrics> {
        return this._dart_computeLineMetrics();
    }
}
const getBoxesForRangeDefaultProps = {
    boxHeightStyle: BoxHeightStyle.tight,
    boxWidthStyle: BoxWidthStyle.tight,
};
