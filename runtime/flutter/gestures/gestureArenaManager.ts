
import { IGestureArenaMember } from "./gestureArenaMember";
import { IGestureArenaEntry } from "./gestureArenaEntry";
declare const flutter: {
gestures: {
gestureArenaManager: (this: void, gestureArenaManager: IGestureArenaManager) => IGestureArenaManager
}
};
export interface IGestureArenaManager


{
add: (pointer: number, member: IGestureArenaMember) => IGestureArenaEntry;
close: (pointer: number) => void;
sweep: (pointer: number) => void;
hold: (pointer: number) => void;
release: (pointer: number) => void;
}export class GestureArenaManager


{public constructor(){
flutter.gestures.gestureArenaManager(this);}
    private readonly _dart_add: (pointer: number, member: IGestureArenaMember) => IGestureArenaEntry = undefined as any;
    private readonly _dart_close: (pointer: number) => void = undefined as any;
    private readonly _dart_sweep: (pointer: number) => void = undefined as any;
    private readonly _dart_hold: (pointer: number) => void = undefined as any;
    private readonly _dart_release: (pointer: number) => void = undefined as any;
public add(pointer: number, member: IGestureArenaMember) : IGestureArenaEntry {
    return this._dart_add(pointer, member);
}
public close(pointer: number) : void {
    return this._dart_close(pointer);
}
public sweep(pointer: number) : void {
    return this._dart_sweep(pointer);
}
public hold(pointer: number) : void {
    return this._dart_hold(pointer);
}
public release(pointer: number) : void {
    return this._dart_release(pointer);
}
}
