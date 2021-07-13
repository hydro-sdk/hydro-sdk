import { IList } from "../core/list";
import { IParagraph } from "./paragraph";
import { IParagraphStyle } from "./paragraphStyle";
import { PlaceholderAlignment } from "./placeholderAlignment";
import { TextBaseline } from "./textBaseline";
import { ITextStyle } from "./textStyle";
declare const dart: {
    ui: {
        paragraphBuilder: (
            this: void,
            paragraphBuilder: IParagraphBuilder,
            style: IParagraphStyle
        ) => IParagraphBuilder;
    };
};
export interface IParagraphBuilder {
    getPlaceholderCount: () => number;
    getPlaceholderScales: () => IList<number>;
    pushStyle: (style: ITextStyle) => void;
    pop: () => void;
    addText: (text: string) => void;
    addPlaceholder: (
        width: number,
        height: number,
        alignment: PlaceholderAlignment,
        props: {
            baseline?: TextBaseline | undefined;
            baselineOffset?: number | undefined;
            scale: number;
        }
    ) => void;
    build: () => IParagraph;
}
export class ParagraphBuilder {
    public constructor(style: IParagraphStyle) {
        dart.ui.paragraphBuilder(this, style);
    }
    private readonly _dart_getPlaceholderCount: () => number = undefined as any;
    private readonly _dart_getPlaceholderScales: () => IList<number> =
        undefined as any;
    private readonly _dart_pushStyle: (style: ITextStyle) => void =
        undefined as any;
    private readonly _dart_pop: () => void = undefined as any;
    private readonly _dart_addText: (text: string) => void = undefined as any;
    private readonly _dart_addPlaceholder: (
        width: number,
        height: number,
        alignment: PlaceholderAlignment,
        props: {
            baseline?: TextBaseline | undefined;
            baselineOffset?: number | undefined;
            scale: number;
        }
    ) => void = undefined as any;
    private readonly _dart_build: () => IParagraph = undefined as any;
    public getPlaceholderCount(): number {
        return this._dart_getPlaceholderCount();
    }
    public getPlaceholderScales(): IList<number> {
        return this._dart_getPlaceholderScales();
    }
    public pushStyle(style: ITextStyle): void {
        return this._dart_pushStyle(style);
    }
    public pop(): void {
        return this._dart_pop();
    }
    public addText(text: string): void {
        return this._dart_addText(text);
    }
    public addPlaceholder(
        width: number,
        height: number,
        alignment: PlaceholderAlignment,
        props: {
            baseline?: TextBaseline | undefined;
            baselineOffset?: number | undefined;
            scale?: number;
        }
    ): void {
        return this._dart_addPlaceholder(width, height, alignment, {
            ...addPlaceholderDefaultProps,
            ...props,
        });
    }
    public build(): IParagraph {
        return this._dart_build();
    }
}
const addPlaceholderDefaultProps = {
    scale: 1.0,
};
