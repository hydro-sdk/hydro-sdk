import { IList } from "../core/list";
import { BoxHeightStyle } from "./boxHeightStyle";
import { BoxWidthStyle } from "./boxWidthStyle";
import { ILineMetrics } from "./lineMetrics";
import { IOffset } from "./offset";
import { IParagraphConstraints } from "./paragraphConstraints";
import { ITextBox } from "./textBox";
import { ITextPosition } from "./textPosition";
import { ITextRange } from "./textRange";
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
