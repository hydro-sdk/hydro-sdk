
import { IGestureArenaMember } from "./gestureArenaMember";
import { IList } from "../../dart/core/list";
declare const flutter: {
gestures: {
_gestureArena: (this: void, _gestureArena: I_GestureArena) => I_GestureArena
}
};
export interface I_GestureArena


{
members: IList<IGestureArenaMember>;
isOpen: boolean;
isHeld: boolean;
hasPendingSweep: boolean;
eagerWinner: IGestureArenaMember | undefined;
add: (member: IGestureArenaMember) => void;
toString: () => string;
}export class _GestureArena


{    public readonly members: IList<IGestureArenaMember> = undefined as any;
    public readonly isOpen: boolean = undefined as any;
    public readonly isHeld: boolean = undefined as any;
    public readonly hasPendingSweep: boolean = undefined as any;
    public readonly eagerWinner: IGestureArenaMember | undefined = undefined as any;
public constructor(){
flutter.gestures._gestureArena(this);}
    private readonly _dart_add: (member: IGestureArenaMember) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
public add(member: IGestureArenaMember) : void {
    return this._dart_add(member);
}
public toString() : string {
    return this._dart_toString();
}
}
