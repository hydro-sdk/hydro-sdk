
import { ITickerProvider } from "../scheduler/tickerProvider";
import { IChangeNotifier } from "../foundation/changeNotifier";
import { IListenable } from "../foundation/listenable";
import { Duration } from "../../dart/core/duration";
declare const flutter: {
widgets: {
_stretchController: (this: void, _stretchController: I_StretchController, props : {  vsync : ITickerProvider,}) => I_StretchController
}
};
export interface I_StretchController


{
getValue: () => number;
absorbImpact: (velocity: number) => void;
pull: (normalizedOverscroll: number) => void;
scrollEnd: () => void;
dispose: () => void;
addListener: (listener : () => void) => void;
removeListener: (listener : () => void) => void;
getHasListeners: () => boolean;
toString: () => string;
getHashCode: () => number;
}export class _StretchController

 implements IChangeNotifier, IListenable
{    public static _stretchIntensity = 0.016;
    public static _flingFriction = 1.01;
    public static _stretchDuration = new Duration({ milliseconds: 400 });
public constructor( props : {  vsync : ITickerProvider,}){
flutter.widgets._stretchController(this, props);}
    private readonly _dart_getValue: () => number = undefined as any;
    private readonly _dart_absorbImpact: (velocity: number) => void = undefined as any;
    private readonly _dart_pull: (normalizedOverscroll: number) => void = undefined as any;
    private readonly _dart_scrollEnd: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_addListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_removeListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getValue() : number {
    return this._dart_getValue();
}
public absorbImpact(velocity: number) : void {
    return this._dart_absorbImpact(velocity);
}
public pull(normalizedOverscroll: number) : void {
    return this._dart_pull(normalizedOverscroll);
}
public scrollEnd() : void {
    return this._dart_scrollEnd();
}
public dispose() : void {
    return this._dart_dispose();
}
public addListener(listener : () => void) : void {
    return this._dart_addListener(listener);
}
public removeListener(listener : () => void) : void {
    return this._dart_removeListener(listener);
}
public notifyListeners() : void {
    return this._dart_notifyListeners();
}
public getHasListeners() : boolean {
    return this._dart_getHasListeners();
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
