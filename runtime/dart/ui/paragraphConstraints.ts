declare const dart: {
    ui: {
        paragraphConstraints: (
            this: void,
            paragraphConstraints: IParagraphConstraints,
            props: { width: number }
        ) => IParagraphConstraints;
    };
};
export interface IParagraphConstraints {
    width: number;
    getHashCode: () => number;
    toString: () => string;
}
export class ParagraphConstraints {
    public readonly width: number = undefined as any;
    public constructor(props: { width: number }) {
        dart.ui.paragraphConstraints(this, props);
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
