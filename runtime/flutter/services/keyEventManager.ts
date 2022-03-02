import { IFuture } from "../../dart/async/future";
import { IKeyData } from "../../dart/ui/keyData";
import { IHardwareKeyboard } from "./hardwareKeyboard";
import { IRawKeyboard } from "./rawKeyboard";
declare const flutter: {
    services: {
        keyEventManager: (
            this: void,
            keyEventManager: IKeyEventManager,
            _hardwareKeyboard: IHardwareKeyboard,
            _rawKeyboard: IRawKeyboard
        ) => IKeyEventManager;
    };
};
export interface IKeyEventManager {
    handleKeyData: (data: IKeyData) => boolean;
    handleRawKeyMessage: (message: any) => IFuture<{ [index: string]: any }>;
}
export class KeyEventManager {
    public constructor(
        _hardwareKeyboard: IHardwareKeyboard,
        _rawKeyboard: IRawKeyboard
    ) {
        flutter.services.keyEventManager(this, _hardwareKeyboard, _rawKeyboard);
    }
    private readonly _dart_handleKeyData: (data: IKeyData) => boolean =
        undefined as any;
    private readonly _dart_handleRawKeyMessage: (
        message: any
    ) => IFuture<{ [index: string]: any }> = undefined as any;
    public handleKeyData(data: IKeyData): boolean {
        return this._dart_handleKeyData(data);
    }
    public handleRawKeyMessage(
        message: any
    ): IFuture<{ [index: string]: any }> {
        return this._dart_handleRawKeyMessage(message);
    }
}
