import { ILogicalKeyboardKey, LogicalKeyboardKey } from "./logicalKeyboardKey";
declare const flutter: {
    services: {
        keyboardLockModeFindLockByLogicalKey: (
            logicalKey: ILogicalKeyboardKey
        ) => IKeyboardLockMode | undefined;
        keyboardLockModeNumLock: (this: void) => IKeyboardLockMode;
        keyboardLockModeScrollLock: (this: void) => IKeyboardLockMode;
        keyboardLockModeCapsLock: (this: void) => IKeyboardLockMode;
    };
};
export interface IKeyboardLockMode {
    logicalKey: ILogicalKeyboardKey;
}
export class KeyboardLockMode {
    public static numLock = flutter.services.keyboardLockModeNumLock();
    public static scrollLock = flutter.services.keyboardLockModeScrollLock();
    public static capsLock = flutter.services.keyboardLockModeCapsLock();
    public readonly logicalKey: ILogicalKeyboardKey = undefined as any;
    public static findLockByLogicalKey(
        logicalKey: ILogicalKeyboardKey
    ): IKeyboardLockMode | undefined {
        return flutter.services.keyboardLockModeFindLockByLogicalKey(
            logicalKey
        );
    }
}
