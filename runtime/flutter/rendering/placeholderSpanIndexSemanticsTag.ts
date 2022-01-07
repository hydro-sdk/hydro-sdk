import { ISemanticsTag } from "../semantics/semanticsTag";
declare const flutter: {
    rendering: {
        placeholderSpanIndexSemanticsTag: (
            this: void,
            placeholderSpanIndexSemanticsTag: IPlaceholderSpanIndexSemanticsTag,
            index: number
        ) => IPlaceholderSpanIndexSemanticsTag;
    };
};
export interface IPlaceholderSpanIndexSemanticsTag {
    index: number;
    name: string;
    getHashCode: () => number;
    toString: () => string;
}
export class PlaceholderSpanIndexSemanticsTag implements ISemanticsTag {
    public readonly index: number = undefined as any;
    public readonly name: string = undefined as any;
    public constructor(index: number) {
        flutter.rendering.placeholderSpanIndexSemanticsTag(this, index);
    }
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
