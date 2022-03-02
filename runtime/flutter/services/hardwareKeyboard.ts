import { ISet } from "../../dart/core/set";
import { IKeyboardLockMode } from "./keyboardLockMode";
import { IKeyEvent } from "./keyEvent";
import { ILogicalKeyboardKey } from "./logicalKeyboardKey";
import { IPhysicalKeyboardKey } from "./physicalKeyboardKey";
declare const flutter: {
    services: {
        hardwareKeyboard: (
            this: void,
            hardwareKeyboard: IHardwareKeyboard
        ) => IHardwareKeyboard;
        hardwareKeyboardInstance: () => IHardwareKeyboard;
    };
};
export interface IHardwareKeyboard {
    getPhysicalKeysPressed: () => ISet<IPhysicalKeyboardKey>;
    getLogicalKeysPressed: () => ISet<ILogicalKeyboardKey>;
    lookUpLayout: (
        physicalKey: IPhysicalKeyboardKey
    ) => ILogicalKeyboardKey | undefined;
    getLockModesEnabled: () => ISet<IKeyboardLockMode>;
    addHandler: (handler: (event: IKeyEvent) => boolean) => void;
    removeHandler: (handler: (event: IKeyEvent) => boolean) => void;
    handleKeyEvent: (event: IKeyEvent) => boolean;
}
export class HardwareKeyboard {
    public constructor() {
        flutter.services.hardwareKeyboard(this);
    }
    public static instance(): IHardwareKeyboard {
        return flutter.services.hardwareKeyboardInstance();
    }
    private readonly _dart_getPhysicalKeysPressed: () => ISet<IPhysicalKeyboardKey> =
        undefined as any;
    private readonly _dart_getLogicalKeysPressed: () => ISet<ILogicalKeyboardKey> =
        undefined as any;
    private readonly _dart_lookUpLayout: (
        physicalKey: IPhysicalKeyboardKey
    ) => ILogicalKeyboardKey | undefined = undefined as any;
    private readonly _dart_getLockModesEnabled: () => ISet<IKeyboardLockMode> =
        undefined as any;
    private readonly _dart_addHandler: (
        handler: (event: IKeyEvent) => boolean
    ) => void = undefined as any;
    private readonly _dart_removeHandler: (
        handler: (event: IKeyEvent) => boolean
    ) => void = undefined as any;
    private readonly _dart_handleKeyEvent: (event: IKeyEvent) => boolean =
        undefined as any;
    public getPhysicalKeysPressed(): ISet<IPhysicalKeyboardKey> {
        return this._dart_getPhysicalKeysPressed();
    }
    public getLogicalKeysPressed(): ISet<ILogicalKeyboardKey> {
        return this._dart_getLogicalKeysPressed();
    }
    public lookUpLayout(
        physicalKey: IPhysicalKeyboardKey
    ): ILogicalKeyboardKey | undefined {
        return this._dart_lookUpLayout(physicalKey);
    }
    public getLockModesEnabled(): ISet<IKeyboardLockMode> {
        return this._dart_getLockModesEnabled();
    }
    public addHandler(handler: (event: IKeyEvent) => boolean): void {
        return this._dart_addHandler(handler);
    }
    public removeHandler(handler: (event: IKeyEvent) => boolean): void {
        return this._dart_removeHandler(handler);
    }
    public handleKeyEvent(event: IKeyEvent): boolean {
        return this._dart_handleKeyEvent(event);
    }
}
