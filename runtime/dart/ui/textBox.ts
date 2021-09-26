import { IRect } from "./rect";
import { TextDirection } from "./textDirection";
declare const dart: {
    ui: {
        textBoxFromLTRBD: (
            left: number,
            top: number,
            right: number,
            bottom: number,
            direction: TextDirection
        ) => ITextBox;
    };
};
export interface ITextBox {
    left: number;
    top: number;
    right: number;
    bottom: number;
    direction: TextDirection;
    toRect: () => IRect;
    getStart: () => number;
    getEnd: () => number;
    getHashCode: () => number;
    toString: () => string;
}
export class TextBox {
    public readonly left: number = undefined as any;
    public readonly top: number = undefined as any;
    public readonly right: number = undefined as any;
    public readonly bottom: number = undefined as any;
    public readonly direction: TextDirection = undefined as any;
    public static fromLTRBD(
        left: number,
        top: number,
        right: number,
        bottom: number,
        direction: TextDirection
    ): ITextBox {
        return dart.ui.textBoxFromLTRBD(left, top, right, bottom, direction);
    }
    private readonly _dart_toRect: () => IRect = undefined as any;
    private readonly _dart_getStart: () => number = undefined as any;
    private readonly _dart_getEnd: () => number = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public toRect(): IRect {
        return this._dart_toRect();
    }
    public getStart(): number {
        return this._dart_getStart();
    }
    public getEnd(): number {
        return this._dart_getEnd();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
