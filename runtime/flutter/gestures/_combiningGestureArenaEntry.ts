import { I_CombiningGestureArenaMember } from "./_combiningGestureArenaMember";
import { IGestureArenaEntry } from "./gestureArenaEntry";
import { IGestureArenaMember } from "./gestureArenaMember";
import { GestureDisposition } from "./gestureDisposition";
declare const flutter: {
    gestures: {
        _combiningGestureArenaEntry: (
            this: void,
            _combiningGestureArenaEntry: I_CombiningGestureArenaEntry,
            _combiner: I_CombiningGestureArenaMember,
            _member: IGestureArenaMember
        ) => I_CombiningGestureArenaEntry;
    };
};
export interface I_CombiningGestureArenaEntry {
    resolve: (disposition: GestureDisposition) => void;
}
export class _CombiningGestureArenaEntry implements IGestureArenaEntry {
    public constructor(
        _combiner: I_CombiningGestureArenaMember,
        _member: IGestureArenaMember
    ) {
        flutter.gestures._combiningGestureArenaEntry(this, _combiner, _member);
    }
    private readonly _dart_resolve: (disposition: GestureDisposition) => void =
        undefined as any;
    public resolve(disposition: GestureDisposition): void {
        return this._dart_resolve(disposition);
    }
}
