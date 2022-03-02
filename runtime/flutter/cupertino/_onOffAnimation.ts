import { IAnimatable } from "../animation/animatable";
import { IAnimation } from "../animation/animation";
import { IAnimationController } from "../animation/animationController";
import { IAnimationLazyListenerMixin } from "../animation/animationLazyListenerMixin";
import { IAnimationLocalListenersMixin } from "../animation/animationLocalListenersMixin";
import { IAnimationLocalStatusListenersMixin } from "../animation/animationLocalStatusListenersMixin";
import { AnimationStatus } from "../animation/animationStatus";
import { ICompoundAnimation } from "../animation/compoundAnimation";
import { IValueListenable } from "../foundation/valueListenable";
declare const flutter: {
    cupertino: {
        _onOffAnimation: <T>(
            this: void,
            _onOffAnimation: I_OnOffAnimation<T>,
            props: {
                controller: IAnimationController;
                intervalOff: number;
                intervalOn: number;
                offValue: T;
                onValue: T;
            }
        ) => I_OnOffAnimation<T>;
    };
};
export interface I_OnOffAnimation<T> {
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
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    clearListeners: () => void;
    notifyListeners: () => void;
    addStatusListener: (listener: (status: AnimationStatus) => void) => void;
    removeStatusListener: (listener: (status: AnimationStatus) => void) => void;
    clearStatusListeners: () => void;
    notifyStatusListeners: (status: AnimationStatus) => void;
    drive: <U>(child: IAnimatable<U>) => IAnimation<U>;
    toStringDetails: () => string;
    getIsDismissed: () => boolean;
    getIsCompleted: () => boolean;
    getHashCode: () => number;
}
export class _OnOffAnimation<T>
    implements
        Omit<
            ICompoundAnimation<T>,
            | "didStartListening"
            | "didStopListening"
            | "didRegisterListener"
            | "didUnregisterListener"
        >,
        IAnimationLazyListenerMixin,
        IAnimationLocalListenersMixin,
        IAnimationLocalStatusListenersMixin,
        IValueListenable<T>
{
    public readonly first: IAnimation<T> = undefined as any;
    public readonly next: IAnimation<T> = undefined as any;
    public constructor(props: {
        controller: IAnimationController;
        intervalOff: number;
        intervalOn: number;
        offValue: T;
        onValue: T;
    }) {
        flutter.cupertino._onOffAnimation(this, props);
    }
    private readonly _dart_getValue: () => T = undefined as any;
    private readonly _dart_didStartListening: () => void = undefined as any;
    private readonly _dart_didStopListening: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getStatus: () => AnimationStatus = undefined as any;
    private readonly _dart_didRegisterListener: () => void = undefined as any;
    private readonly _dart_didUnregisterListener: () => void = undefined as any;
    private readonly _dart_getIsListening: () => boolean = undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_clearListeners: () => void = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_addStatusListener: (
        listener: (status: AnimationStatus) => void
    ) => void = undefined as any;
    private readonly _dart_removeStatusListener: (
        listener: (status: AnimationStatus) => void
    ) => void = undefined as any;
    private readonly _dart_clearStatusListeners: () => void = undefined as any;
    private readonly _dart_notifyStatusListeners: (
        status: AnimationStatus
    ) => void = undefined as any;
    private readonly _dart_drive: <U>(child: IAnimatable<U>) => IAnimation<U> =
        undefined as any;
    private readonly _dart_toStringDetails: () => string = undefined as any;
    private readonly _dart_getIsDismissed: () => boolean = undefined as any;
    private readonly _dart_getIsCompleted: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getValue(): T {
        return this._dart_getValue();
    }
    public didStartListening(): void {
        return this._dart_didStartListening();
    }
    public didStopListening(): void {
        return this._dart_didStopListening();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getStatus(): AnimationStatus {
        return this._dart_getStatus();
    }
    public didRegisterListener(): void {
        return this._dart_didRegisterListener();
    }
    public didUnregisterListener(): void {
        return this._dart_didUnregisterListener();
    }
    public getIsListening(): boolean {
        return this._dart_getIsListening();
    }
    public addListener(listener: () => void): void {
        return this._dart_addListener(listener);
    }
    public removeListener(listener: () => void): void {
        return this._dart_removeListener(listener);
    }
    public clearListeners(): void {
        return this._dart_clearListeners();
    }
    public notifyListeners(): void {
        return this._dart_notifyListeners();
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
    public clearStatusListeners(): void {
        return this._dart_clearStatusListeners();
    }
    public notifyStatusListeners(status: AnimationStatus): void {
        return this._dart_notifyStatusListeners(status);
    }
    public drive<U>(child: IAnimatable<U>): IAnimation<U> {
        return this._dart_drive(child);
    }
    public toStringDetails(): string {
        return this._dart_toStringDetails();
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
