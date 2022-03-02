import { IMap } from "../../dart/core/map";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { KeyboardSide } from "./keyboardSide";
import { ILogicalKeyboardKey } from "./logicalKeyboardKey";
import { ModifierKey } from "./modifierKey";
import { IPhysicalKeyboardKey } from "./physicalKeyboardKey";
import { IRawKeyEventData } from "./rawKeyEventData";
declare const flutter: {
    services: {
        rawKeyEventDataWindows: (
            this: void,
            rawKeyEventDataWindows: IRawKeyEventDataWindows,
            props: {
                characterCodePoint: number;
                keyCode: number;
                modifiers: number;
                scanCode: number;
            }
        ) => IRawKeyEventDataWindows;
    };
};
export interface IRawKeyEventDataWindows {
    keyCode: number;
    scanCode: number;
    characterCodePoint: number;
    modifiers: number;
    getKeyLabel: () => string;
    getPhysicalKey: () => IPhysicalKeyboardKey;
    getLogicalKey: () => ILogicalKeyboardKey;
    isModifierPressed: (
        key: ModifierKey,
        props: { side: KeyboardSide }
    ) => boolean;
    getModifierSide: (key: ModifierKey) => KeyboardSide | undefined;
    shouldDispatchEvent: () => boolean;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getHashCode: () => number;
    getIsControlPressed: () => boolean;
    getIsShiftPressed: () => boolean;
    getIsAltPressed: () => boolean;
    getIsMetaPressed: () => boolean;
    getModifiersPressed: () => IMap<ModifierKey, KeyboardSide>;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class RawKeyEventDataWindows
    implements Omit<IRawKeyEventData>, IDiagnosticable
{
    public static modifierShift = 1 << 0;
    public static modifierLeftShift = 1 << 1;
    public static modifierRightShift = 1 << 2;
    public static modifierControl = 1 << 3;
    public static modifierLeftControl = 1 << 4;
    public static modifierRightControl = 1 << 5;
    public static modifierAlt = 1 << 6;
    public static modifierLeftAlt = 1 << 7;
    public static modifierRightAlt = 1 << 8;
    public static modifierLeftMeta = 1 << 9;
    public static modifierRightMeta = 1 << 10;
    public static modifierCaps = 1 << 11;
    public static modifierNumLock = 1 << 12;
    public static modifierScrollLock = 1 << 13;
    public readonly keyCode: number = undefined as any;
    public readonly scanCode: number = undefined as any;
    public readonly characterCodePoint: number = undefined as any;
    public readonly modifiers: number = undefined as any;
    public constructor(props: {
        characterCodePoint?: number;
        keyCode?: number;
        modifiers?: number;
        scanCode?: number;
    }) {
        flutter.services.rawKeyEventDataWindows(this, {
            ...rawKeyEventDataWindowsDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getKeyLabel: () => string = undefined as any;
    private readonly _dart_getPhysicalKey: () => IPhysicalKeyboardKey =
        undefined as any;
    private readonly _dart_getLogicalKey: () => ILogicalKeyboardKey =
        undefined as any;
    private readonly _dart_isModifierPressed: (
        key: ModifierKey,
        props: { side: KeyboardSide }
    ) => boolean = undefined as any;
    private readonly _dart_getModifierSide: (
        key: ModifierKey
    ) => KeyboardSide | undefined = undefined as any;
    private readonly _dart_shouldDispatchEvent: () => boolean =
        undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_getIsControlPressed: () => boolean =
        undefined as any;
    private readonly _dart_getIsShiftPressed: () => boolean = undefined as any;
    private readonly _dart_getIsAltPressed: () => boolean = undefined as any;
    private readonly _dart_getIsMetaPressed: () => boolean = undefined as any;
    private readonly _dart_getModifiersPressed: () => IMap<
        ModifierKey,
        KeyboardSide
    > = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    public getKeyLabel(): string {
        return this._dart_getKeyLabel();
    }
    public getPhysicalKey(): IPhysicalKeyboardKey {
        return this._dart_getPhysicalKey();
    }
    public getLogicalKey(): ILogicalKeyboardKey {
        return this._dart_getLogicalKey();
    }
    public isModifierPressed(
        key: ModifierKey,
        props: { side?: KeyboardSide }
    ): boolean {
        return this._dart_isModifierPressed(key, {
            ...isModifierPressedDefaultProps,
            ...props,
        });
    }
    public getModifierSide(key: ModifierKey): KeyboardSide | undefined {
        return this._dart_getModifierSide(key);
    }
    public shouldDispatchEvent(): boolean {
        return this._dart_shouldDispatchEvent();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public getIsControlPressed(): boolean {
        return this._dart_getIsControlPressed();
    }
    public getIsShiftPressed(): boolean {
        return this._dart_getIsShiftPressed();
    }
    public getIsAltPressed(): boolean {
        return this._dart_getIsAltPressed();
    }
    public getIsMetaPressed(): boolean {
        return this._dart_getIsMetaPressed();
    }
    public getModifiersPressed(): IMap<ModifierKey, KeyboardSide> {
        return this._dart_getModifiersPressed();
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
    public toDiagnosticsNode(props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }): IDiagnosticsNode {
        return this._dart_toDiagnosticsNode(props);
    }
}
const rawKeyEventDataWindowsDefaultProps = {
    characterCodePoint: 0,
    keyCode: 0,
    modifiers: 0,
    scanCode: 0,
};
const isModifierPressedDefaultProps = {
    side: KeyboardSide.any,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
