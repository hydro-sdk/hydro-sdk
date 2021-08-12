import { IIterable } from "../core/iterable";
import { List } from "../core/list";
import { Map } from "../core/map";
import { IMapEntry, MapEntry } from "../core/mapEntry";
declare const dart: {
    ui: {
        semanticsActionTap: (this: void) => ISemanticsAction;
        semanticsActionLongPress: (this: void) => ISemanticsAction;
        semanticsActionScrollLeft: (this: void) => ISemanticsAction;
        semanticsActionScrollRight: (this: void) => ISemanticsAction;
        semanticsActionScrollUp: (this: void) => ISemanticsAction;
        semanticsActionScrollDown: (this: void) => ISemanticsAction;
        semanticsActionIncrease: (this: void) => ISemanticsAction;
        semanticsActionDecrease: (this: void) => ISemanticsAction;
        semanticsActionShowOnScreen: (this: void) => ISemanticsAction;
        semanticsActionMoveCursorForwardByCharacter: (
            this: void
        ) => ISemanticsAction;
        semanticsActionMoveCursorBackwardByCharacter: (
            this: void
        ) => ISemanticsAction;
        semanticsActionSetSelection: (this: void) => ISemanticsAction;
        semanticsActionCopy: (this: void) => ISemanticsAction;
        semanticsActionCut: (this: void) => ISemanticsAction;
        semanticsActionPaste: (this: void) => ISemanticsAction;
        semanticsActionDidGainAccessibilityFocus: (
            this: void
        ) => ISemanticsAction;
        semanticsActionDidLoseAccessibilityFocus: (
            this: void
        ) => ISemanticsAction;
        semanticsActionCustomAction: (this: void) => ISemanticsAction;
        semanticsActionDismiss: (this: void) => ISemanticsAction;
        semanticsActionMoveCursorForwardByWord: (
            this: void
        ) => ISemanticsAction;
        semanticsActionMoveCursorBackwardByWord: (
            this: void
        ) => ISemanticsAction;
    };
};
export interface ISemanticsAction {
    index: number;
    toString: () => string;
}
export class SemanticsAction {
    public static _kTapIndex = 1 << 0;
    public static _kLongPressIndex = 1 << 1;
    public static _kScrollLeftIndex = 1 << 2;
    public static _kScrollRightIndex = 1 << 3;
    public static _kScrollUpIndex = 1 << 4;
    public static _kScrollDownIndex = 1 << 5;
    public static _kIncreaseIndex = 1 << 6;
    public static _kDecreaseIndex = 1 << 7;
    public static _kShowOnScreenIndex = 1 << 8;
    public static _kMoveCursorForwardByCharacterIndex = 1 << 9;
    public static _kMoveCursorBackwardByCharacterIndex = 1 << 10;
    public static _kSetSelectionIndex = 1 << 11;
    public static _kCopyIndex = 1 << 12;
    public static _kCutIndex = 1 << 13;
    public static _kPasteIndex = 1 << 14;
    public static _kDidGainAccessibilityFocusIndex = 1 << 15;
    public static _kDidLoseAccessibilityFocusIndex = 1 << 16;
    public static _kCustomAction = 1 << 17;
    public static _kDismissIndex = 1 << 18;
    public static _kMoveCursorForwardByWordIndex = 1 << 19;
    public static _kMoveCursorBackwardByWordIndex = 1 << 20;
    public static tap = dart.ui.semanticsActionTap();
    public static longPress = dart.ui.semanticsActionLongPress();
    public static scrollLeft = dart.ui.semanticsActionScrollLeft();
    public static scrollRight = dart.ui.semanticsActionScrollRight();
    public static scrollUp = dart.ui.semanticsActionScrollUp();
    public static scrollDown = dart.ui.semanticsActionScrollDown();
    public static increase = dart.ui.semanticsActionIncrease();
    public static decrease = dart.ui.semanticsActionDecrease();
    public static showOnScreen = dart.ui.semanticsActionShowOnScreen();
    public static moveCursorForwardByCharacter =
        dart.ui.semanticsActionMoveCursorForwardByCharacter();
    public static moveCursorBackwardByCharacter =
        dart.ui.semanticsActionMoveCursorBackwardByCharacter();
    public static setSelection = dart.ui.semanticsActionSetSelection();
    public static copy = dart.ui.semanticsActionCopy();
    public static cut = dart.ui.semanticsActionCut();
    public static paste = dart.ui.semanticsActionPaste();
    public static didGainAccessibilityFocus =
        dart.ui.semanticsActionDidGainAccessibilityFocus();
    public static didLoseAccessibilityFocus =
        dart.ui.semanticsActionDidLoseAccessibilityFocus();
    public static customAction = dart.ui.semanticsActionCustomAction();
    public static dismiss = dart.ui.semanticsActionDismiss();
    public static moveCursorForwardByWord =
        dart.ui.semanticsActionMoveCursorForwardByWord();
    public static moveCursorBackwardByWord =
        dart.ui.semanticsActionMoveCursorBackwardByWord();
    public static values = Map.fromEntries(
        <IIterable<IMapEntry<number, ISemanticsAction>>>(
            (<unknown>(
                List.fromArray([
                    new MapEntry(
                        SemanticsAction._kTapIndex,
                        SemanticsAction.tap
                    ),
                    new MapEntry(
                        SemanticsAction._kLongPressIndex,
                        SemanticsAction.longPress
                    ),
                    new MapEntry(
                        SemanticsAction._kScrollLeftIndex,
                        SemanticsAction.scrollLeft
                    ),
                    new MapEntry(
                        SemanticsAction._kScrollRightIndex,
                        SemanticsAction.scrollRight
                    ),
                    new MapEntry(
                        SemanticsAction._kScrollUpIndex,
                        SemanticsAction.scrollUp
                    ),
                    new MapEntry(
                        SemanticsAction._kScrollDownIndex,
                        SemanticsAction.scrollDown
                    ),
                    new MapEntry(
                        SemanticsAction._kIncreaseIndex,
                        SemanticsAction.increase
                    ),
                    new MapEntry(
                        SemanticsAction._kDecreaseIndex,
                        SemanticsAction.decrease
                    ),
                    new MapEntry(
                        SemanticsAction._kShowOnScreenIndex,
                        SemanticsAction.showOnScreen
                    ),
                    new MapEntry(
                        SemanticsAction._kMoveCursorForwardByCharacterIndex,
                        SemanticsAction.moveCursorForwardByCharacter
                    ),
                    new MapEntry(
                        SemanticsAction._kMoveCursorBackwardByCharacterIndex,
                        SemanticsAction.moveCursorBackwardByCharacter
                    ),
                    new MapEntry(
                        SemanticsAction._kSetSelectionIndex,
                        SemanticsAction.setSelection
                    ),
                    new MapEntry(
                        SemanticsAction._kCopyIndex,
                        SemanticsAction.copy
                    ),
                    new MapEntry(
                        SemanticsAction._kCutIndex,
                        SemanticsAction.cut
                    ),
                    new MapEntry(
                        SemanticsAction._kPasteIndex,
                        SemanticsAction.paste
                    ),
                    new MapEntry(
                        SemanticsAction._kDidGainAccessibilityFocusIndex,
                        SemanticsAction.didGainAccessibilityFocus
                    ),
                    new MapEntry(
                        SemanticsAction._kDidLoseAccessibilityFocusIndex,
                        SemanticsAction.didLoseAccessibilityFocus
                    ),
                    new MapEntry(
                        SemanticsAction._kCustomAction,
                        SemanticsAction.customAction
                    ),
                    new MapEntry(
                        SemanticsAction._kDismissIndex,
                        SemanticsAction.dismiss
                    ),
                    new MapEntry(
                        SemanticsAction._kMoveCursorForwardByWordIndex,
                        SemanticsAction.moveCursorForwardByWord
                    ),
                    new MapEntry(
                        SemanticsAction._kMoveCursorBackwardByWordIndex,
                        SemanticsAction.moveCursorBackwardByWord
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
