
import { IAnimation } from "./animation";
import { IAnimatable } from "./animatable";
import { IValueListenable } from "../foundation/valueListenable";
import { AnimationStatus } from "./animationStatus";
import { IAnimationWithParentMixin } from "./animationWithParentMixin";
declare const flutter: {
animation: {
_animatedEvaluation: <T>(this: void, _animatedEvaluation: I_AnimatedEvaluation<T>, parent: IAnimation<number>, _evaluatable: IAnimatable<T>) => I_AnimatedEvaluation<T>
}
};
export interface I_AnimatedEvaluation
<T>

{
parent: IAnimation<number>;
getValue: () => T;
toString: () => string;
toStringDetails: () => string;
addListener: (listener : () => void) => void;
removeListener: (listener : () => void) => void;
addStatusListener: (listener : (status: AnimationStatus) => void) => void;
removeStatusListener: (listener : (status: AnimationStatus) => void) => void;
getParent: () => IAnimation<number>;
getStatus: () => AnimationStatus;
drive: <U>(child: IAnimatable<U>) => IAnimation<U>;
getIsDismissed: () => boolean;
getIsCompleted: () => boolean;
getHashCode: () => number;
}export class _AnimatedEvaluation
<T>
 implements IAnimation<T>, IAnimationWithParentMixin<number>, IValueListenable<T>
{    public readonly parent: IAnimation<number> = undefined as any;
public constructor(parent: IAnimation<number>, _evaluatable: IAnimatable<T>){
flutter.animation._animatedEvaluation(this, parent, _evaluatable);}
    private readonly _dart_getValue: () => T = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_toStringDetails: () => string = undefined as any;
    private readonly _dart_addListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_removeListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_addStatusListener: (listener : (status: AnimationStatus) => void) => void = undefined as any;
    private readonly _dart_removeStatusListener: (listener : (status: AnimationStatus) => void) => void = undefined as any;
    private readonly _dart_getParent: () => IAnimation<number> = undefined as any;
    private readonly _dart_getStatus: () => AnimationStatus = undefined as any;
    private readonly _dart_drive: <U>(child: IAnimatable<U>) => IAnimation<U> = undefined as any;
    private readonly _dart_getIsDismissed: () => boolean = undefined as any;
    private readonly _dart_getIsCompleted: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getValue() : T {
    return this._dart_getValue();
}
public toString() : string {
    return this._dart_toString();
}
public toStringDetails() : string {
    return this._dart_toStringDetails();
}
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
public getParent() : IAnimation<number> {
    return this._dart_getParent();
}
public getStatus() : AnimationStatus {
    return this._dart_getStatus();
}
public drive<U>(child: IAnimatable<U>) : IAnimation<U> {
    return this._dart_drive(child);
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
