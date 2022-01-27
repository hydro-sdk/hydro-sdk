declare const flutter: {
    painting: {
        textAlignVertical: (
            this: void,
            textAlignVertical: ITextAlignVertical,
            props: { y: number }
        ) => ITextAlignVertical;
    };
};
export interface ITextAlignVertical {
    y: number;
    toString: () => string;
}
export class TextAlignVertical {
    public static top = new TextAlignVertical({ y: -1.0 });
    public static center = new TextAlignVertical();
    public static bottom = new TextAlignVertical();
    public readonly y: number = undefined as any;
    public constructor(props: { y: number }) {
        flutter.painting.textAlignVertical(this, props);
    }
    private readonly _dart_toString: () => string = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
}
