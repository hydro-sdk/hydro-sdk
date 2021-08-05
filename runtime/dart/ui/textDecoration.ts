import { IList } from "../core/list";
declare const dart: {
    ui: {
        textDecorationCombine: (
            decorations: IList<ITextDecoration>
        ) => ITextDecoration;
        textDecorationNone: (this: void) => ITextDecoration;
        textDecorationUnderline: (this: void) => ITextDecoration;
        textDecorationOverline: (this: void) => ITextDecoration;
        textDecorationLineThrough: (this: void) => ITextDecoration;
    };
};
export interface ITextDecoration {
    contains: (other: ITextDecoration) => boolean;
    getHashCode: () => number;
    toString: () => string;
}
export class TextDecoration {
    public static none = dart.ui.textDecorationNone();
    public static underline = dart.ui.textDecorationUnderline();
    public static overline = dart.ui.textDecorationOverline();
    public static lineThrough = dart.ui.textDecorationLineThrough();
    public static combine(
        decorations: IList<ITextDecoration>
    ): ITextDecoration {
        return dart.ui.textDecorationCombine(decorations);
    }
    private readonly _dart_contains: (other: ITextDecoration) => boolean =
        undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public contains(other: ITextDecoration): boolean {
        return this._dart_contains(other);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
