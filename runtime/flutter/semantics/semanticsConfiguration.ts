
import { ITextSelection } from "../services/textSelection";
import { ISemanticsAction } from "../../dart/ui/semanticsAction";
import { ISemanticsSortKey } from "./semanticsSortKey";
import { IMap } from "../../dart/core/map";
import { ICustomSemanticsAction } from "./customSemanticsAction";
import { IAttributedString } from "./attributedString";
import { ISemanticsHintOverrides } from "./semanticsHintOverrides";
import { TextDirection } from "../../dart/ui/textDirection";
import { IIterable } from "../../dart/core/iterable";
import { ISemanticsTag } from "./semanticsTag";
declare const flutter: {
semantics: {
semanticsConfiguration: (this: void, semanticsConfiguration: ISemanticsConfiguration) => ISemanticsConfiguration
}
};
export interface ISemanticsConfiguration


{
explicitChildNodes: boolean;
isBlockingSemanticsOfPreviouslyPaintedNodes: boolean;
getIsSemanticBoundary: () => boolean;
setIsSemanticBoundary: (value: boolean) => void;
getHasBeenAnnotated: () => boolean;
getOnTap: () => () => void | undefined;
setOnTap: (value? : () => void) => void;
getOnLongPress: () => () => void | undefined;
setOnLongPress: (value? : () => void) => void;
getOnScrollLeft: () => () => void | undefined;
setOnScrollLeft: (value? : () => void) => void;
getOnDismiss: () => () => void | undefined;
setOnDismiss: (value? : () => void) => void;
getOnScrollRight: () => () => void | undefined;
setOnScrollRight: (value? : () => void) => void;
getOnScrollUp: () => () => void | undefined;
setOnScrollUp: (value? : () => void) => void;
getOnScrollDown: () => () => void | undefined;
setOnScrollDown: (value? : () => void) => void;
getOnIncrease: () => () => void | undefined;
setOnIncrease: (value? : () => void) => void;
getOnDecrease: () => () => void | undefined;
setOnDecrease: (value? : () => void) => void;
getOnCopy: () => () => void | undefined;
setOnCopy: (value? : () => void) => void;
getOnCut: () => () => void | undefined;
setOnCut: (value? : () => void) => void;
getOnPaste: () => () => void | undefined;
setOnPaste: (value? : () => void) => void;
getOnShowOnScreen: () => () => void | undefined;
setOnShowOnScreen: (value? : () => void) => void;
getOnMoveCursorForwardByCharacter: () => (extendSelection: boolean) => void | undefined;
setOnMoveCursorForwardByCharacter: (value? : (extendSelection: boolean) => void) => void;
getOnMoveCursorBackwardByCharacter: () => (extendSelection: boolean) => void | undefined;
setOnMoveCursorBackwardByCharacter: (value? : (extendSelection: boolean) => void) => void;
getOnMoveCursorForwardByWord: () => (extendSelection: boolean) => void | undefined;
setOnMoveCursorForwardByWord: (value? : (extendSelection: boolean) => void) => void;
getOnMoveCursorBackwardByWord: () => (extendSelection: boolean) => void | undefined;
setOnMoveCursorBackwardByWord: (value? : (extendSelection: boolean) => void) => void;
getOnSetSelection: () => (selection: ITextSelection) => void | undefined;
setOnSetSelection: (value? : (selection: ITextSelection) => void) => void;
getOnSetText: () => (text: string) => void | undefined;
setOnSetText: (value? : (text: string) => void) => void;
getOnDidGainAccessibilityFocus: () => () => void | undefined;
setOnDidGainAccessibilityFocus: (value? : () => void) => void;
getOnDidLoseAccessibilityFocus: () => () => void | undefined;
setOnDidLoseAccessibilityFocus: (value? : () => void) => void;
getActionHandler: (action: ISemanticsAction) => (args?: Object | undefined) => void | undefined;
getSortKey: () => ISemanticsSortKey | undefined;
setSortKey: (value?: ISemanticsSortKey | undefined) => void;
getIndexInParent: () => number | undefined;
setIndexInParent: (value?: number | undefined) => void;
getScrollChildCount: () => number | undefined;
setScrollChildCount: (value?: number | undefined) => void;
getScrollIndex: () => number | undefined;
setScrollIndex: (value?: number | undefined) => void;
getPlatformViewId: () => number | undefined;
setPlatformViewId: (value?: number | undefined) => void;
getMaxValueLength: () => number | undefined;
setMaxValueLength: (value?: number | undefined) => void;
getCurrentValueLength: () => number | undefined;
setCurrentValueLength: (value?: number | undefined) => void;
getIsMergingSemanticsOfDescendants: () => boolean;
setIsMergingSemanticsOfDescendants: (value: boolean) => void;
getCustomSemanticsActions: () => IMap<ICustomSemanticsAction, () => void>;
setCustomSemanticsActions: (value: IMap<ICustomSemanticsAction, () => void>) => void;
getLabel: () => string;
setLabel: (label: string) => void;
getAttributedLabel: () => IAttributedString;
setAttributedLabel: (attributedLabel: IAttributedString) => void;
getValue: () => string;
setValue: (value: string) => void;
getAttributedValue: () => IAttributedString;
setAttributedValue: (attributedValue: IAttributedString) => void;
getIncreasedValue: () => string;
setIncreasedValue: (increasedValue: string) => void;
getAttributedIncreasedValue: () => IAttributedString;
setAttributedIncreasedValue: (attributedIncreasedValue: IAttributedString) => void;
getDecreasedValue: () => string;
setDecreasedValue: (decreasedValue: string) => void;
getAttributedDecreasedValue: () => IAttributedString;
setAttributedDecreasedValue: (attributedDecreasedValue: IAttributedString) => void;
getHint: () => string;
setHint: (hint: string) => void;
getAttributedHint: () => IAttributedString;
setAttributedHint: (attributedHint: IAttributedString) => void;
getHintOverrides: () => ISemanticsHintOverrides | undefined;
setHintOverrides: (value?: ISemanticsHintOverrides | undefined) => void;
getElevation: () => number;
setElevation: (value: number) => void;
getThickness: () => number;
setThickness: (value: number) => void;
getScopesRoute: () => boolean;
setScopesRoute: (value: boolean) => void;
getNamesRoute: () => boolean;
setNamesRoute: (value: boolean) => void;
getIsImage: () => boolean;
setIsImage: (value: boolean) => void;
getLiveRegion: () => boolean;
setLiveRegion: (value: boolean) => void;
getTextDirection: () => TextDirection | undefined;
setTextDirection: (textDirection?: TextDirection | undefined) => void;
getIsSelected: () => boolean;
setIsSelected: (value: boolean) => void;
getIsEnabled: () => boolean | undefined;
setIsEnabled: (value?: boolean | undefined) => void;
getIsChecked: () => boolean | undefined;
setIsChecked: (value?: boolean | undefined) => void;
getIsToggled: () => boolean | undefined;
setIsToggled: (value?: boolean | undefined) => void;
getIsInMutuallyExclusiveGroup: () => boolean;
setIsInMutuallyExclusiveGroup: (value: boolean) => void;
getIsFocusable: () => boolean;
setIsFocusable: (value: boolean) => void;
getIsFocused: () => boolean;
setIsFocused: (value: boolean) => void;
getIsButton: () => boolean;
setIsButton: (value: boolean) => void;
getIsLink: () => boolean;
setIsLink: (value: boolean) => void;
getIsHeader: () => boolean;
setIsHeader: (value: boolean) => void;
getIsSlider: () => boolean;
setIsSlider: (value: boolean) => void;
getIsKeyboardKey: () => boolean;
setIsKeyboardKey: (value: boolean) => void;
getIsHidden: () => boolean;
setIsHidden: (value: boolean) => void;
getIsTextField: () => boolean;
setIsTextField: (value: boolean) => void;
getIsReadOnly: () => boolean;
setIsReadOnly: (value: boolean) => void;
getIsObscured: () => boolean;
setIsObscured: (value: boolean) => void;
getIsMultiline: () => boolean;
setIsMultiline: (value: boolean) => void;
getHasImplicitScrolling: () => boolean;
setHasImplicitScrolling: (value: boolean) => void;
getTextSelection: () => ITextSelection | undefined;
setTextSelection: (value?: ITextSelection | undefined) => void;
getScrollPosition: () => number | undefined;
setScrollPosition: (value?: number | undefined) => void;
getScrollExtentMax: () => number | undefined;
setScrollExtentMax: (value?: number | undefined) => void;
getScrollExtentMin: () => number | undefined;
setScrollExtentMin: (value?: number | undefined) => void;
getTagsForChildren: () => IIterable<ISemanticsTag> | undefined;
addTagForChildren: (tag: ISemanticsTag) => void;
isCompatibleWith: (other?: ISemanticsConfiguration | undefined) => boolean;
absorb: (child: ISemanticsConfiguration) => void;
copy: () => ISemanticsConfiguration;
}export class SemanticsConfiguration


