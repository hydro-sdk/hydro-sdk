declare const flutter: {
    material: {
        _menuLimits: (
            this: void,
            _menuLimits: I_MenuLimits,
            top: number,
            bottom: number,
            height: number,
            scrollOffset: number
        ) => I_MenuLimits;
    };
};
export interface I_MenuLimits {
    top: number;
    bottom: number;
    height: number;
    scrollOffset: number;
}
export class _MenuLimits {
    public readonly top: number = undefined as any;
    public readonly bottom: number = undefined as any;
    public readonly height: number = undefined as any;
    public readonly scrollOffset: number = undefined as any;
    public constructor(
        top: number,
        bottom: number,
        height: number,
        scrollOffset: number
    ) {
        flutter.material._menuLimits(this, top, bottom, height, scrollOffset);
    }
}
