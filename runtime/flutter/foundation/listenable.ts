
import { IList } from "../../dart/core/list";
declare const flutter: {
foundation: {
listenable: (this: void, listenable: IListenable) => IListenable;
listenableMerge: (listenables: IList<IListenable | undefined>) => IListenable
}
};
export interface IListenable


{
addListener: (listener : () => void) => void;
removeListener: (listener : () => void) => void;
}export class Listenable


{public constructor(){
flutter.foundation.listenable(this);}
public static merge(listenables: IList<IListenable | undefined>) : IListenable{
return flutter.foundation.listenableMerge(listenables);
}    private readonly _dart_addListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_removeListener: (listener : () => void) => void = undefined as any;
public addListener(listener : () => void) : void {
    return this._dart_addListener(listener);
}
public removeListener(listener : () => void) : void {
    return this._dart_removeListener(listener);
}
}
