import { IValueListenable } from "../foundation/valueListenable";
import { IAnimatable } from "./animatable";
import { IAnimation } from "./animation";
import { AnimationStatus } from "./animationStatus";
declare const flutter: {
    animation: {
        alwaysStoppedAnimation: <T>(
            this: void,
            alwaysStoppedAnimation: IAlwaysStoppedAnimation<T>,
            value: T
        ) => IAlwaysStoppedAnimation<T>;
    };
};
export interface IAlwaysStoppedAnimation<T> {
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    addStatusListener: (listener: (status: AnimationStatus) => void) => void;
    removeStatusListener: (listener: (status: AnimationStatus) => void) => void;
    getStatus: () => AnimationStatus;
    toStringDetails: () => string;
    drive: <U>(child: IAnimatable<U>) => IAnimation<U>;
    toString: () => string;
    getValue: () => T;
    getIsDismissed: () => boolean;
    getIsCompleted: () => boolean;
    getHashCode: () => number;
}
export class AlwaysStoppedAnimation<T>
    implements IAnimation<T>, IValueListenable<T>
{
    public constructor(value: T) {
        flutter.animation.alwaysStoppedAnimation(this, value);
    }
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_addStatusListener: (
        listener: (status: AnimationStatus) => void
    ) => void = undefined as any;
    private readonly _dart_removeStatusListener: (
        listener: (status: AnimationStatus) => void
    ) => void = undefined as any;
    private readonly _dart_getStatus: () => AnimationStatus = undefined as any;
    private readonly _dart_toStringDetails: () => string = undefined as any;
    private readonly _dart_drive: <U>(child: IAnimatable<U>) => IAnimation<U> =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getValue: () => T = undefined as any;
    private readonly _dart_getIsDismissed: () => boolean = undefined as any;
    private readonly _dart_getIsCompleted: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public addListener(listener: () => void): void {
        return this._dart_addListener(listener);
    }
    public removeListener(listener: () => void): void {
        return this._dart_removeListener(listener);
    }
    public addStatusListener(
        listener: (status: AnimationStatus) => void
    ): void {
        return this._dart_addStatusListener(listener);
    }
    public removeStatusListener(
        listener: (status: AnimationStatus) => void
    ): void {
        return this._dart_removeStatusListener(listener);
    }
    public getStatus(): AnimationStatus {
        return this._dart_getStatus();
    }
    public toStringDetails(): string {
        return this._dart_toStringDetails();
    }
    public drive<U>(child: IAnimatable<U>): IAnimation<U> {
        return this._dart_drive(child);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getValue(): T {
        return this._dart_getValue();
    }
    public getIsDismissed(): boolean {
        return this._dart_getIsDismissed();
    }
    public getIsCompleted(): boolean {
        return this._dart_getIsCompleted();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
