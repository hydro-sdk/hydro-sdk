declare const dart: {
    ui: {
        windowPaddingZero: (this: void) => IWindowPadding;
    };
};
export interface IWindowPadding {
    left: number;
    top: number;
    right: number;
    bottom: number;
    toString: () => string;
}
export class WindowPadding {
    public static zero = dart.ui.windowPaddingZero();
    public readonly left: number = undefined as any;
    public readonly top: number = undefined as any;
    public readonly right: number = undefined as any;
    public readonly bottom: number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
}
