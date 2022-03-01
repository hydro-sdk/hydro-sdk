
import { IListenable } from "../foundation/listenable";
import { IValueListenable } from "../foundation/valueListenable";
import { AnimationStatus } from "./animationStatus";
import { IAnimatable } from "./animatable";
declare const flutter: {
animation: {
animation: <T>(this: void, animation: IAnimation<T>) => IAnimation<T>
}
};
export interface IAnimation
<T>

{
addListener: (listener : () => void) => void;
removeListener: (listener : () => void) => void;
addStatusListener: (listener : (status: AnimationStatus) => void) => void;
removeStatusListener: (listener : (status: AnimationStatus) => void) => void;
getStatus: () => AnimationStatus;
getValue: () => T;
getIsDismissed: () => boolean;
getIsCompleted: () => boolean;
drive: <U>(child: IAnimatable<U>) => IAnimation<U>;
toString: () => string;
toStringDetails: () => string;
getHashCode: () => number;
}export class Animation
<T>
 implements IListenable, IValueListenable<T>
{public constructor(){
flutter.animation.animation(this);}
    private readonly _dart_addListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_removeListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_addStatusListener: (listener : (status: AnimationStatus) => void) => void = undefined as any;
    private readonly _dart_removeStatusListener: (listener : (status: AnimationStatus) => void) => void = undefined as any;
    private readonly _dart_getStatus: () => AnimationStatus = undefined as any;
    private readonly _dart_getValue: () => T = undefined as any;
    private readonly _dart_getIsDismissed: () => boolean = undefined as any;
    private readonly _dart_getIsCompleted: () => boolean = undefined as any;
    private readonly _dart_drive: <U>(child: IAnimatable<U>) => IAnimation<U> = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_toStringDetails: () => string = undefined as any;
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
public getValue() : T {
    return this._dart_getValue();
}
public getIsDismissed() : boolean {
    return this._dart_getIsDismissed();
}
public getIsCompleted() : boolean {
    return this._dart_getIsCompleted();
}
public drive<U>(child: IAnimatable<U>) : IAnimation<U> {
    return this._dart_drive(child);
}
public toString() : string {
    return this._dart_toString();
}
public toStringDetails() : string {
    return this._dart_toStringDetails();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
