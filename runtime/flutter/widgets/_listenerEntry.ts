
import { IScrollNotification } from "./scrollNotification";
import { ILinkedListEntry } from "../../dart/collection/linkedListEntry";
import { ILinkedList } from "../../dart/collection/linkedList";
declare const flutter: {
widgets: {
_listenerEntry: (this: void, _listenerEntry: I_ListenerEntry, listener : (notification: IScrollNotification) => void) => I_ListenerEntry
}
};
export interface I_ListenerEntry


{
unlink: () => void;
insertAfter: (entry: I_ListenerEntry) => void;
insertBefore: (entry: I_ListenerEntry) => void;
getList: () => ILinkedList<I_ListenerEntry> | undefined;
getNext: () => I_ListenerEntry | undefined;
getPrevious: () => I_ListenerEntry | undefined;
toString: () => string;
getHashCode: () => number;
}export class _ListenerEntry

 implements ILinkedListEntry<I_ListenerEntry>
{public constructor(listener : (notification: IScrollNotification) => void){
flutter.widgets._listenerEntry(this, listener);}
    private readonly _dart_unlink: () => void = undefined as any;
    private readonly _dart_insertAfter: (entry: I_ListenerEntry) => void = undefined as any;
    private readonly _dart_insertBefore: (entry: I_ListenerEntry) => void = undefined as any;
    private readonly _dart_getList: () => ILinkedList<I_ListenerEntry> | undefined = undefined as any;
    private readonly _dart_getNext: () => I_ListenerEntry | undefined = undefined as any;
    private readonly _dart_getPrevious: () => I_ListenerEntry | undefined = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public unlink() : void {
    return this._dart_unlink();
}
public insertAfter(entry: I_ListenerEntry) : void {
    return this._dart_insertAfter(entry);
}
public insertBefore(entry: I_ListenerEntry) : void {
    return this._dart_insertBefore(entry);
}
public getList() : ILinkedList<I_ListenerEntry> | undefined {
    return this._dart_getList();
}
public getNext() : I_ListenerEntry | undefined {
    return this._dart_getNext();
}
public getPrevious() : I_ListenerEntry | undefined {
    return this._dart_getPrevious();
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
