declare const dart: {
    ui: {
        lineMetrics: (
            this: void,
            lineMetrics: ILineMetrics,
            props: {
                ascent: number;
                baseline: number;
                descent: number;
                hardBreak: boolean;
                height: number;
                left: number;
                lineNumber: number;
                unscaledAscent: number;
                width: number;
            }
        ) => ILineMetrics;
    };
};
export interface ILineMetrics {
    hardBreak: boolean;
    ascent: number;
    descent: number;
    unscaledAscent: number;
    height: number;
    width: number;
    left: number;
    baseline: number;
    lineNumber: number;
    getHashCode: () => number;
    toString: () => string;
}
export class LineMetrics {
    public readonly hardBreak: boolean = undefined as any;
    public readonly ascent: number = undefined as any;
    public readonly descent: number = undefined as any;
    public readonly unscaledAscent: number = undefined as any;
    public readonly height: number = undefined as any;
    public readonly width: number = undefined as any;
    public readonly left: number = undefined as any;
    public readonly baseline: number = undefined as any;
    public readonly lineNumber: number = undefined as any;
    public constructor(props: {
        ascent: number;
        baseline: number;
        descent: number;
        hardBreak: boolean;
        height: number;
        left: number;
        lineNumber: number;
        unscaledAscent: number;
        width: number;
    }) {
        dart.ui.lineMetrics(this, props);
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
