declare const dart: {
    ui: {};
};
export interface IAccessibilityFeatures {
    getAccessibleNavigation: () => boolean;
    getInvertColors: () => boolean;
    getDisableAnimations: () => boolean;
    getBoldText: () => boolean;
    getReduceMotion: () => boolean;
    getHighContrast: () => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class AccessibilityFeatures {
    private static _kAccessibleNavigation = 1 << 0;
    private static _kInvertColorsIndex = 1 << 1;
    private static _kDisableAnimationsIndex = 1 << 2;
    private static _kBoldTextIndex = 1 << 3;
    private static _kReduceMotionIndex = 1 << 4;
    private static _kHighContrastIndex = 1 << 5;
    private readonly _dart_getAccessibleNavigation: () => boolean = undefined as any;
    private readonly _dart_getInvertColors: () => boolean = undefined as any;
    private readonly _dart_getDisableAnimations: () => boolean = undefined as any;
    private readonly _dart_getBoldText: () => boolean = undefined as any;
    private readonly _dart_getReduceMotion: () => boolean = undefined as any;
    private readonly _dart_getHighContrast: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getAccessibleNavigation(): boolean {
        return this._dart_getAccessibleNavigation();
    }
    public getInvertColors(): boolean {
        return this._dart_getInvertColors();
    }
    public getDisableAnimations(): boolean {
        return this._dart_getDisableAnimations();
    }
    public getBoldText(): boolean {
        return this._dart_getBoldText();
    }
    public getReduceMotion(): boolean {
        return this._dart_getReduceMotion();
    }
    public getHighContrast(): boolean {
        return this._dart_getHighContrast();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
