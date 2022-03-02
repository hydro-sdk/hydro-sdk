import { IIterable } from "../../dart/core/iterable";
import { ILogicalKeyboardKey } from "../services/logicalKeyboardKey";
import { IRawKeyboard } from "../services/rawKeyboard";
import { IRawKeyEvent } from "../services/rawKeyEvent";
export interface IShortcutActivator {
    getTriggers: () => IIterable<ILogicalKeyboardKey> | undefined;
    accepts: (event: IRawKeyEvent, state: IRawKeyboard) => boolean;
    debugDescribeKeys: () => string;
}
