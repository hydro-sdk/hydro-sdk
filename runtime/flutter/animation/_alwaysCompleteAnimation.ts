
import { IAnimation } from "./animation";
import { IValueListenable } from "../foundation/valueListenable";
import { AnimationStatus } from "./animationStatus";
import { IAnimatable } from "./animatable";
declare const flutter: {
animation: {
_alwaysCompleteAnimation: (this: void, _alwaysCompleteAnimation: I_AlwaysCompleteAnimation) => I_AlwaysCompleteAnimation
}
};
export interface I_AlwaysCompleteAnimation


{
addListener: (listener : () => void) => void;
removeListener: (listener : () => void) => void;
addStatusListener: (listener : (status: AnimationStatus) => void) => void;
removeStatusListener: (listener : (status: AnimationStatus) => void) => void;
getStatus: () => AnimationStatus;
getValue: () => number;
toString: () => string;
drive: <U>(child: IAnimatable<U>) => IAnimation<U>;
toStringDetails: () => string;
getIsDismissed: () => boolean;
getIsCompleted: () => boolean;
getHashCode: () => number;
}export class _AlwaysCompleteAnimation

 implements IAnimation<number>, IValueListenable<number>
{public constructor(){
flutter.animation._alwaysCompleteAnimation(this);}
    private readonly _dart_addListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_removeListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_addStatusListener: (listener : (status: AnimationStatus) => void) => void = undefined as any;
    private readonly _dart_removeStatusListener: (listener : (status: AnimationStatus) => void) => void = undefined as any;
    private readonly _dart_getStatus: () => AnimationStatus = undefined as any;
    private readonly _dart_getValue: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_drive: <U>(child: IAnimatable<U>) => IAnimation<U> = undefined as any;
    private readonly _dart_toStringDetails: () => string = undefined as any;
    private readonly _dart_getIsDismissed: () => boolean = undefined as any;
    private readonly _dart_getIsCompleted: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public addListener(listener : () => void) : void {
    return this._dart_addListener(listener);
}
public removeListener(listener : () => void) : void {
    return this._dart_removeListener(listener);
}
public addStatusListener(listener : (status: AnimationStatus) => void) : void {
    return this._dart_addStatusListener(listener);
}
public removeStatusListener(listener : (status: AnimationStatus) => void) : void {
    return this._dart_removeStatusListener(listener);
}
public getStatus() : AnimationStatus {
    return this._dart_getStatus();
}
public getValue() : number {
    return this._dart_getValue();
}
public toString() : string {
    return this._dart_toString();
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
