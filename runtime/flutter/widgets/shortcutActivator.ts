
import { IIterable } from "../../dart/core/iterable";
import { ILogicalKeyboardKey } from "../services/logicalKeyboardKey";
import { IRawKeyEvent } from "../services/rawKeyEvent";
import { IRawKeyboard } from "../services/rawKeyboard";
export interface IShortcutActivator


{
getTriggers: () => IIterable<ILogicalKeyboardKey> | undefined;
accepts: (event: IRawKeyEvent, state: IRawKeyboard) => boolean;
debugDescribeKeys: () => string;
}