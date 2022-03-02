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
        rawKeyEventDataAndroid: (
            this: void,
            rawKeyEventDataAndroid: IRawKeyEventDataAndroid,
            props: {
                codePoint: number;
                deviceId: number;
                eventSource: number;
                flags: number;
                keyCode: number;
                metaState: number;
                plainCodePoint: number;
                productId: number;
                repeatCount: number;
                scanCode: number;
                vendorId: number;
            }
        ) => IRawKeyEventDataAndroid;
    };
};
export interface IRawKeyEventDataAndroid {
    flags: number;
    codePoint: number;
    plainCodePoint: number;
    keyCode: number;
    scanCode: number;
    metaState: number;
    eventSource: number;
    vendorId: number;
    productId: number;
    deviceId: number;
    repeatCount: number;
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
export class RawKeyEventDataAndroid
    implements Omit<IRawKeyEventData>, IDiagnosticable
{
    public static _sourceJoystick = 0x01000010;
    public static modifierNone = 0;
    public static modifierAlt = 0x02;
    public static modifierLeftAlt = 0x10;
    public static modifierRightAlt = 0x20;
    public static modifierShift = 0x01;
    public static modifierLeftShift = 0x40;
    public static modifierRightShift = 0x80;
    public static modifierSym = 0x04;
    public static modifierFunction = 0x08;
    public static modifierControl = 0x1000;
    public static modifierLeftControl = 0x2000;
    public static modifierRightControl = 0x4000;
    public static modifierMeta = 0x10000;
    public static modifierLeftMeta = 0x20000;
    public static modifierRightMeta = 0x40000;
    public static modifierCapsLock = 0x100000;
    public static modifierNumLock = 0x200000;
    public static modifierScrollLock = 0x400000;
    public readonly flags: number = undefined as any;
    public readonly codePoint: number = undefined as any;
    public readonly plainCodePoint: number = undefined as any;
    public readonly keyCode: number = undefined as any;
    public readonly scanCode: number = undefined as any;
    public readonly metaState: number = undefined as any;
    public readonly eventSource: number = undefined as any;
    public readonly vendorId: number = undefined as any;
    public readonly productId: number = undefined as any;
    public readonly deviceId: number = undefined as any;
    public readonly repeatCount: number = undefined as any;
    public constructor(props: {
        codePoint?: number;
        deviceId?: number;
        eventSource?: number;
        flags?: number;
        keyCode?: number;
        metaState?: number;
        plainCodePoint?: number;
        productId?: number;
        repeatCount?: number;
        scanCode?: number;
        vendorId?: number;
    }) {
        flutter.services.rawKeyEventDataAndroid(this, {
            ...rawKeyEventDataAndroidDefaultProps,
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
const rawKeyEventDataAndroidDefaultProps = {
    codePoint: 0,
    deviceId: 0,
    eventSource: 0,
    flags: 0,
    keyCode: 0,
    metaState: 0,
    plainCodePoint: 0,
    productId: 0,
    repeatCount: 0,
    scanCode: 0,
    vendorId: 0,
};
const isModifierPressedDefaultProps = {
    side: KeyboardSide.any,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
