
import { IGestureArenaMember } from "./gestureArenaMember";
import { IGestureArenaEntry } from "./gestureArenaEntry";
declare const flutter: {
gestures: {
gestureArenaTeam: (this: void, gestureArenaTeam: IGestureArenaTeam) => IGestureArenaTeam
}
};
export interface IGestureArenaTeam


{
captain: IGestureArenaMember | undefined;
add: (pointer: number, member: IGestureArenaMember) => IGestureArenaEntry;
}export class GestureArenaTeam


{    public readonly captain: IGestureArenaMember | undefined = undefined as any;
public constructor(){
flutter.gestures.gestureArenaTeam(this);}
    private readonly _dart_add: (pointer: number, member: IGestureArenaMember) => IGestureArenaEntry = undefined as any;
public add(pointer: number, member: IGestureArenaMember) : IGestureArenaEntry {
    return this._dart_add(pointer, member);
}
}
