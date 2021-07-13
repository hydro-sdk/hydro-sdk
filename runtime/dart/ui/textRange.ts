declare const dart: {
    ui: {
        textRange: (
            this: void,
            textRange: ITextRange,
            props: { end: number; start: number }
        ) => ITextRange;
        textRangeCollapsed: (offset: number) => ITextRange;
    };
};
export interface ITextRange {
    start: number;
    end: number;
    getIsValid: () => boolean;
    getIsCollapsed: () => boolean;
    getIsNormalized: () => boolean;
    textBefore: (text: string) => string;
    textAfter: (text: string) => string;
    textInside: (text: string) => string;
    getHashCode: () => number;
    toString: () => string;
}
export class TextRange {
    public static empty = new TextRange({ start: -1, end: -1 });
    public readonly start: number = undefined as any;
    public readonly end: number = undefined as any;
    public constructor(props: { end: number; start: number }) {
        dart.ui.textRange(this, props);
    }
    public static collapsed(offset: number): ITextRange {
        return dart.ui.textRangeCollapsed(offset);
    }
    private readonly _dart_getIsValid: () => boolean = undefined as any;
    private readonly _dart_getIsCollapsed: () => boolean = undefined as any;
    private readonly _dart_getIsNormalized: () => boolean = undefined as any;
    private readonly _dart_textBefore: (text: string) => string =
        undefined as any;
    private readonly _dart_textAfter: (text: string) => string =
        undefined as any;
    private readonly _dart_textInside: (text: string) => string =
        undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getIsValid(): boolean {
        return this._dart_getIsValid();
    }
    public getIsCollapsed(): boolean {
        return this._dart_getIsCollapsed();
    }
    public getIsNormalized(): boolean {
        return this._dart_getIsNormalized();
    }
    public textBefore(text: string): string {
        return this._dart_textBefore(text);
    }
    public textAfter(text: string): string {
        return this._dart_textAfter(text);
    }
    public textInside(text: string): string {
        return this._dart_textInside(text);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
