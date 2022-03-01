
import { IGestureArenaTeam } from "./gestureArenaTeam";
import { IGestureArenaMember } from "./gestureArenaMember";
declare const flutter: {
gestures: {
_combiningGestureArenaMember: (this: void, _combiningGestureArenaMember: I_CombiningGestureArenaMember, _owner: IGestureArenaTeam, _pointer: number) => I_CombiningGestureArenaMember
}
};
export interface I_CombiningGestureArenaMember


{
acceptGesture: (pointer: number) => void;
rejectGesture: (pointer: number) => void;
toString: () => string;
getHashCode: () => number;
}export class _CombiningGestureArenaMember

 implements IGestureArenaMember
{public constructor(_owner: IGestureArenaTeam, _pointer: number){
flutter.gestures._combiningGestureArenaMember(this, _owner, _pointer);}
    private readonly _dart_acceptGesture: (pointer: number) => void = undefined as any;
    private readonly _dart_rejectGesture: (pointer: number) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public acceptGesture(pointer: number) : void {
    return this._dart_acceptGesture(pointer);
}
public rejectGesture(pointer: number) : void {
    return this._dart_rejectGesture(pointer);
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
