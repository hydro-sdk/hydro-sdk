import { KeyboardSide } from "./keyboardSide";
import { ModifierKey } from "./modifierKey";
declare const flutter: {
    services: {
        _modifierSidePair: (
            this: void,
            _modifierSidePair: I_ModifierSidePair,
            modifier: ModifierKey,
            side?: KeyboardSide | undefined
        ) => I_ModifierSidePair;
    };
};
export interface I_ModifierSidePair {
    modifier: ModifierKey;
    side: KeyboardSide | undefined;
    getHashCode: () => number;
}
export class _ModifierSidePair {
    public readonly modifier: ModifierKey = undefined as any;
    public readonly side: KeyboardSide | undefined = undefined as any;
    public constructor(modifier: ModifierKey, side?: KeyboardSide | undefined) {
        flutter.services._modifierSidePair(this, modifier, side);
    }
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
