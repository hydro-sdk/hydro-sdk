
import { IBuildContext } from "./buildContext";
import { IWidget } from "./widget";
import { IChangeNotifier } from "../foundation/changeNotifier";
import { IListenable } from "../foundation/listenable";
declare const flutter: {
widgets: {
overlayEntry: (this: void, overlayEntry: IOverlayEntry, props : {  maintainState : boolean, opaque : boolean, builder : (context: IBuildContext) => IWidget,}) => IOverlayEntry
}
};
export interface IOverlayEntry


{
getOpaque: () => boolean;
setOpaque: (value: boolean) => void;
getMaintainState: () => boolean;
setMaintainState: (value: boolean) => void;
getMounted: () => boolean;
remove: () => void;
markNeedsBuild: () => void;
toString: () => string;
addListener: (listener : () => void) => void;
removeListener: (listener : () => void) => void;
dispose: () => void;
getHasListeners: () => boolean;
getHashCode: () => number;
}export class OverlayEntry

 implements IChangeNotifier, IListenable
{public constructor( props : {  maintainState? : boolean, opaque? : boolean, builder : (context: IBuildContext) => IWidget,}){
flutter.widgets.overlayEntry(this, {
...overlayEntryDefaultProps,
...props
});}
    private readonly _dart_getOpaque: () => boolean = undefined as any;
    private readonly _dart_setOpaque: (value: boolean) => void = undefined as any;
    private readonly _dart_getMaintainState: () => boolean = undefined as any;
    private readonly _dart_setMaintainState: (value: boolean) => void = undefined as any;
    private readonly _dart_getMounted: () => boolean = undefined as any;
    private readonly _dart_remove: () => void = undefined as any;
    private readonly _dart_markNeedsBuild: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_addListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_removeListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getOpaque() : boolean {
    return this._dart_getOpaque();
}
public setOpaque(value: boolean) : void {
    return this._dart_setOpaque(value);
}
public getMaintainState() : boolean {
    return this._dart_getMaintainState();
}
public setMaintainState(value: boolean) : void {
    return this._dart_setMaintainState(value);
}
public getMounted() : boolean {
    return this._dart_getMounted();
}
public remove() : void {
    return this._dart_remove();
}
public markNeedsBuild() : void {
    return this._dart_markNeedsBuild();
}
public toString() : string {
    return this._dart_toString();
}
public addListener(listener : () => void) : void {
    return this._dart_addListener(listener);
}
public removeListener(listener : () => void) : void {
    return this._dart_removeListener(listener);
}
public dispose() : void {
    return this._dart_dispose();
}
public notifyListeners() : void {
    return this._dart_notifyListeners();
}
public getHasListeners() : boolean {
    return this._dart_getHasListeners();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
const overlayEntryDefaultProps = {
    maintainState: false,
    opaque: false,
};
