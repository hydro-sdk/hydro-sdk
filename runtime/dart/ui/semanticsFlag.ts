declare const dart: {
    ui: {
        semanticsFlagHasCheckedState: (this: void) => SemanticsFlag;
        semanticsFlagIsChecked: (this: void) => SemanticsFlag;
        semanticsFlagIsSelected: (this: void) => SemanticsFlag;
        semanticsFlagIsButton: (this: void) => SemanticsFlag;
        semanticsFlagIsTextField: (this: void) => SemanticsFlag;
        semanticsFlagIsSlider: (this: void) => SemanticsFlag;
        semanticsFlagIsReadOnly: (this: void) => SemanticsFlag;
        semanticsFlagIsLink: (this: void) => SemanticsFlag;
        semanticsFlagIsFocusable: (this: void) => SemanticsFlag;
        semanticsFlagIsFocused: (this: void) => SemanticsFlag;
        semanticsFlagHasEnabledState: (this: void) => SemanticsFlag;
        semanticsFlagIsEnabled: (this: void) => SemanticsFlag;
        semanticsFlagIsInMutuallyExclusiveGroup: (this: void) => SemanticsFlag;
        semanticsFlagIsHeader: (this: void) => SemanticsFlag;
        semanticsFlagIsObscured: (this: void) => SemanticsFlag;
        semanticsFlagIsMultiline: (this: void) => SemanticsFlag;
        semanticsFlagScopesRoute: (this: void) => SemanticsFlag;
        semanticsFlagNamesRoute: (this: void) => SemanticsFlag;
        semanticsFlagIsHidden: (this: void) => SemanticsFlag;
        semanticsFlagIsImage: (this: void) => SemanticsFlag;
        semanticsFlagIsLiveRegion: (this: void) => SemanticsFlag;
        semanticsFlagHasToggledState: (this: void) => SemanticsFlag;
        semanticsFlagIsToggled: (this: void) => SemanticsFlag;
        semanticsFlagHasImplicitScrolling: (this: void) => SemanticsFlag;
    };
};
export interface ISemanticsFlag {
    index: number;
    toString: () => string;
}
export class SemanticsFlag {
    private static _kHasCheckedStateIndex = 1 << 0;
    private static _kIsCheckedIndex = 1 << 1;
    private static _kIsSelectedIndex = 1 << 2;
    private static _kIsButtonIndex = 1 << 3;
    private static _kIsTextFieldIndex = 1 << 4;
    private static _kIsFocusedIndex = 1 << 5;
    private static _kHasEnabledStateIndex = 1 << 6;
    private static _kIsEnabledIndex = 1 << 7;
    private static _kIsInMutuallyExclusiveGroupIndex = 1 << 8;
    private static _kIsHeaderIndex = 1 << 9;
    private static _kIsObscuredIndex = 1 << 10;
    private static _kScopesRouteIndex = 1 << 11;
    private static _kNamesRouteIndex = 1 << 12;
    private static _kIsHiddenIndex = 1 << 13;
    private static _kIsImageIndex = 1 << 14;
    private static _kIsLiveRegionIndex = 1 << 15;
    private static _kHasToggledStateIndex = 1 << 16;
    private static _kIsToggledIndex = 1 << 17;
    private static _kHasImplicitScrollingIndex = 1 << 18;
    private static _kIsMultilineIndex = 1 << 19;
    private static _kIsReadOnlyIndex = 1 << 20;
    private static _kIsFocusableIndex = 1 << 21;
    private static _kIsLinkIndex = 1 << 22;
    private static _kIsSliderIndex = 1 << 23;
    public static hasCheckedState = dart.ui.semanticsFlagHasCheckedState();
    public static isChecked = dart.ui.semanticsFlagIsChecked();
    public static isSelected = dart.ui.semanticsFlagIsSelected();
    public static isButton = dart.ui.semanticsFlagIsButton();
    public static isTextField = dart.ui.semanticsFlagIsTextField();
    public static isSlider = dart.ui.semanticsFlagIsSlider();
    public static isReadOnly = dart.ui.semanticsFlagIsReadOnly();
    public static isLink = dart.ui.semanticsFlagIsLink();
    public static isFocusable = dart.ui.semanticsFlagIsFocusable();
    public static isFocused = dart.ui.semanticsFlagIsFocused();
    public static hasEnabledState = dart.ui.semanticsFlagHasEnabledState();
    public static isEnabled = dart.ui.semanticsFlagIsEnabled();
    public static isInMutuallyExclusiveGroup =
        dart.ui.semanticsFlagIsInMutuallyExclusiveGroup();
    public static isHeader = dart.ui.semanticsFlagIsHeader();
    public static isObscured = dart.ui.semanticsFlagIsObscured();
    public static isMultiline = dart.ui.semanticsFlagIsMultiline();
    public static scopesRoute = dart.ui.semanticsFlagScopesRoute();
    public static namesRoute = dart.ui.semanticsFlagNamesRoute();
    public static isHidden = dart.ui.semanticsFlagIsHidden();
    public static isImage = dart.ui.semanticsFlagIsImage();
    public static isLiveRegion = dart.ui.semanticsFlagIsLiveRegion();
    public static hasToggledState = dart.ui.semanticsFlagHasToggledState();
    public static isToggled = dart.ui.semanticsFlagIsToggled();
    public static hasImplicitScrolling =
        dart.ui.semanticsFlagHasImplicitScrolling();
    public static values = Unknown;
    public readonly index: number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
}