{    public readonly explicitChildNodes: boolean = undefined as any;
    public readonly isBlockingSemanticsOfPreviouslyPaintedNodes: boolean = undefined as any;
public constructor(){
flutter.semantics.semanticsConfiguration(this);}
    private readonly _dart_getIsSemanticBoundary: () => boolean = undefined as any;
    private readonly _dart_setIsSemanticBoundary: (value: boolean) => void = undefined as any;
    private readonly _dart_getHasBeenAnnotated: () => boolean = undefined as any;
    private readonly _dart_getOnTap: () => () => void | undefined = undefined as any;
    private readonly _dart_setOnTap: (value? : () => void) => void = undefined as any;
    private readonly _dart_getOnLongPress: () => () => void | undefined = undefined as any;
    private readonly _dart_setOnLongPress: (value? : () => void) => void = undefined as any;
    private readonly _dart_getOnScrollLeft: () => () => void | undefined = undefined as any;
    private readonly _dart_setOnScrollLeft: (value? : () => void) => void = undefined as any;
    private readonly _dart_getOnDismiss: () => () => void | undefined = undefined as any;
    private readonly _dart_setOnDismiss: (value? : () => void) => void = undefined as any;
    private readonly _dart_getOnScrollRight: () => () => void | undefined = undefined as any;
    private readonly _dart_setOnScrollRight: (value? : () => void) => void = undefined as any;
    private readonly _dart_getOnScrollUp: () => () => void | undefined = undefined as any;
    private readonly _dart_setOnScrollUp: (value? : () => void) => void = undefined as any;
    private readonly _dart_getOnScrollDown: () => () => void | undefined = undefined as any;
    private readonly _dart_setOnScrollDown: (value? : () => void) => void = undefined as any;
    private readonly _dart_getOnIncrease: () => () => void | undefined = undefined as any;
    private readonly _dart_setOnIncrease: (value? : () => void) => void = undefined as any;
    private readonly _dart_getOnDecrease: () => () => void | undefined = undefined as any;
    private readonly _dart_setOnDecrease: (value? : () => void) => void = undefined as any;
    private readonly _dart_getOnCopy: () => () => void | undefined = undefined as any;
    private readonly _dart_setOnCopy: (value? : () => void) => void = undefined as any;
    private readonly _dart_getOnCut: () => () => void | undefined = undefined as any;
    private readonly _dart_setOnCut: (value? : () => void) => void = undefined as any;
    private readonly _dart_getOnPaste: () => () => void | undefined = undefined as any;
    private readonly _dart_setOnPaste: (value? : () => void) => void = undefined as any;
    private readonly _dart_getOnShowOnScreen: () => () => void | undefined = undefined as any;
    private readonly _dart_setOnShowOnScreen: (value? : () => void) => void = undefined as any;
    private readonly _dart_getOnMoveCursorForwardByCharacter: () => (extendSelection: boolean) => void | undefined = undefined as any;
    private readonly _dart_setOnMoveCursorForwardByCharacter: (value? : (extendSelection: boolean) => void) => void = undefined as any;
    private readonly _dart_getOnMoveCursorBackwardByCharacter: () => (extendSelection: boolean) => void | undefined = undefined as any;
    private readonly _dart_setOnMoveCursorBackwardByCharacter: (value? : (extendSelection: boolean) => void) => void = undefined as any;
    private readonly _dart_getOnMoveCursorForwardByWord: () => (extendSelection: boolean) => void | undefined = undefined as any;
    private readonly _dart_setOnMoveCursorForwardByWord: (value? : (extendSelection: boolean) => void) => void = undefined as any;
    private readonly _dart_getOnMoveCursorBackwardByWord: () => (extendSelection: boolean) => void | undefined = undefined as any;
    private readonly _dart_setOnMoveCursorBackwardByWord: (value? : (extendSelection: boolean) => void) => void = undefined as any;
    private readonly _dart_getOnSetSelection: () => (selection: ITextSelection) => void | undefined = undefined as any;
    private readonly _dart_setOnSetSelection: (value? : (selection: ITextSelection) => void) => void = undefined as any;
    private readonly _dart_getOnSetText: () => (text: string) => void | undefined = undefined as any;
    private readonly _dart_setOnSetText: (value? : (text: string) => void) => void = undefined as any;
    private readonly _dart_getOnDidGainAccessibilityFocus: () => () => void | undefined = undefined as any;
    private readonly _dart_setOnDidGainAccessibilityFocus: (value? : () => void) => void = undefined as any;
    private readonly _dart_getOnDidLoseAccessibilityFocus: () => () => void | undefined = undefined as any;
    private readonly _dart_setOnDidLoseAccessibilityFocus: (value? : () => void) => void = undefined as any;
    private readonly _dart_getActionHandler: (action: ISemanticsAction) => (args?: Object | undefined) => void | undefined = undefined as any;
    private readonly _dart_getSortKey: () => ISemanticsSortKey | undefined = undefined as any;
    private readonly _dart_setSortKey: (value?: ISemanticsSortKey | undefined) => void = undefined as any;
    private readonly _dart_getIndexInParent: () => number | undefined = undefined as any;
    private readonly _dart_setIndexInParent: (value?: number | undefined) => void = undefined as any;
    private readonly _dart_getScrollChildCount: () => number | undefined = undefined as any;
    private readonly _dart_setScrollChildCount: (value?: number | undefined) => void = undefined as any;
    private readonly _dart_getScrollIndex: () => number | undefined = undefined as any;
    private readonly _dart_setScrollIndex: (value?: number | undefined) => void = undefined as any;
    private readonly _dart_getPlatformViewId: () => number | undefined = undefined as any;
    private readonly _dart_setPlatformViewId: (value?: number | undefined) => void = undefined as any;
    private readonly _dart_getMaxValueLength: () => number | undefined = undefined as any;
    private readonly _dart_setMaxValueLength: (value?: number | undefined) => void = undefined as any;
    private readonly _dart_getCurrentValueLength: () => number | undefined = undefined as any;
    private readonly _dart_setCurrentValueLength: (value?: number | undefined) => void = undefined as any;
    private readonly _dart_getIsMergingSemanticsOfDescendants: () => boolean = undefined as any;
    private readonly _dart_setIsMergingSemanticsOfDescendants: (value: boolean) => void = undefined as any;
    private readonly _dart_getCustomSemanticsActions: () => IMap<ICustomSemanticsAction, () => void> = undefined as any;
    private readonly _dart_setCustomSemanticsActions: (value: IMap<ICustomSemanticsAction, () => void>) => void = undefined as any;
    private readonly _dart_getLabel: () => string = undefined as any;
    private readonly _dart_setLabel: (label: string) => void = undefined as any;
    private readonly _dart_getAttributedLabel: () => IAttributedString = undefined as any;
    private readonly _dart_setAttributedLabel: (attributedLabel: IAttributedString) => void = undefined as any;
    private readonly _dart_getValue: () => string = undefined as any;
    private readonly _dart_setValue: (value: string) => void = undefined as any;
    private readonly _dart_getAttributedValue: () => IAttributedString = undefined as any;
    private readonly _dart_setAttributedValue: (attributedValue: IAttributedString) => void = undefined as any;
    private readonly _dart_getIncreasedValue: () => string = undefined as any;
    private readonly _dart_setIncreasedValue: (increasedValue: string) => void = undefined as any;
    private readonly _dart_getAttributedIncreasedValue: () => IAttributedString = undefined as any;
    private readonly _dart_setAttributedIncreasedValue: (attributedIncreasedValue: IAttributedString) => void = undefined as any;
    private readonly _dart_getDecreasedValue: () => string = undefined as any;
    private readonly _dart_setDecreasedValue: (decreasedValue: string) => void = undefined as any;
    private readonly _dart_getAttributedDecreasedValue: () => IAttributedString = undefined as any;
    private readonly _dart_setAttributedDecreasedValue: (attributedDecreasedValue: IAttributedString) => void = undefined as any;
    private readonly _dart_getHint: () => string = undefined as any;
    private readonly _dart_setHint: (hint: string) => void = undefined as any;
    private readonly _dart_getAttributedHint: () => IAttributedString = undefined as any;
    private readonly _dart_setAttributedHint: (attributedHint: IAttributedString) => void = undefined as any;
    private readonly _dart_getHintOverrides: () => ISemanticsHintOverrides | undefined = undefined as any;
    private readonly _dart_setHintOverrides: (value?: ISemanticsHintOverrides | undefined) => void = undefined as any;
    private readonly _dart_getElevation: () => number = undefined as any;
    private readonly _dart_setElevation: (value: number) => void = undefined as any;
    private readonly _dart_getThickness: () => number = undefined as any;
    private readonly _dart_setThickness: (value: number) => void = undefined as any;
    private readonly _dart_getScopesRoute: () => boolean = undefined as any;
    private readonly _dart_setScopesRoute: (value: boolean) => void = undefined as any;
    private readonly _dart_getNamesRoute: () => boolean = undefined as any;
    private readonly _dart_setNamesRoute: (value: boolean) => void = undefined as any;
    private readonly _dart_getIsImage: () => boolean = undefined as any;
    private readonly _dart_setIsImage: (value: boolean) => void = undefined as any;
    private readonly _dart_getLiveRegion: () => boolean = undefined as any;
    private readonly _dart_setLiveRegion: (value: boolean) => void = undefined as any;
    private readonly _dart_getTextDirection: () => TextDirection | undefined = undefined as any;
    private readonly _dart_setTextDirection: (textDirection?: TextDirection | undefined) => void = undefined as any;
    private readonly _dart_getIsSelected: () => boolean = undefined as any;
    private readonly _dart_setIsSelected: (value: boolean) => void = undefined as any;
    private readonly _dart_getIsEnabled: () => boolean | undefined = undefined as any;
    private readonly _dart_setIsEnabled: (value?: boolean | undefined) => void = undefined as any;
    private readonly _dart_getIsChecked: () => boolean | undefined = undefined as any;
    private readonly _dart_setIsChecked: (value?: boolean | undefined) => void = undefined as any;
    private readonly _dart_getIsToggled: () => boolean | undefined = undefined as any;
    private readonly _dart_setIsToggled: (value?: boolean | undefined) => void = undefined as any;
    private readonly _dart_getIsInMutuallyExclusiveGroup: () => boolean = undefined as any;
    private readonly _dart_setIsInMutuallyExclusiveGroup: (value: boolean) => void = undefined as any;
    private readonly _dart_getIsFocusable: () => boolean = undefined as any;
    private readonly _dart_setIsFocusable: (value: boolean) => void = undefined as any;
    private readonly _dart_getIsFocused: () => boolean = undefined as any;
    private readonly _dart_setIsFocused: (value: boolean) => void = undefined as any;
    private readonly _dart_getIsButton: () => boolean = undefined as any;
    private readonly _dart_setIsButton: (value: boolean) => void = undefined as any;
    private readonly _dart_getIsLink: () => boolean = undefined as any;
    private readonly _dart_setIsLink: (value: boolean) => void = undefined as any;
    private readonly _dart_getIsHeader: () => boolean = undefined as any;
    private readonly _dart_setIsHeader: (value: boolean) => void = undefined as any;
    private readonly _dart_getIsSlider: () => boolean = undefined as any;
    private readonly _dart_setIsSlider: (value: boolean) => void = undefined as any;
    private readonly _dart_getIsKeyboardKey: () => boolean = undefined as any;
    private readonly _dart_setIsKeyboardKey: (value: boolean) => void = undefined as any;
    private readonly _dart_getIsHidden: () => boolean = undefined as any;
    private readonly _dart_setIsHidden: (value: boolean) => void = undefined as any;
    private readonly _dart_getIsTextField: () => boolean = undefined as any;
    private readonly _dart_setIsTextField: (value: boolean) => void = undefined as any;
    private readonly _dart_getIsReadOnly: () => boolean = undefined as any;
    private readonly _dart_setIsReadOnly: (value: boolean) => void = undefined as any;
    private readonly _dart_getIsObscured: () => boolean = undefined as any;
    private readonly _dart_setIsObscured: (value: boolean) => void = undefined as any;
    private readonly _dart_getIsMultiline: () => boolean = undefined as any;
    private readonly _dart_setIsMultiline: (value: boolean) => void = undefined as any;
    private readonly _dart_getHasImplicitScrolling: () => boolean = undefined as any;
    private readonly _dart_setHasImplicitScrolling: (value: boolean) => void = undefined as any;
    private readonly _dart_getTextSelection: () => ITextSelection | undefined = undefined as any;
    private readonly _dart_setTextSelection: (value?: ITextSelection | undefined) => void = undefined as any;
    private readonly _dart_getScrollPosition: () => number | undefined = undefined as any;
    private readonly _dart_setScrollPosition: (value?: number | undefined) => void = undefined as any;
    private readonly _dart_getScrollExtentMax: () => number | undefined = undefined as any;
    private readonly _dart_setScrollExtentMax: (value?: number | undefined) => void = undefined as any;
    private readonly _dart_getScrollExtentMin: () => number | undefined = undefined as any;
    private readonly _dart_setScrollExtentMin: (value?: number | undefined) => void = undefined as any;
    private readonly _dart_getTagsForChildren: () => IIterable<ISemanticsTag> | undefined = undefined as any;
    private readonly _dart_addTagForChildren: (tag: ISemanticsTag) => void = undefined as any;
    private readonly _dart_isCompatibleWith: (other?: ISemanticsConfiguration | undefined) => boolean = undefined as any;
    private readonly _dart_absorb: (child: ISemanticsConfiguration) => void = undefined as any;
    private readonly _dart_copy: () => ISemanticsConfiguration = undefined as any;
public getIsSemanticBoundary() : boolean {
    return this._dart_getIsSemanticBoundary();
}
public setIsSemanticBoundary(value: boolean) : void {
    return this._dart_setIsSemanticBoundary(value);
}
public getHasBeenAnnotated() : boolean {
    return this._dart_getHasBeenAnnotated();
}
public getOnTap() : () => void | undefined {
    return this._dart_getOnTap();
}
public setOnTap(value? : () => void) : void {
    return this._dart_setOnTap(value);
}
public getOnLongPress() : () => void | undefined {
    return this._dart_getOnLongPress();
}
public setOnLongPress(value? : () => void) : void {
    return this._dart_setOnLongPress(value);
}
public getOnScrollLeft() : () => void | undefined {
    return this._dart_getOnScrollLeft();
}
public setOnScrollLeft(value? : () => void) : void {
    return this._dart_setOnScrollLeft(value);
}
public getOnDismiss() : () => void | undefined {
    return this._dart_getOnDismiss();
}
public setOnDismiss(value? : () => void) : void {
    return this._dart_setOnDismiss(value);
}
public getOnScrollRight() : () => void | undefined {
    return this._dart_getOnScrollRight();
}
public setOnScrollRight(value? : () => void) : void {
    return this._dart_setOnScrollRight(value);
}
public getOnScrollUp() : () => void | undefined {
    return this._dart_getOnScrollUp();
}
public setOnScrollUp(value? : () => void) : void {
    return this._dart_setOnScrollUp(value);
}
public getOnScrollDown() : () => void | undefined {
    return this._dart_getOnScrollDown();
}
public setOnScrollDown(value? : () => void) : void {
    return this._dart_setOnScrollDown(value);
}
public getOnIncrease() : () => void | undefined {
    return this._dart_getOnIncrease();
}
public setOnIncrease(value? : () => void) : void {
    return this._dart_setOnIncrease(value);
}
public getOnDecrease() : () => void | undefined {
    return this._dart_getOnDecrease();
}
public setOnDecrease(value? : () => void) : void {
    return this._dart_setOnDecrease(value);
}
public getOnCopy() : () => void | undefined {
    return this._dart_getOnCopy();
}
public setOnCopy(value? : () => void) : void {
    return this._dart_setOnCopy(value);
}
public getOnCut() : () => void | undefined {
    return this._dart_getOnCut();
}
public setOnCut(value? : () => void) : void {
    return this._dart_setOnCut(value);
}
public getOnPaste() : () => void | undefined {
    return this._dart_getOnPaste();
}
public setOnPaste(value? : () => void) : void {
    return this._dart_setOnPaste(value);
}
public getOnShowOnScreen() : () => void | undefined {
    return this._dart_getOnShowOnScreen();
}
public setOnShowOnScreen(value? : () => void) : void {
    return this._dart_setOnShowOnScreen(value);
}
public getOnMoveCursorForwardByCharacter() : (extendSelection: boolean) => void | undefined {
    return this._dart_getOnMoveCursorForwardByCharacter();
}
public setOnMoveCursorForwardByCharacter(value? : (extendSelection: boolean) => void) : void {
    return this._dart_setOnMoveCursorForwardByCharacter(value);
}
public getOnMoveCursorBackwardByCharacter() : (extendSelection: boolean) => void | undefined {
    return this._dart_getOnMoveCursorBackwardByCharacter();
}
public setOnMoveCursorBackwardByCharacter(value? : (extendSelection: boolean) => void) : void {
    return this._dart_setOnMoveCursorBackwardByCharacter(value);
}
public getOnMoveCursorForwardByWord() : (extendSelection: boolean) => void | undefined {
    return this._dart_getOnMoveCursorForwardByWord();
}
public setOnMoveCursorForwardByWord(value? : (extendSelection: boolean) => void) : void {
    return this._dart_setOnMoveCursorForwardByWord(value);
}
public getOnMoveCursorBackwardByWord() : (extendSelection: boolean) => void | undefined {
    return this._dart_getOnMoveCursorBackwardByWord();
}
public setOnMoveCursorBackwardByWord(value? : (extendSelection: boolean) => void) : void {
    return this._dart_setOnMoveCursorBackwardByWord(value);
}
public getOnSetSelection() : (selection: ITextSelection) => void | undefined {
    return this._dart_getOnSetSelection();
}
public setOnSetSelection(value? : (selection: ITextSelection) => void) : void {
    return this._dart_setOnSetSelection(value);
}
public getOnSetText() : (text: string) => void | undefined {
    return this._dart_getOnSetText();
}
public setOnSetText(value? : (text: string) => void) : void {
    return this._dart_setOnSetText(value);
}
public getOnDidGainAccessibilityFocus() : () => void | undefined {
    return this._dart_getOnDidGainAccessibilityFocus();
}
public setOnDidGainAccessibilityFocus(value? : () => void) : void {
    return this._dart_setOnDidGainAccessibilityFocus(value);
}
public getOnDidLoseAccessibilityFocus() : () => void | undefined {
    return this._dart_getOnDidLoseAccessibilityFocus();
}
public setOnDidLoseAccessibilityFocus(value? : () => void) : void {
    return this._dart_setOnDidLoseAccessibilityFocus(value);
}
public getActionHandler(action: ISemanticsAction) : (args?: Object | undefined) => void | undefined {
    return this._dart_getActionHandler(action);
}
public getSortKey() : ISemanticsSortKey | undefined {
    return this._dart_getSortKey();
}
public setSortKey(value?: ISemanticsSortKey | undefined) : void {
    return this._dart_setSortKey(value);
}
public getIndexInParent() : number | undefined {
    return this._dart_getIndexInParent();
}
public setIndexInParent(value?: number | undefined) : void {
    return this._dart_setIndexInParent(value);
}
public getScrollChildCount() : number | undefined {
    return this._dart_getScrollChildCount();
}
public setScrollChildCount(value?: number | undefined) : void {
    return this._dart_setScrollChildCount(value);
}
public getScrollIndex() : number | undefined {
    return this._dart_getScrollIndex();
}
public setScrollIndex(value?: number | undefined) : void {
    return this._dart_setScrollIndex(value);
}
public getPlatformViewId() : number | undefined {
    return this._dart_getPlatformViewId();
}
public setPlatformViewId(value?: number | undefined) : void {
    return this._dart_setPlatformViewId(value);
}
public getMaxValueLength() : number | undefined {
    return this._dart_getMaxValueLength();
}
public setMaxValueLength(value?: number | undefined) : void {
    return this._dart_setMaxValueLength(value);
}
public getCurrentValueLength() : number | undefined {
    return this._dart_getCurrentValueLength();
}
public setCurrentValueLength(value?: number | undefined) : void {
    return this._dart_setCurrentValueLength(value);
}
public getIsMergingSemanticsOfDescendants() : boolean {
    return this._dart_getIsMergingSemanticsOfDescendants();
}
public setIsMergingSemanticsOfDescendants(value: boolean) : void {
    return this._dart_setIsMergingSemanticsOfDescendants(value);
}
public getCustomSemanticsActions() : IMap<ICustomSemanticsAction, () => void> {
    return this._dart_getCustomSemanticsActions();
}
public setCustomSemanticsActions(value: IMap<ICustomSemanticsAction, () => void>) : void {
    return this._dart_setCustomSemanticsActions(value);
}
public getLabel() : string {
    return this._dart_getLabel();
}
public setLabel(label: string) : void {
    return this._dart_setLabel(label);
}
public getAttributedLabel() : IAttributedString {
    return this._dart_getAttributedLabel();
}
public setAttributedLabel(attributedLabel: IAttributedString) : void {
    return this._dart_setAttributedLabel(attributedLabel);
}
public getValue() : string {
    return this._dart_getValue();
}
public setValue(value: string) : void {
    return this._dart_setValue(value);
}
public getAttributedValue() : IAttributedString {
    return this._dart_getAttributedValue();
}
public setAttributedValue(attributedValue: IAttributedString) : void {
    return this._dart_setAttributedValue(attributedValue);
}
public getIncreasedValue() : string {
    return this._dart_getIncreasedValue();
}
public setIncreasedValue(increasedValue: string) : void {
    return this._dart_setIncreasedValue(increasedValue);
}
public getAttributedIncreasedValue() : IAttributedString {
    return this._dart_getAttributedIncreasedValue();
}
public setAttributedIncreasedValue(attributedIncreasedValue: IAttributedString) : void {
    return this._dart_setAttributedIncreasedValue(attributedIncreasedValue);
}
public getDecreasedValue() : string {
    return this._dart_getDecreasedValue();
}
public setDecreasedValue(decreasedValue: string) : void {
    return this._dart_setDecreasedValue(decreasedValue);
}
public getAttributedDecreasedValue() : IAttributedString {
    return this._dart_getAttributedDecreasedValue();
}
public setAttributedDecreasedValue(attributedDecreasedValue: IAttributedString) : void {
    return this._dart_setAttributedDecreasedValue(attributedDecreasedValue);
}
public getHint() : string {
    return this._dart_getHint();
}
public setHint(hint: string) : void {
    return this._dart_setHint(hint);
}
public getAttributedHint() : IAttributedString {
    return this._dart_getAttributedHint();
}
public setAttributedHint(attributedHint: IAttributedString) : void {
    return this._dart_setAttributedHint(attributedHint);
}
public getHintOverrides() : ISemanticsHintOverrides | undefined {
    return this._dart_getHintOverrides();
}
public setHintOverrides(value?: ISemanticsHintOverrides | undefined) : void {
    return this._dart_setHintOverrides(value);
}
public getElevation() : number {
    return this._dart_getElevation();
}
public setElevation(value: number) : void {
    return this._dart_setElevation(value);
}
public getThickness() : number {
    return this._dart_getThickness();
}
public setThickness(value: number) : void {
    return this._dart_setThickness(value);
}
public getScopesRoute() : boolean {
    return this._dart_getScopesRoute();
}
public setScopesRoute(value: boolean) : void {
    return this._dart_setScopesRoute(value);
}
public getNamesRoute() : boolean {
    return this._dart_getNamesRoute();
}
public setNamesRoute(value: boolean) : void {
    return this._dart_setNamesRoute(value);
}
public getIsImage() : boolean {
    return this._dart_getIsImage();
}
public setIsImage(value: boolean) : void {
    return this._dart_setIsImage(value);
}
public getLiveRegion() : boolean {
    return this._dart_getLiveRegion();
}
public setLiveRegion(value: boolean) : void {
    return this._dart_setLiveRegion(value);
}
public getTextDirection() : TextDirection | undefined {
    return this._dart_getTextDirection();
}
public setTextDirection(textDirection?: TextDirection | undefined) : void {
    return this._dart_setTextDirection(textDirection);
}
public getIsSelected() : boolean {
    return this._dart_getIsSelected();
}
public setIsSelected(value: boolean) : void {
    return this._dart_setIsSelected(value);
}
public getIsEnabled() : boolean | undefined {
    return this._dart_getIsEnabled();
}
public setIsEnabled(value?: boolean | undefined) : void {
    return this._dart_setIsEnabled(value);
}
public getIsChecked() : boolean | undefined {
    return this._dart_getIsChecked();
}
public setIsChecked(value?: boolean | undefined) : void {
    return this._dart_setIsChecked(value);
}
public getIsToggled() : boolean | undefined {
    return this._dart_getIsToggled();
}
public setIsToggled(value?: boolean | undefined) : void {
    return this._dart_setIsToggled(value);
}
public getIsInMutuallyExclusiveGroup() : boolean {
    return this._dart_getIsInMutuallyExclusiveGroup();
}
public setIsInMutuallyExclusiveGroup(value: boolean) : void {
    return this._dart_setIsInMutuallyExclusiveGroup(value);
}
public getIsFocusable() : boolean {
    return this._dart_getIsFocusable();
}
public setIsFocusable(value: boolean) : void {
    return this._dart_setIsFocusable(value);
}
public getIsFocused() : boolean {
    return this._dart_getIsFocused();
}
public setIsFocused(value: boolean) : void {
    return this._dart_setIsFocused(value);
}
public getIsButton() : boolean {
    return this._dart_getIsButton();
}
public setIsButton(value: boolean) : void {
    return this._dart_setIsButton(value);
}
public getIsLink() : boolean {
    return this._dart_getIsLink();
}
public setIsLink(value: boolean) : void {
    return this._dart_setIsLink(value);
}
public getIsHeader() : boolean {
    return this._dart_getIsHeader();
}
public setIsHeader(value: boolean) : void {
    return this._dart_setIsHeader(value);
}
public getIsSlider() : boolean {
    return this._dart_getIsSlider();
}
public setIsSlider(value: boolean) : void {
    return this._dart_setIsSlider(value);
}
public getIsKeyboardKey() : boolean {
    return this._dart_getIsKeyboardKey();
}
public setIsKeyboardKey(value: boolean) : void {
    return this._dart_setIsKeyboardKey(value);
}
public getIsHidden() : boolean {
    return this._dart_getIsHidden();
}
public setIsHidden(value: boolean) : void {
    return this._dart_setIsHidden(value);
}
public getIsTextField() : boolean {
    return this._dart_getIsTextField();
}
public setIsTextField(value: boolean) : void {
    return this._dart_setIsTextField(value);
}
public getIsReadOnly() : boolean {
    return this._dart_getIsReadOnly();
}
public setIsReadOnly(value: boolean) : void {
    return this._dart_setIsReadOnly(value);
}
public getIsObscured() : boolean {
    return this._dart_getIsObscured();
}
public setIsObscured(value: boolean) : void {
    return this._dart_setIsObscured(value);
}
public getIsMultiline() : boolean {
    return this._dart_getIsMultiline();
}
public setIsMultiline(value: boolean) : void {
    return this._dart_setIsMultiline(value);
}
public getHasImplicitScrolling() : boolean {
    return this._dart_getHasImplicitScrolling();
}
public setHasImplicitScrolling(value: boolean) : void {
    return this._dart_setHasImplicitScrolling(value);
}
public getTextSelection() : ITextSelection | undefined {
    return this._dart_getTextSelection();
}
public setTextSelection(value?: ITextSelection | undefined) : void {
    return this._dart_setTextSelection(value);
}
public getScrollPosition() : number | undefined {
    return this._dart_getScrollPosition();
}
public setScrollPosition(value?: number | undefined) : void {
    return this._dart_setScrollPosition(value);
}
public getScrollExtentMax() : number | undefined {
    return this._dart_getScrollExtentMax();
}
public setScrollExtentMax(value?: number | undefined) : void {
    return this._dart_setScrollExtentMax(value);
}
public getScrollExtentMin() : number | undefined {
    return this._dart_getScrollExtentMin();
}
public setScrollExtentMin(value?: number | undefined) : void {
    return this._dart_setScrollExtentMin(value);
}
public getTagsForChildren() : IIterable<ISemanticsTag> | undefined {
    return this._dart_getTagsForChildren();
}
public addTagForChildren(tag: ISemanticsTag) : void {
    return this._dart_addTagForChildren(tag);
}
public isCompatibleWith(other?: ISemanticsConfiguration | undefined) : boolean {
    return this._dart_isCompatibleWith(other);
}
public absorb(child: ISemanticsConfiguration) : void {
    return this._dart_absorb(child);
}
public copy() : ISemanticsConfiguration {
    return this._dart_copy();
}
}
