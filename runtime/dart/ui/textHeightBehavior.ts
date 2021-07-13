declare const dart: {
    ui: {
        textHeightBehavior: (
            this: void,
            textHeightBehavior: ITextHeightBehavior,
            props: {
                applyHeightToFirstAscent: boolean;
                applyHeightToLastDescent: boolean;
            }
        ) => ITextHeightBehavior;
        textHeightBehaviorFromEncoded: (encoded: number) => ITextHeightBehavior;
    };
};
export interface ITextHeightBehavior {
    applyHeightToFirstAscent: boolean;
    applyHeightToLastDescent: boolean;
    encode: () => number;
    getHashCode: () => number;
    toString: () => string;
}
export class TextHeightBehavior {
    public readonly applyHeightToFirstAscent: boolean = undefined as any;
    public readonly applyHeightToLastDescent: boolean = undefined as any;
    public constructor(props: {
        applyHeightToFirstAscent?: boolean;
        applyHeightToLastDescent?: boolean;
    }) {
        dart.ui.textHeightBehavior(this, {
            ...textHeightBehaviorDefaultProps,
            ...props,
        });
    }
    public static fromEncoded(encoded: number): ITextHeightBehavior {
        return dart.ui.textHeightBehaviorFromEncoded(encoded);
    }
    private readonly _dart_encode: () => number = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public encode(): number {
        return this._dart_encode();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
const textHeightBehaviorDefaultProps = {
    applyHeightToFirstAscent: true,
    applyHeightToLastDescent: true,
};
