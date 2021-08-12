import { IIterable } from "../core/iterable";
import { List } from "../core/list";
import { Map } from "../core/map";
import { IMapEntry, MapEntry } from "../core/mapEntry";
declare const dart: {
    ui: {
        semanticsFlagHasCheckedState: (this: void) => ISemanticsFlag;
        semanticsFlagIsChecked: (this: void) => ISemanticsFlag;
        semanticsFlagIsSelected: (this: void) => ISemanticsFlag;
        semanticsFlagIsButton: (this: void) => ISemanticsFlag;
        semanticsFlagIsTextField: (this: void) => ISemanticsFlag;
        semanticsFlagIsSlider: (this: void) => ISemanticsFlag;
        semanticsFlagIsReadOnly: (this: void) => ISemanticsFlag;
        semanticsFlagIsLink: (this: void) => ISemanticsFlag;
        semanticsFlagIsFocusable: (this: void) => ISemanticsFlag;
        semanticsFlagIsFocused: (this: void) => ISemanticsFlag;
        semanticsFlagHasEnabledState: (this: void) => ISemanticsFlag;
        semanticsFlagIsEnabled: (this: void) => ISemanticsFlag;
        semanticsFlagIsInMutuallyExclusiveGroup: (this: void) => ISemanticsFlag;
        semanticsFlagIsHeader: (this: void) => ISemanticsFlag;
        semanticsFlagIsObscured: (this: void) => ISemanticsFlag;
        semanticsFlagIsMultiline: (this: void) => ISemanticsFlag;
        semanticsFlagScopesRoute: (this: void) => ISemanticsFlag;
        semanticsFlagNamesRoute: (this: void) => ISemanticsFlag;
        semanticsFlagIsHidden: (this: void) => ISemanticsFlag;
        semanticsFlagIsImage: (this: void) => ISemanticsFlag;
        semanticsFlagIsLiveRegion: (this: void) => ISemanticsFlag;
        semanticsFlagHasToggledState: (this: void) => ISemanticsFlag;
        semanticsFlagIsToggled: (this: void) => ISemanticsFlag;
        semanticsFlagHasImplicitScrolling: (this: void) => ISemanticsFlag;
    };
};
export interface ISemanticsFlag {
    index: number;
    toString: () => string;
}
export class SemanticsFlag {
    public static _kHasCheckedStateIndex = 1 << 0;
    public static _kIsCheckedIndex = 1 << 1;
    public static _kIsSelectedIndex = 1 << 2;
    public static _kIsButtonIndex = 1 << 3;
    public static _kIsTextFieldIndex = 1 << 4;
    public static _kIsFocusedIndex = 1 << 5;
    public static _kHasEnabledStateIndex = 1 << 6;
    public static _kIsEnabledIndex = 1 << 7;
    public static _kIsInMutuallyExclusiveGroupIndex = 1 << 8;
    public static _kIsHeaderIndex = 1 << 9;
    public static _kIsObscuredIndex = 1 << 10;
    public static _kScopesRouteIndex = 1 << 11;
    public static _kNamesRouteIndex = 1 << 12;
    public static _kIsHiddenIndex = 1 << 13;
    public static _kIsImageIndex = 1 << 14;
    public static _kIsLiveRegionIndex = 1 << 15;
    public static _kHasToggledStateIndex = 1 << 16;
    public static _kIsToggledIndex = 1 << 17;
    public static _kHasImplicitScrollingIndex = 1 << 18;
    public static _kIsMultilineIndex = 1 << 19;
    public static _kIsReadOnlyIndex = 1 << 20;
    public static _kIsFocusableIndex = 1 << 21;
    public static _kIsLinkIndex = 1 << 22;
    public static _kIsSliderIndex = 1 << 23;
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
    public static values = Map.fromEntries(
        <IIterable<IMapEntry<number, ISemanticsFlag>>>(
            (<unknown>(
                List.fromArray([
                    new MapEntry(
                        SemanticsFlag._kHasCheckedStateIndex,
                        SemanticsFlag.hasCheckedState
                    ),
                    new MapEntry(
                        SemanticsFlag._kIsCheckedIndex,
                        SemanticsFlag.isChecked
                    ),
                    new MapEntry(
                        SemanticsFlag._kIsSelectedIndex,
                        SemanticsFlag.isSelected
                    ),
                    new MapEntry(
                        SemanticsFlag._kIsButtonIndex,
                        SemanticsFlag.isButton
                    ),
                    new MapEntry(
                        SemanticsFlag._kIsTextFieldIndex,
                        SemanticsFlag.isTextField
                    ),
                    new MapEntry(
                        SemanticsFlag._kIsFocusedIndex,
                        SemanticsFlag.isFocused
                    ),
                    new MapEntry(
                        SemanticsFlag._kHasEnabledStateIndex,
                        SemanticsFlag.hasEnabledState
                    ),
                    new MapEntry(
                        SemanticsFlag._kIsEnabledIndex,
                        SemanticsFlag.isEnabled
                    ),
                    new MapEntry(
                        SemanticsFlag._kIsInMutuallyExclusiveGroupIndex,
                        SemanticsFlag.isInMutuallyExclusiveGroup
                    ),
                    new MapEntry(
                        SemanticsFlag._kIsHeaderIndex,
                        SemanticsFlag.isHeader
                    ),
                    new MapEntry(
                        SemanticsFlag._kIsObscuredIndex,
                        SemanticsFlag.isObscured
                    ),
                    new MapEntry(
                        SemanticsFlag._kScopesRouteIndex,
                        SemanticsFlag.scopesRoute
                    ),
                    new MapEntry(
                        SemanticsFlag._kNamesRouteIndex,
                        SemanticsFlag.namesRoute
                    ),
                    new MapEntry(
                        SemanticsFlag._kIsHiddenIndex,
                        SemanticsFlag.isHidden
                    ),
                    new MapEntry(
                        SemanticsFlag._kIsImageIndex,
                        SemanticsFlag.isImage
                    ),
                    new MapEntry(
                        SemanticsFlag._kIsLiveRegionIndex,
                        SemanticsFlag.isLiveRegion
                    ),
                    new MapEntry(
                        SemanticsFlag._kHasToggledStateIndex,
                        SemanticsFlag.hasToggledState
                    ),
                    new MapEntry(
                        SemanticsFlag._kIsToggledIndex,
                        SemanticsFlag.isToggled
                    ),
                    new MapEntry(
                        SemanticsFlag._kHasImplicitScrollingIndex,
                        SemanticsFlag.hasImplicitScrolling
                    ),
                    new MapEntry(
                        SemanticsFlag._kIsMultilineIndex,
                        SemanticsFlag.isMultiline
                    ),
                    new MapEntry(
                        SemanticsFlag._kIsReadOnlyIndex,
                        SemanticsFlag.isReadOnly
                    ),
                    new MapEntry(
                        SemanticsFlag._kIsFocusableIndex,
                        SemanticsFlag.isFocusable
                    ),
                    new MapEntry(
                        SemanticsFlag._kIsLinkIndex,
                        SemanticsFlag.isLink
                    ),
                    new MapEntry(
                        SemanticsFlag._kIsSliderIndex,
                        SemanticsFlag.isSlider
                    ),
                ])
            ))
        )
    );
    public readonly index: number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
}
