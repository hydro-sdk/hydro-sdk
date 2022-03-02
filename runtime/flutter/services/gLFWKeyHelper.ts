import { KeyboardSide } from "./keyboardSide";
import { IKeyHelper } from "./keyHelper";
import { ILogicalKeyboardKey } from "./logicalKeyboardKey";
import { ModifierKey } from "./modifierKey";
declare const flutter: {
    services: {
        gLFWKeyHelper: (
            this: void,
            gLFWKeyHelper: IGLFWKeyHelper
        ) => IGLFWKeyHelper;
    };
};
export interface IGLFWKeyHelper {
    getDebugToolkit: () => string;
    isModifierPressed: (
        key: ModifierKey,
        modifiers: number,
        props: { side: KeyboardSide; isDown: boolean; keyCode: number }
    ) => boolean;
    getModifierSide: (key: ModifierKey) => KeyboardSide;
    numpadKey: (keyCode: number) => ILogicalKeyboardKey | undefined;
    logicalKey: (keyCode: number) => ILogicalKeyboardKey | undefined;
    getPlatformPlane: () => number;
}
export class GLFWKeyHelper implements IKeyHelper {
    public static modifierCapsLock = 0x0010;
    public static modifierShift = 0x0001;
    public static modifierControl = 0x0002;
    public static modifierAlt = 0x0004;
    public static modifierMeta = 0x0008;
    public static modifierNumericPad = 0x0020;
    public constructor() {
        flutter.services.gLFWKeyHelper(this);
    }
    private readonly _dart_getDebugToolkit: () => string = undefined as any;
    private readonly _dart_isModifierPressed: (
        key: ModifierKey,
        modifiers: number,
        props: { side: KeyboardSide; isDown: boolean; keyCode: number }
    ) => boolean = undefined as any;
    private readonly _dart_getModifierSide: (key: ModifierKey) => KeyboardSide =
        undefined as any;
    private readonly _dart_numpadKey: (
        keyCode: number
    ) => ILogicalKeyboardKey | undefined = undefined as any;
    private readonly _dart_logicalKey: (
        keyCode: number
    ) => ILogicalKeyboardKey | undefined = undefined as any;
    private readonly _dart_getPlatformPlane: () => number = undefined as any;
    public getDebugToolkit(): string {
        return this._dart_getDebugToolkit();
    }
    public isModifierPressed(
        key: ModifierKey,
        modifiers: number,
        props: { side?: KeyboardSide; isDown: boolean; keyCode: number }
    ): boolean {
        return this._dart_isModifierPressed(key, modifiers, {
            ...isModifierPressedDefaultProps,
            ...props,
        });
    }
    public getModifierSide(key: ModifierKey): KeyboardSide {
        return this._dart_getModifierSide(key);
    }
    public numpadKey(keyCode: number): ILogicalKeyboardKey | undefined {
        return this._dart_numpadKey(keyCode);
    }
    public logicalKey(keyCode: number): ILogicalKeyboardKey | undefined {
        return this._dart_logicalKey(keyCode);
    }
    public getPlatformPlane(): number {
        return this._dart_getPlatformPlane();
    }
}
const isModifierPressedDefaultProps = {
    side: KeyboardSide.any,
};
