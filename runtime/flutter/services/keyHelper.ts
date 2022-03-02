import { KeyboardSide } from "./keyboardSide";
import { ILogicalKeyboardKey } from "./logicalKeyboardKey";
import { ModifierKey } from "./modifierKey";
export interface IKeyHelper {
    getDebugToolkit: () => string;
    getModifierSide: (key: ModifierKey) => KeyboardSide;
    isModifierPressed: (
        key: ModifierKey,
        modifiers: number,
        props: { side: KeyboardSide; isDown: boolean; keyCode: number }
    ) => boolean;
    numpadKey: (keyCode: number) => ILogicalKeyboardKey | undefined;
    logicalKey: (keyCode: number) => ILogicalKeyboardKey | undefined;
    getPlatformPlane: () => number;
}
