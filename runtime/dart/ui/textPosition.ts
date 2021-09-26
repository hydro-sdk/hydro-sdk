import { TextAffinity } from "./textAffinity";
declare const dart: {
    ui: {
        textPosition: (
            this: void,
            textPosition: ITextPosition,
            props: { affinity: TextAffinity; offset: number }
        ) => ITextPosition;
    };
};
export interface ITextPosition {
    offset: number;
    affinity: TextAffinity;
    getHashCode: () => number;
    toString: () => string;
}
export class TextPosition {
    public readonly offset: number = undefined as any;
    public readonly affinity: TextAffinity = undefined as any;
    public constructor(props: { affinity?: TextAffinity; offset: number }) {
        dart.ui.textPosition(this, {
            ...textPositionDefaultProps,
            ...props,
        });
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
const textPositionDefaultProps = {
    affinity: TextAffinity.downstream,
};
