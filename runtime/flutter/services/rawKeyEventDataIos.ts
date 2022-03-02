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
        rawKeyEventDataIos: (
            this: void,
            rawKeyEventDataIos: IRawKeyEventDataIos,
            props: {
                characters: string;
                charactersIgnoringModifiers: string;
                keyCode: number;
                modifiers: number;
            }
        ) => IRawKeyEventDataIos;
    };
};
export interface IRawKeyEventDataIos {
    characters: string;
    charactersIgnoringModifiers: string;
    keyCode: number;
    modifiers: number;
    getKeyLabel: () => string;
    getPhysicalKey: () => IPhysicalKeyboardKey;
    getLogicalKey: () => ILogicalKeyboardKey;
    isModifierPressed: (
        key: ModifierKey,
        props: { side: KeyboardSide }
    ) => boolean;
    getModifierSide: (key: ModifierKey) => KeyboardSide | undefined;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getHashCode: () => number;
    shouldDispatchEvent: () => boolean;
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
export class RawKeyEventDataIos
    implements Omit<IRawKeyEventData>, IDiagnosticable
{
    public static modifierCapsLock = 0x10000;
    public static modifierShift = 0x20000;
    public static modifierLeftShift = 0x02;
    public static modifierRightShift = 0x04;
    public static modifierControl = 0x40000;
    public static modifierLeftControl = 0x01;
    public static modifierRightControl = 0x2000;
    public static modifierOption = 0x80000;
    public static modifierLeftOption = 0x20;
    public static modifierRightOption = 0x40;
    public static modifierCommand = 0x100000;
    public static modifierLeftCommand = 0x08;
    public static modifierRightCommand = 0x10;
    public static modifierNumericPad = 0x200000;
    public static modifierHelp = 0x400000;
    public static modifierFunction = 0x800000;
    public static deviceIndependentMask = 0xffff0000;
    public readonly characters: string = undefined as any;
    public readonly charactersIgnoringModifiers: string = undefined as any;
    public readonly keyCode: number = undefined as any;
    public readonly modifiers: number = undefined as any;
    public constructor(props: {
        characters?: string;
        charactersIgnoringModifiers?: string;
        keyCode?: number;
        modifiers?: number;
    }) {
        flutter.services.rawKeyEventDataIos(this, {
            ...rawKeyEventDataIosDefaultProps,
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
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_shouldDispatchEvent: () => boolean =
        undefined as any;
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
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public shouldDispatchEvent(): boolean {
        return this._dart_shouldDispatchEvent();
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
const rawKeyEventDataIosDefaultProps = {
    characters: "",
    charactersIgnoringModifiers: "",
    keyCode: 0,
    modifiers: 0,
};
const isModifierPressedDefaultProps = {
    side: KeyboardSide.any,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
