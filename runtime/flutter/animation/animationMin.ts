
import { IAnimation } from "./animation";
import { ICompoundAnimation } from "./compoundAnimation";
import { IAnimationLazyListenerMixin } from "./animationLazyListenerMixin";
import { IAnimationLocalListenersMixin } from "./animationLocalListenersMixin";
import { IAnimationLocalStatusListenersMixin } from "./animationLocalStatusListenersMixin";
import { AnimationStatus } from "./animationStatus";
import { IValueListenable } from "../foundation/valueListenable";
import { IAnimatable } from "./animatable";
declare const flutter: {
animation: {
animationMin: <T>(this: void, animationMin: IAnimationMin<T>, first: IAnimation<T>, next: IAnimation<T>) => IAnimationMin<T>
}
};
export interface IAnimationMin
<T>

{
first: IAnimation<T>;
next: IAnimation<T>;
getValue: () => T;
didStartListening: () => void;
didStopListening: () => void;
toString: () => string;
getStatus: () => AnimationStatus;
didRegisterListener: () => void;
didUnregisterListener: () => void;
getIsListening: () => boolean;
addListener: (listener : () => void) => void;
removeListener: (listener : () => void) => void;
clearListeners: () => void;
notifyListeners: () => void;
addStatusListener: (listener : (status: AnimationStatus) => void) => void;
removeStatusListener: (listener : (status: AnimationStatus) => void) => void;
clearStatusListeners: () => void;
notifyStatusListeners: (status: AnimationStatus) => void;
drive: <U>(child: IAnimatable<U>) => IAnimation<U>;
toStringDetails: () => string;
getIsDismissed: () => boolean;
getIsCompleted: () => boolean;
getHashCode: () => number;
}export class AnimationMin
<T>
 implements Omit<ICompoundAnimation<T>, "didStartListening" | "didStopListening" | "didRegisterListener" | "didUnregisterListener">, IAnimationLazyListenerMixin, IAnimationLocalListenersMixin, IAnimationLocalStatusListenersMixin, IValueListenable<T>
{    public readonly first: IAnimation<T> = undefined as any;
    public readonly next: IAnimation<T> = undefined as any;
public constructor(first: IAnimation<T>, next: IAnimation<T>){
flutter.animation.animationMin(this, first, next);}
    private readonly _dart_getValue: () => T = undefined as any;
    private readonly _dart_didStartListening: () => void = undefined as any;
    private readonly _dart_didStopListening: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getStatus: () => AnimationStatus = undefined as any;
    private readonly _dart_didRegisterListener: () => void = undefined as any;
    private readonly _dart_didUnregisterListener: () => void = undefined as any;
    private readonly _dart_getIsListening: () => boolean = undefined as any;
    private readonly _dart_addListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_removeListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_clearListeners: () => void = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_addStatusListener: (listener : (status: AnimationStatus) => void) => void = undefined as any;
    private readonly _dart_removeStatusListener: (listener : (status: AnimationStatus) => void) => void = undefined as any;
    private readonly _dart_clearStatusListeners: () => void = undefined as any;
    private readonly _dart_notifyStatusListeners: (status: AnimationStatus) => void = undefined as any;
    private readonly _dart_drive: <U>(child: IAnimatable<U>) => IAnimation<U> = undefined as any;
    private readonly _dart_toStringDetails: () => string = undefined as any;
    private readonly _dart_getIsDismissed: () => boolean = undefined as any;
    private readonly _dart_getIsCompleted: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getValue() : T {
    return this._dart_getValue();
}
public didStartListening() : void {
    return this._dart_didStartListening();
}
public didStopListening() : void {
    return this._dart_didStopListening();
}
public toString() : string {
    return this._dart_toString();
}
public getStatus() : AnimationStatus {
    return this._dart_getStatus();
}
public didRegisterListener() : void {
    return this._dart_didRegisterListener();
}
public didUnregisterListener() : void {
    return this._dart_didUnregisterListener();
}
public getIsListening() : boolean {
    return this._dart_getIsListening();
}
public addListener(listener : () => void) : void {
    return this._dart_addListener(listener);
}
public removeListener(listener : () => void) : void {
    return this._dart_removeListener(listener);
}
public clearListeners() : void {
    return this._dart_clearListeners();
}
public notifyListeners() : void {
    return this._dart_notifyListeners();
}
public addStatusListener(listener : (status: AnimationStatus) => void) : void {
    return this._dart_addStatusListener(listener);
}
public removeStatusListener(listener : (status: AnimationStatus) => void) : void {
    return this._dart_removeStatusListener(listener);
}
public clearStatusListeners() : void {
    return this._dart_clearStatusListeners();
}
public notifyStatusListeners(status: AnimationStatus) : void {
    return this._dart_notifyStatusListeners(status);
}
public drive<U>(child: IAnimatable<U>) : IAnimation<U> {
    return this._dart_drive(child);
}
public toStringDetails() : string {
    return this._dart_toStringDetails();
}
public getIsDismissed() : boolean {
    return this._dart_getIsDismissed();
}
public getIsCompleted() : boolean {
    return this._dart_getIsCompleted();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
