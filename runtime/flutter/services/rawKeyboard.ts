import { ISet } from "../../dart/core/set";
import { ILogicalKeyboardKey } from "./logicalKeyboardKey";
import { IPhysicalKeyboardKey } from "./physicalKeyboardKey";
import { IRawKeyEvent } from "./rawKeyEvent";
export interface IRawKeyboard {
    addListener: (listener: (value: IRawKeyEvent) => void) => void;
    removeListener: (listener: (value: IRawKeyEvent) => void) => void;
    getKeyEventHandler: () => (event: IRawKeyEvent) => boolean | undefined;
    setKeyEventHandler: (handler?: (event: IRawKeyEvent) => boolean) => void;
    handleRawKeyEvent: (event: IRawKeyEvent) => boolean;
    getKeysPressed: () => ISet<ILogicalKeyboardKey>;
    getPhysicalKeysPressed: () => ISet<IPhysicalKeyboardKey>;
    lookUpLayout: (
        physicalKey: IPhysicalKeyboardKey
    ) => ILogicalKeyboardKey | undefined;
}
